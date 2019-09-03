<!DOCTYPE html>
<html>
    <head>
        {% block head %}
			<link rel="stylesheet" href="assets/theme.css"/>
            <link rel="stylesheet" href="../assets/theme.css"/><!--Canviar en produccion !-->
            <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
			<script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
			<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<title>{% block title %}{% endblock %} Competi</title>
        {% endblock %}
    </head>
    <body>
        {% block header%}
        {% endblock %}

        <div id="content" class="container-fluid">
        <!--Error divs goes here!-->
        {% block content %}{% endblock %}
        </div>
        <div id="footer">
            {% block footer %}
            
            {% endblock %}
        </div>
    </body>
</html>