package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.physics")
extern class PhysicsModule
{

	public static function getDistance(fixture1:Fixture, fixture2:Fixture) : Float;

	public static function getMeter() : Float;

	public static function newBody(world:World, ?x:Float, ?y:Float, ?type:BodyType) : Body;

	@:overload(function (loop:Bool, points:Table<Dynamic,Dynamic>) : ChainShape {})
	public static function newChainShape(loop:Bool, x1:Float, y1:Float, x2:Float, y2:Float, args:Rest<Float>) : ChainShape;

	@:overload(function (x:Float, y:Float, radius:Float) : CircleShape {})
	public static function newCircleShape(radius:Float) : CircleShape;

	public static function newDistanceJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ?collideConnected:Bool) : DistanceJoint;

	public static function newEdgeShape(x1:Float, y1:Float, x2:Float, y2:Float) : EdgeShape;

	public static function newFixture(body:Body, shape:Shape, ?density:Float) : Fixture;

	public static function newFrictionJoint(body1:Body, body2:Body, x:Float, y:Float, ?collideConnected:Bool) : FrictionJoint;

	public static function newGearJoint(joint1:Joint, joint2:Joint, ?ratio:Float, ?collideConnected:Bool) : Joint;

	@:overload(function (body1:Body, body2:Body, ?correctionFactor:Float, ?collideConnected:Bool) : MotorJoint {})
	public static function newMotorJoint(body1:Body, body2:Body, ?correctionFactor:Float) : MotorJoint;

	public static function newMouseJoint(body:Body, x:Float, y:Float) : Joint;

	@:overload(function (vertices:Table<Dynamic,Dynamic>) : PolygonShape {})
	public static function newPolygonShape(x1:Float, y1:Float, x2:Float, y2:Float, args:Rest<Float>) : PolygonShape;

	@:overload(function (body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, ?collideConnected:Bool) : PrismaticJoint {})
	public static function newPrismaticJoint(body1:Body, body2:Body, x:Float, y:Float, ax:Float, ay:Float, ?collideConnected:Bool) : PrismaticJoint;

	public static function newPulleyJoint(body1:Body, body2:Body, gx1:Float, gy1:Float, gx2:Float, gy2:Float, x1:Float, y1:Float, x2:Float, y2:Float, ?ratio:Float, ?collideConnected:Bool) : Joint;

	@:overload(function (x:Float, y:Float, width:Float, height:Float, ?angle:Float) : PolygonShape {})
	public static function newRectangleShape(width:Float, height:Float) : PolygonShape;

	public static function newRevoluteJoint(body1:Body, body2:Body, x:Float, y:Float, collideConnected:Float) : Joint;

	public static function newRopeJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, maxLength:Float, ?collideConnected:Bool) : RopeJoint;

	public static function newWeldJoint(body1:Body, body2:Body, x:Float, y:Float, ?collideConnected:Bool) : WeldJoint;

	public static function newWheelJoint(body1:Body, body2:Body, x:Float, y:Float, ax:Float, ay:Float, ?collideConnected:Bool) : WheelJoint;

	public static function newWorld(?xg:Float, ?yg:Float, ?sleep:Bool) : World;

	public static function setMeter(scale:Float) : Void;
}