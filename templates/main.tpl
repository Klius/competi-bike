{% extends "base.tpl" %}
{% block content %}
		<div class="row align-items-center">
            <div class="col-md-3">
                <img class="img-fluid img-thumbnail" src="{{ img }}"/>
            </div>
			<div class="col-md-3 fluid-center">
				<form action="submit.php" method="post"> 
					<div class="form-group">
						<label for="date">Día</label>
						<input class="form-control" type="date" id="date" name="date" value="{{ "now"|date("Y-m-d") }}"></input>
					</div>
					<div class="form-group">
						<div class="input-group">
							<input class="form-control" type="number" id="km" name="km" value="0" placeholder="0"></input>
							<div class="input-group-append">
								<span class="input-group-text">Km</span>
							</div>
						</div>
					</div>
					<input type="hidden" name="id" value="{{id}}"></input>
					<div class="form-group">
					<a class="btn btn-primary float-left" href="stats.php">
						<i class="fas fa-chart-area"></i>&nbsp;Estatistiques
					</a>
					<input type="submit" class="btn btn-success float-right" name="formacho" value='+ Afegir' />
					</div>
				</form>
			</div>
		</div>
{% endblock %}