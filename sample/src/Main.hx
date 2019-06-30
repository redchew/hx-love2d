package;

import lua.Math;
import love.physics.CircleShape;
import love.graphics.GraphicsModule;
import love.graphics.DrawMode;
import lua.Table;
import love.Love;

class Main {

	public static function main() {

        var circle = {
            x:0.0,
            y:0.0
        };

		Love.load = function(args) {

		};

        Love.update = function(dt:Float) {
            circle.x = circle.x + dt * 5;
        };

        Love.draw = function() {
            GraphicsModule.circle(DrawMode.Fill, 100 * Math.sin(circle.x), 100, 50, 20);
        };
	}
}
