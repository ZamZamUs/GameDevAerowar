function dialoge() constructor {
	
	_dialogs = [];
	
	add = function(_sprite, _massage) {
		array_push(_dialogs, {
			sprite: _sprite,
			massage: _massage,
		});
	}
	
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	count = function() {
		return array_length(_dialogs)
	}
}