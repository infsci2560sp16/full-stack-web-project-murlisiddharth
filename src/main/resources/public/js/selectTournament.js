function extForm() {
	var html = [
			'<div class="form-group">',
			'<div class="btn-group" role="group" aria-label="...">',
			'<button type="button" class="btn btn-default">Knockout Tournament</button>',
			'<button type="button" class="btn btn-default">League Tournamentt</button>',
			'</div>',
			'</div>',
			'<div class="form-group">',
			'<label for="tourName" class="col-sm-2 control-label">Tournament Name</label>',
			'<div class="col-sm-4">',
			'<input type="text" class="form-control" id="tourName" required placeholder="Enter Tournament Name">',
			'</div>',
			'</div>',
			'<div class="form-group">',
			'<label for="noOfTeams" class="col-sm-2 control-label">Number of Teams</label>',
			'<div class="col-sm-4">',
			'<input type="text" class="form-control" id="noOfTeams" placeholder="Enter Number of Teams(MAX)">',
			'</div>',
			'</div>',
			'<div class="form-group">',
			'<label for="maxPlayers" class="col-sm-2 control-label">Maximum Number of players(On field)</label>',
			'<div class="col-sm-4">',
			'<input type="text" class="form-control" id="maxPlayers" placeholder="Number Of Players">',
			'</div>',
			'</div>',
			'<div class="form-group">',
			'<label for="noOfSubs" class="col-sm-2 control-label">Maximum Number of Substitutes</label>',
			'<div class="col-sm-4">',
			'<input type="text" class="form-control" id="noOfSubs" placeholder="Number Of Substitutes">',
			'</div>', '</div>', '<div class="form-group">',
			'<label for="comment">Additional Rules:</label>',
			'<textarea class="form-control" rows="5" id="comment">',
			'</textarea>', '</div>',
			'<div class="form-group col-sm-12 control-label">',
			'<button type="submit" class="btn btn-default">Submit</button>',
			'</div>' ].join('');

	var div = document.createElement('div');
	div.setAttribute('class', 'form-horizontal');
	div.setAttribute('role', 'form');
	div.innerHTML = html;
	document.getElementById('sportExt').appendChild(div);
}