from bottle import route, run
import requests


@route('/')
def todos():
    # Set the base variables
    baseUrl = "https://habitica.com/api/v3/"
    # TODO: Get API credentials from external file
    headers = {
        "Content-Type": "application/json",
        "x-api-user": "",  # Add here your API User
        "x-api-key": "",  # Add here your API Key
    }
    tags = {}
    todos = {}

    # Get the tags
    tagsResp = requests.get(baseUrl + "tags", headers=headers)
    tagsResp = tagsResp.json()

    if tagsResp["success"]:
        # Build the Tags array and set the keys for the Todos array
        for tag in tagsResp["data"]:
            tags[tag["id"]] = tag["name"]
            todos[tag["id"]] = []

    # Get the Todos
    todosResp = requests.get(baseUrl + "tasks/user?type=todos", headers=headers)
    todosResp = todosResp.json()

    if todosResp["success"]:
        # Assign the Todos to the key with the respective Tag ID
        for todo in todosResp["data"]:
            for todoTag in todo["tags"]:
                todos[todoTag].append(todo["text"])


run(host='localhost', port=8080)
