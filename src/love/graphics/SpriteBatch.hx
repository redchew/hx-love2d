package love.graphics;
import love.math.Transform;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class SpriteBatch extends Drawable
{

	@:overload(function (quad:Quad, x:Float, y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Float {})
	public function add(x:Float, y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Float;

	@:overload(function (layerindex:Float, quad:Quad, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Float {})
	@:overload(function (layerindex:Float, transform:Transform) : Float {})
	@:overload(function (layerindex:Float, quad:Quad, transform:Transform) : Float {})
	public function addLayer(layerindex:Float, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Float;

	public function attachAttribute(name:String, mesh:Mesh) : Void;

	public function clear() : Void;

	public function flush() : Void;

	public function getBufferSize() : Float;

	public function getColor() : SpriteBatchGetColorResult;

	public function getCount() : Float;

	public function getTexture() : Texture;

	@:overload(function (spriteindex:Float, quad:Quad, x:Float, y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	public function set(spriteindex:Float, x:Float, y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	@:overload(function () : Void {})
	public function setColor(r:Float, g:Float, b:Float, ?a:Float) : Void;

	@:overload(function () : Void {})
	public function setDrawRange(start:Float, count:Float) : Void;

	@:overload(function (spriteindex:Float, layerindex:Float, quad:Quad, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (spriteindex:Float, layerindex:Float, transform:Transform) : Void {})
	@:overload(function (spriteindex:Float, layerindex:Float, quad:Quad, transform:Transform) : Void {})
	public function setLayer(spriteindex:Float, layerindex:Float, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	public function setTexture(texture:Texture) : Void;
}

@:multiReturn
extern class SpriteBatchGetColorResult
{
	var r : Float;
	var g : Float;
	var b : Float;
	var a : Float;
}