<html>
<head>
    <title>My Habitica Todos</title>
    <link rel="stylesheet" type="text/css" href="/styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <main>
        <h1>My Habitica Todos</h1>
        <section class="tags-container">
        % for tag in tags:
            % if len(todos[tag]):
                <article class="tag">
                    <h2>{{tags[tag]}}</h2>
                    <ul>
                    % for todoInTag in todos[tag]:
                        <li>{{todoInTag}}</li>
                    % end
                    </ul>
                </article>
            % end
        % end
        </section>
    </main>
</body>
</html>
