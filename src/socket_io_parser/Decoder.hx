package socket_io_parser;

/**
	A socket.io Decoder instance
**/
@:jsRequire("socket.io-parser", "Decoder") extern class Decoder extends socket_io.component_emitter.Emitter<{ }, { }, DecoderReservedEvents> {
	/**
		Decoder constructor
	**/
	function new(?reviver:(key:String, value:Dynamic) -> Dynamic);
	@:optional
	private var reviver : Dynamic;
	private var reconstructor : Dynamic;
	/**
		Decodes an encoded packet string into packet JSON.
	**/
	function add(obj:Dynamic):Void;
	/**
		Decode a packet String (JSON data)
	**/
	private var decodeString : Dynamic;
	private var tryParse : Dynamic;
	/**
		Deallocates a parser's resources
	**/
	function destroy():Void;
	/**
		Adds the `listener` function as an event listener for `ev`.
	**/
	function on<Ev>(ev:Ev, listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Decoder;
	/**
		Adds a one-time `listener` function as an event listener for `ev`.
	**/
	function once<Ev>(ev:Ev, listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Decoder;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function off<Ev>(?ev:Ev, ?listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Decoder;
	/**
		Emits an event.
	**/
	function emit<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Decoder;
	/**
		Emits a reserved event.
		
		This method is `protected`, so that only a class extending
		`StrictEventEmitter` can emit its own reserved events.
	**/
	private function emitReserved<Ev>(ev:Ev, args:haxe.extern.Rest<Any>):Decoder;
	/**
		Removes the `listener` function as an event listener for `ev`.
	**/
	function removeListener<Ev>(?ev:Ev, ?listener:socket_io.component_emitter.FallbackToUntypedListener<Dynamic>):Decoder;
	/**
		Removes all `listener` function as an event listener for `ev`.
	**/
	function removeAllListeners<Ev>(?ev:Ev):Decoder;
	static var prototype : Decoder;
	private static var isPayloadValid : Dynamic;
}