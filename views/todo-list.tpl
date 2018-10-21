<h1>Todos by Tag</h1>
% for tag in tags:
<h2>{{tags[tag]}}</h2>
<ul>
% for todoInTag in todos[tag]:
<li>{{todoInTag}}</li>
% end
</ul>
% end
