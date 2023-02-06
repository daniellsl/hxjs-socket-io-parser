package socket_io_parser;

typedef DecoderReservedEvents = {
	dynamic function decoded(packet:Packet):Void;
};