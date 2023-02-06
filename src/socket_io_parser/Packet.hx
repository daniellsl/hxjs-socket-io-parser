package socket_io_parser;

typedef Packet = {
	var type : PacketType;
	var nsp : String;
	@:optional
	var data : Dynamic;
	@:optional
	var id : Float;
	@:optional
	var attachments : Float;
};