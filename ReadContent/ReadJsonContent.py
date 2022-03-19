import json

def read_request_content():
    file = open('D:/workspace_python/robot101/JsonFiles/Request.json', 'r')
    jsonfile = file.read()
    json_content = json.loads(jsonfile)
    return json_content


