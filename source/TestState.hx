package;

import flixel.*;

class TestState extends FlxState {
	var _correio:Correio;
	var _personagem:Personagem;
	var _inimigo:Entidade;

	override public function create():Void {
        _correio = new Correio();
		add(_correio);
    
    	_personagem = new Personagem();
		_personagem.makeGraphic(10, 10, 0xffff0000);
		add(_personagem);

		_inimigo = new Entidade();
		_inimigo.makeGraphic(10, 10, 0xff00ff00);
		_inimigo.x = 10;
		add(_inimigo);

    	super.create();
	}

	override public function update(elapsed:Float) {
		if (FlxG.keys.justPressed.SPACE) {
			var m:Mensagem = new Mensagem();
			m.from = _inimigo;
			m.to = _personagem;
			m.op = Mensagem.OP_DAMAGE;
			m.data = 3.141592;
    		_correio.send(m);
		}

		super.update(elapsed);
	}
}
