package socket_io_parser;

@:jsRequire("socket.io-parser", "PacketType") @:enum extern abstract PacketType(Int) from Int to Int {
	var CONNECT;
	var DISCONNECT;
	var EVENT;
	var ACK;
	var CONNECT_ERROR;
	var BINARY_EVENT;
	var BINARY_ACK;
}