import pystache
import os
import json
import re

API_DIR = "apis"


def generate():
    with open("operations.mtl", 'r') as f:
        op_mtl = f.read()

    for filename in os.listdir(API_DIR):
        if filename.endswith(".normal.json"):
            j = json.load(open(os.path.join(API_DIR, filename)))

            operations = []
            for op_name, operation in j["operations"].iteritems():
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
                # print("shape", shape_name, str(shape["type"]))
                shape_type = str(shape["type"])
                shape["name"] = shape_name
                shape.update({"documentation": re.sub('<[^<]+?>', '', shape.get("documentation", " "))})
                if shape_type == "structure":
                    members = []
                    for member_name, member in shape["members"].iteritems():
                        member["name"] = member_name
                        members.append(member)
                    shape["member_names"] = ",".join(shape["members"].keys())
                    shape["members"] = members
                shapes[shape_type].append(shape)

            j["operations"] = operations
            j["shapes"] = shapes

            print(pystache.render(op_mtl, j))


if __name__ == "__main__":
    generate()
