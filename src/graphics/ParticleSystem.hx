package love.graphics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

extern class ParticleSystem extends Drawable
{

	public function clone() : ParticleSystem;

	public function emit(numparticles:Float) : Void;

	public function getCount() : Float;

	public function getAreaSpread() : AreaSpreadDistribution;

	public function getBufferSize() : Float;

	public function getColors() : Float;

	public function getDirection() : Float;

	public function getEmissionRate() : Float;

	public function getInsertMode() : ParticleInsertMode;

	public function getLinearAcceleration() : Float;

	public function getLinearDamping() : Float;

	public function getEmitterLifetime() : Float;

	public function getOffset() : Float;

	public function getParticleLifetime() : Float;

	public function getPosition() : Float;

	public function getRadialAcceleration() : Float;

	public function getRotation() : Float;

	public function getSizes() : Float;

	public function getSizeVariation() : Float;

	public function getSpeed() : Float;

	public function getSpin() : Float;

	public function getSpinVariation() : Float;

	public function getSpread() : Float;

	public function getTexture() : Texture;

	public function getTangentialAcceleration() : Float;

	public function hasRelativeRotation() : Bool;

	public function isActive() : Bool;

	public function isPaused() : Bool;

	public function isStopped() : Bool;

	public function moveTo(x:Float, y:Float) : Void;

	public function pause() : Void;

	public function reset() : Void;

	public function setAreaSpread(distribution:AreaSpreadDistribution, dx:Float, dy:Float) : Void;

	public function setBufferSize(buffer:Float) : Void;

	public function setColors(r1:Float, g1:Float, b1:Float, a1:Float, r2:Float, g2:Float, b2:Float, a2:Float, args:Rest<Float>) : Void;

	public function setDirection(direction:Float) : Void;

	public function setEmissionRate(rate:Float) : Void;

	public function setEmitterLifetime(life:Float) : Void;

	public function setInsertMode(mode:ParticleInsertMode) : Void;

	public function setLinearAcceleration(xmin:Float, ?ymin:Float, ?xmax:Float, ?ymax:Float) : Void;

	public function setLinearDamping(min:Float, max:Float) : Void;

	public function setOffset(x:Float, y:Float) : Void;

	public function setParticleLifetime(min:Float, ?max:Float) : Void;

	public function setPosition(x:Float, y:Float) : Void;

	public function setQuads(quad1:Quad, quad2:Quad) : Void;

	public function setRadialAcceleration(min:Float, ?max:Float) : Void;

	public function setRelativeRotation(enable:Bool) : Void;

	public function setRotation(min:Float, ?max:Float) : Void;

	public function setSizes(size1:Float, size2:Float, args:Rest<Float>) : Void;

	public function setSizeVariation(variation:Float) : Void;

	public function setSpeed(min:Float, ?max:Float) : Void;

	public function setSpin(min:Float, ?max:Float) : Void;

	public function setSpinVariation(variation:Float) : Void;

	public function setSpread(spread:Float) : Void;

	public function setTexture(texture:Texture) : Void;

	public function setTangentialAcceleration(min:Float, ?max:Float) : Void;

	public function start() : Void;

	public function stop() : Void;

	public function update(dt:Float) : Void;
}