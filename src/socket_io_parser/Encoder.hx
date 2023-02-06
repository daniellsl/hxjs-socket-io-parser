package socket_io_parser;

/**
	A socket.io Encoder instance
**/
@:jsRequire("socket.io-parser", "Encoder") extern class Encoder {
	/**
		Encoder constructor
	**/
	function new(?replacer:(key:String, value:Dynamic) -> Dynamic);
	@:optional
	private var replacer : Dynamic;
	/**
		Encode a packet as a single string if non-binary, or as a
		buffer sequence, depending on packet type.
	**/
	function encode(obj:Packet):Array<Dynamic>;
	/**
		Encode packet as string.
	**/
	private var encodeAsString : Dynamic;
	/**
		Encode packet as 'buffer sequence' by removing blobs, and
		deconstructing packet into object with placeholders and
		a list of buffers.
	**/
	private var encodeAsBinary : Dynamic;
	static var prototype : Encoder;
}