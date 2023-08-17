<html>
<head>
    <title>My Habitica Todos</title>
</head>

<body>
    <main>
        <h1>My Habitica Todos</h1>
        % for tag in tags:
            % if len(todos[tag]):
                <h2>{{tags[tag]}}</h2>
                <ul>
                % for todoInTag in todos[tag]:
                    <li>{{todoInTag}}</li>
                % end
                </ul>
            % end
        % end
    <main>
</body>
</html>
