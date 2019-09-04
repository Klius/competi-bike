{% extends "base.tpl" %}
{% block content %}
<div class="row align-items-center">
    <div class="col-md-3">
        <center><h1>Portes {{ total }} Km!!</h1></center>
    </div>
    <div class="col-md-3">
        <div id="graph_cpu" class="col-md-12" style="height:300px;"></div>
    </div>
</div>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>google.charts.load('current', {'packages':['corechart']});</script>
{% endblock %}