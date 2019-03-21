package;

import flixel.*;

class Personagem extends Entidade {
    public function new() {
        super();
        health = 10;
    }

    override public function onMessage(m:Mensagem) {
        FlxG.log.add("Personagem msg, op: " + m.op);
        if (m.op == Mensagem.OP_DAMAGE) {
            hurt(m.data);
        }
    }
}