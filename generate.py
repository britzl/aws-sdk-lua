import pystache
import os
import json
import codecs
import HTMLParser

API_DIR = "apis"
OUT_DIR = "aws-sdk"


def generate():
    with open("operations.mtl", 'r') as f:
        op_mtl = f.read()

    for filename in os.listdir(API_DIR):
        if filename.endswith(".normal.json"):
            print("Parsing " + filename)
            j = json.load(open(os.path.join(API_DIR, filename)))

            operations = []
            for op_name, operation in j["operations"].iteritems():
                doc = operation.get("documentation", " ")
                operation.update({"documentation": doc})
                operations.append(operation)

            shapes = {
                "string": [],
                "structure": [],
                "list": [],
                "double": [],
                "integer": [],
                "long": [],
                "boolean": [],
                "map": [],
                "blob": [],
                "timestamp": [],
                "float": []}

            for shape_name, shape in j["shapes"].iteritems():
                shape_type = str(shape["type"])
                shape["name"] = shape_name
                # ensure empty documentation if none exists (otherwise mustache will start searching recursively)
                shape.update({"documentation": shape.get("documentation", " ")})
                # change to lua pattern matching syntax
                if shape.get("pattern"):
                    shape.update({"pattern": shape.get("pattern").replace("\\", "%")})

                if shape_type == "structure":
                    members = []
                    for member_name, member in shape["members"].iteritems():
                        member["name"] = member_name
                        members.append(member)
                    shape["member_names"] = ",".join(shape["members"].keys())
                    shape["members"] = members
                    if shape.get("required"):
                        required = []
                        for required_name in shape["required"]:
                            required.append({"name": required_name})
                        shape.update({"required": required})
                shapes[shape_type].append(shape)

            j["operations"] = operations
            j["shapes"] = shapes

            out_filename = j["metadata"]["endpointPrefix"].replace(".", "_") + ".lua"
            print("Writing " + out_filename)

            lua = pystache.render(op_mtl, j)
            with codecs.open(os.path.join(OUT_DIR, out_filename), 'wb', "utf-8") as f:
                f.write(HTMLParser.HTMLParser().unescape(lua))


if __name__ == "__main__":
    generate()
