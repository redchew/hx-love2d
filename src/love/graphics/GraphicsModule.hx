package love.graphics;
import love.Data;
import love.Drawable;
import love.filesystem.File;
import love.image.CompressedImageData;
import love.image.ImageData;
import love.math.Transform;
import love.thread.Channel;
import love.video.VideoStream;
import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.graphics")
extern class GraphicsModule
{

	public static function applyTransform(transform:Transform) : Void;

	@:overload(function (drawmode:DrawMode, arctype:ArcType, x:Float, y:Float, radius:Float, angle1:Float, angle2:Float, ?segments:Float) : Void {})
	public static function arc(drawmode:DrawMode, x:Float, y:Float, radius:Float, angle1:Float, angle2:Float, ?segments:Float) : Void;

	@:overload(function (callback:Dynamic) : Void {})
	@:overload(function (channel:Channel) : Void {})
	public static function captureScreenshot(filename:String) : Void;

	@:overload(function (mode:DrawMode, x:Float, y:Float, radius:Float, segments:Float) : Void {})
	public static function circle(mode:DrawMode, x:Float, y:Float, radius:Float) : Void;

	@:overload(function (r:Float, g:Float, b:Float, ?a:Float, ?clearstencil:Bool, ?cleardepth:Bool) : Void {})
	@:overload(function (color:Table<Dynamic,Dynamic>, args:Rest<Table<Dynamic,Dynamic>>, ?clearstencil:Bool, ?cleardepth:Bool) : Void {})
	@:overload(function (clearcolor:Bool, clearstencil:Bool, cleardepth:Bool) : Void {})
	public static function clear() : Void;

	@:overload(function (discardcolors:Table<Dynamic,Dynamic>, ?discardstencil:Bool) : Void {})
	public static function discard(?discardcolor:Bool, ?discardstencil:Bool) : Void;

	@:overload(function (texture:Texture, quad:Quad, x:Float, y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (drawable:Drawable, transform:Transform) : Void {})
	@:overload(function (texture:Texture, quad:Quad, transform:Transform) : Void {})
	public static function draw(drawable:Drawable, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	@:overload(function (mesh:Mesh, instancecount:Float, transform:Transform) : Void {})
	public static function drawInstanced(mesh:Mesh, instancecount:Float, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	@:overload(function (texture:Texture, layerindex:Float, quad:Quad, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (texture:Texture, layerindex:Float, transform:Transform) : Void {})
	@:overload(function (texture:Texture, layerindex:Float, quad:Quad, transform:Transform) : Void {})
	public static function drawLayer(texture:Texture, layerindex:Float, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	@:overload(function (mode:DrawMode, x:Float, y:Float, radiusx:Float, radiusy:Float, segments:Float) : Void {})
	public static function ellipse(mode:DrawMode, x:Float, y:Float, radiusx:Float, radiusy:Float) : Void;

	public static function flushBatch() : Void;

	public static function getBackgroundColor() : GraphicsModuleGetBackgroundColorResult;

	public static function getBlendMode() : GraphicsModuleGetBlendModeResult;

	public static function getCanvas() : Canvas;

	@:overload(function (readable:Bool) : Table<Dynamic,Dynamic> {})
	public static function getCanvasFormats() : Table<Dynamic,Dynamic>;

	public static function getColor() : GraphicsModuleGetColorResult;

	public static function getColorMask() : GraphicsModuleGetColorMaskResult;

	public static function getDPIScale() : Float;

	public static function getDefaultFilter() : GraphicsModuleGetDefaultFilterResult;

	public static function getDepthMode() : GraphicsModuleGetDepthModeResult;

	public static function getDimensions() : GraphicsModuleGetDimensionsResult;

	public static function getFont() : Font;

	public static function getFrontFaceWinding() : VertexWinding;

	public static function getHeight() : Float;

	public static function getImageFormats() : Table<Dynamic,Dynamic>;

	public static function getLineJoin() : LineJoin;

	public static function getLineStyle() : LineStyle;

	public static function getLineWidth() : Float;

	public static function getMeshCullMode() : CullMode;

	public static function getPixelHeight() : Float;

	public static function getPixelWidth() : Float;

	public static function getPointSize() : Float;

	public static function getRendererInfo() : GraphicsModuleGetRendererInfoResult;

	public static function getScissor() : GraphicsModuleGetScissorResult;

	public static function getShader() : Shader;

	public static function getStackDepth() : Float;

	@:overload(function (stats:Table<Dynamic,Dynamic>) : Table<Dynamic,Dynamic> {})
	public static function getStats() : Table<Dynamic,Dynamic>;

	public static function getStencilTest() : GraphicsModuleGetStencilTestResult;

	public static function getSupported() : Table<Dynamic,Dynamic>;

	public static function getSystemLimits() : Table<Dynamic,Dynamic>;

	public static function getTextureTypes() : Table<Dynamic,Dynamic>;

	public static function getWidth() : Float;

	public static function intersectScissor(x:Float, y:Float, width:Float, height:Float) : Void;

	public static function inverseTransformPoint(screenX:Float, screenY:Float) : GraphicsModuleInverseTransformPointResult;

	public static function isGammaCorrect() : Bool;

	public static function isWireframe() : Bool;

	@:overload(function (points:Table<Dynamic,Dynamic>) : Void {})
	public static function line(x1:Float, y1:Float, x2:Float, y2:Float, args:Rest<Float>) : Void;

	public static function newArrayImage(slices:Table<Dynamic,Dynamic>, ?settings:Table<Dynamic,Dynamic>) : Image;

	@:overload(function (width:Float, height:Float) : Canvas {})
	@:overload(function (width:Float, height:Float, settings:Table<Dynamic,Dynamic>) : Canvas {})
	@:overload(function (width:Float, height:Float, layers:Float, settings:Table<Dynamic,Dynamic>) : Canvas {})
	@:overload(function (?width:Float, ?height:Float, ?format:CanvasFormat) : Canvas {})
	@:overload(function (?width:Float, ?height:Float, ?format:CanvasFormat, ?msaa:Float) : Canvas {})
	public static function newCanvas() : Canvas;

	@:overload(function (faces:Table<Dynamic,Dynamic>, ?settings:Table<Dynamic,Dynamic>) : Image {})
	public static function newCubeImage(filename:String, ?settings:Table<Dynamic,Dynamic>) : Image;

	@:overload(function (filename:String, size:Float, ?hinting:HintingMode) : Font {})
	@:overload(function (filename:String, imagefilename:String) : Font {})
	@:overload(function (?size:Float, ?hinting:HintingMode) : Font {})
	public static function newFont(filename:String) : Font;

	@:overload(function (imageData:ImageData) : Image {})
	@:overload(function (compressedImageData:CompressedImageData) : Image {})
	@:overload(function (filename:String, flags:Table<Dynamic,Dynamic>) : Image {})
	public static function newImage(filename:String) : Image;

	@:overload(function (imageData:ImageData, glyphs:String) : Font {})
	@:overload(function (filename:String, glyphs:String, extraspacing:Float) : Font {})
	public static function newImageFont(filename:String, glyphs:String) : Font;

	@:overload(function (vertexcount:Float, ?mode:MeshDrawMode, ?usage:SpriteBatchUsage) : Mesh {})
	@:overload(function (vertexformat:Table<Dynamic,Dynamic>, vertices:Table<Dynamic,Dynamic>, ?mode:MeshDrawMode, ?usage:SpriteBatchUsage) : Mesh {})
	@:overload(function (vertexformat:Table<Dynamic,Dynamic>, vertexcount:Float, ?mode:MeshDrawMode, ?usage:SpriteBatchUsage) : Mesh {})
	@:overload(function (vertexcount:Float, ?texture:Texture, ?mode:MeshDrawMode) : Mesh {})
	public static function newMesh(vertices:Table<Dynamic,Dynamic>, ?mode:MeshDrawMode, ?usage:SpriteBatchUsage) : Mesh;

	@:overload(function (texture:Texture, ?buffer:Float) : ParticleSystem {})
	public static function newParticleSystem(image:Image, ?buffer:Float) : ParticleSystem;

	public static function newQuad(x:Float, y:Float, width:Float, height:Float, sw:Float, sh:Float) : Quad;

	@:overload(function (transform_projection:Table<Dynamic,Dynamic>, vertex_position:Table<Dynamic,Dynamic>) : Table<Dynamic,Dynamic> {})
	public static function newShader(code:String) : Shader;

	@:overload(function (image:Image, ?maxsprites:Float, ?usage:SpriteBatchUsage) : SpriteBatch {})
	@:overload(function (texture:Texture, ?maxsprites:Float, ?usage:SpriteBatchUsage) : SpriteBatch {})
	public static function newSpriteBatch(image:Image, ?maxsprites:Float) : SpriteBatch;

	public static function newText(font:Font, ?textstring:String) : Text;

	@:overload(function (videostream:VideoStream) : Video {})
	@:overload(function (filename:String, settings:Table<Dynamic,Dynamic>) : Video {})
	@:overload(function (filename:String, ?loadaudio:Bool) : Video {})
	@:overload(function (videostream:VideoStream, ?loadaudio:Bool) : Video {})
	public static function newVideo(filename:String) : Video;

	public static function newVolumeImage(layers:Table<Dynamic,Dynamic>, ?settings:Table<Dynamic,Dynamic>) : Image;

	public static function origin() : Void;

	@:overload(function (points:Table<Dynamic,Dynamic>) : Void {})
	@:overload(function (points:Table<Dynamic,Dynamic>) : Void {})
	public static function points(x:Float, y:Float, args:Rest<Float>) : Void;

	@:overload(function (mode:DrawMode, vertices:Table<Dynamic,Dynamic>) : Void {})
	public static function polygon(mode:DrawMode, args:Rest<Float>) : Void;

	public static function pop() : Void;

	public static function present() : Void;

	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, ?x:Float, ?y:Float, ?angle:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (text:String, transform:Transform) : Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, transform:Transform) : Void {})
	@:overload(function (text:String, font:Font, transform:Transform) : Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, font:Font, transform:Transform) : Void {})
	public static function print(text:String, ?x:Float, ?y:Float, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	@:overload(function (text:String, font:Font, x:Float, y:Float, limit:Float, ?align:AlignMode, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (text:String, transform:Transform, limit:Float, ?align:AlignMode) : Void {})
	@:overload(function (text:String, font:Font, transform:Transform, limit:Float, ?align:AlignMode) : Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, x:Float, y:Float, limit:Float, align:AlignMode, ?angle:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, font:Font, x:Float, y:Float, limit:Float, ?align:AlignMode, ?angle:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, transform:Transform, limit:Float, ?align:AlignMode) : Void {})
	@:overload(function (coloredtext:Table<Dynamic,Dynamic>, font:Font, transform:Transform, limit:Float, ?align:AlignMode) : Void {})
	public static function printf(text:String, x:Float, y:Float, limit:Float, ?align:AlignMode, ?r:Float, ?sx:Float, ?sy:Float, ?ox:Float, ?oy:Float, ?kx:Float, ?ky:Float) : Void;

	@:overload(function (stack:StackType) : Void {})
	public static function push() : Void;

	@:overload(function (mode:DrawMode, x:Float, y:Float, width:Float, height:Float, rx:Float, ?ry:Float, ?segments:Float) : Void {})
	public static function rectangle(mode:DrawMode, x:Float, y:Float, width:Float, height:Float) : Void;

	public static function replaceTransform(transform:Transform) : Void;

	public static function reset() : Void;

	public static function rotate(angle:Float) : Void;

	public static function scale(sx:Float, ?sy:Float) : Void;

	@:overload(function () : Void {})
	@:overload(function () : Void {})
	public static function setBackgroundColor(red:Float, green:Float, blue:Float, ?alpha:Float) : Void;

	@:overload(function (mode:BlendMode, ?alphamode:BlendAlphaMode) : Void {})
	public static function setBlendMode(mode:BlendMode) : Void;

	@:overload(function () : Void {})
	@:overload(function (canvas1:Canvas, canvas2:Canvas, args:Rest<Canvas>) : Void {})
	@:overload(function (canvas:Canvas, slice:Float, ?mipmap:Float) : Void {})
	@:overload(function (setup:Table<Dynamic,Dynamic>) : Void {})
	public static function setCanvas(canvas:Canvas, ?mipmap:Float) : Void;

	@:overload(function (rgba:Table<Dynamic,Dynamic>) : Void {})
	public static function setColor(red:Float, green:Float, blue:Float, ?alpha:Float) : Void;

	@:overload(function () : Void {})
	public static function setColorMask(red:Bool, green:Bool, blue:Bool, alpha:Bool) : Void;

	public static function setDefaultFilter(min:FilterMode, mag:FilterMode, ?anisotropy:Float) : Void;

	@:overload(function () : Void {})
	public static function setDepthMode(comparemode:CompareMode, write:Bool) : Void;

	public static function setFont(font:Font) : Void;

	public static function setFrontFaceWinding(winding:VertexWinding) : Void;

	public static function setLineJoin(join:LineJoin) : Void;

	public static function setLineStyle(style:LineStyle) : Void;

	public static function setLineWidth(width:Float) : Void;

	public static function setMeshCullMode(mode:CullMode) : Void;

	@:overload(function (filename:String, ?size:Float) : Font {})
	@:overload(function (file:File, ?size:Float) : Font {})
	@:overload(function (data:Data, ?size:Float) : Font {})
	@:overload(function (rasterizer:Rasterizer) : Font {})
	public static function setNewFont(?size:Float) : Font;

	public static function setPointSize(size:Float) : Void;

	@:overload(function () : Void {})
	public static function setScissor(x:Float, y:Float, width:Float, height:Float) : Void;

	@:overload(function () : Void {})
	public static function setShader(shader:Shader) : Void;

	@:overload(function () : Void {})
	public static function setStencilTest(comparemode:CompareMode, comparevalue:Float) : Void;

	public static function setWireframe(enable:Bool) : Void;

	public static function shear(kx:Float, ky:Float) : Void;

	public static function stencil(stencilfunction:Dynamic, ?action:StencilAction, ?value:Float, ?keepvalues:Bool) : Void;

	public static function transformPoint(globalX:Float, globalY:Float) : GraphicsModuleTransformPointResult;

	public static function translate(dx:Float, dy:Float) : Void;

	@:overload(function (gles:Bool, pixelcode:String, vertexcode:String) : GraphicsModuleValidateShaderResult {})
	public static function validateShader(gles:Bool, code:String) : GraphicsModuleValidateShaderResult;
}

@:multiReturn
extern class GraphicsModuleGetColorMaskResult
{
	var r : Bool;
	var g : Bool;
	var b : Bool;
	var a : Bool;
}

@:multiReturn
extern class GraphicsModuleGetDefaultFilterResult
{
	var min : FilterMode;
	var mag : FilterMode;
	var anisotropy : Float;
}

@:multiReturn
extern class GraphicsModuleGetBackgroundColorResult
{
	var r : Float;
	var g : Float;
	var b : Float;
	var a : Float;
}

@:multiReturn
extern class GraphicsModuleGetRendererInfoResult
{
	var name : String;
	var version : String;
	var vendor : String;
	var device : String;
}

@:multiReturn
extern class GraphicsModuleValidateShaderResult
{
	var status : Bool;
	var message : String;
}

@:multiReturn
extern class GraphicsModuleGetDepthModeResult
{
	var comparemode : CompareMode;
	var write : Bool;
}

@:multiReturn
extern class GraphicsModuleTransformPointResult
{
	var screenX : Float;
	var screenY : Float;
}

@:multiReturn
extern class GraphicsModuleInverseTransformPointResult
{
	var globalX : Float;
	var globalY : Float;
}

@:multiReturn
extern class GraphicsModuleGetColorResult
{
	var r : Float;
	var g : Float;
	var b : Float;
	var a : Float;
}

@:multiReturn
extern class GraphicsModuleGetStencilTestResult
{
	var comparemode : CompareMode;
	var comparevalue : Float;
}

@:multiReturn
extern class GraphicsModuleGetBlendModeResult
{
	var mode : BlendMode;
	var alphamode : BlendAlphaMode;
}

@:multiReturn
extern class GraphicsModuleGetScissorResult
{
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
}

@:multiReturn
extern class GraphicsModuleGetDimensionsResult
{
	var width : Float;
	var height : Float;
}