{% extends "base.tpl" %}
{% block content %}
		<div class="row align-items-center">
            <div class="col-md-3">
                <img class="img-fluid img-thumbnail" src="https://www.nomadfoods.com/wp-content/uploads/2018/08/placeholder-1-e1533569576673-960x960.png"/>
            </div>
			<div class="col-md-3 fluid-center">
				<form action="#" method="post"> 
					<div class="form-group">
						<label for="date">Día</label>
						<input class="form-control" type="date" id="date" name="date" value="{{ "now"|date("Y-m-d") }}"></input>
					</div>
					<div class="form-group">
						<label for="km">Kilometros</label>
						<input class="form-control" type="number" id="km" name="km" placeholder="0"></input>
                         <div class="input-group-append">
                            <span>Km</span>
                        </div>
					</div>
					<div class="form-group">
					<input type="submit" class="btn btn-outline-primary float-right" name="formachou" value="Login" />
					</div>
				</form>
			</div>
		</div>
{% endblock %}