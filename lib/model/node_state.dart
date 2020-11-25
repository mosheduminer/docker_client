part of docker_client.api;

class NodeState {
  /// The underlying value of this enum member.
  final String value;

  const NodeState._internal(this.value);

  /// NodeState represents the state of a node.
  static const NodeState unknown_ = const NodeState._internal("unknown");
  /// NodeState represents the state of a node.
  static const NodeState down_ = const NodeState._internal("down");
  /// NodeState represents the state of a node.
  static const NodeState ready_ = const NodeState._internal("ready");
  /// NodeState represents the state of a node.
  static const NodeState disconnected_ = const NodeState._internal("disconnected");

  static NodeState fromJson(String value) {
    return new NodeStateTypeTransformer().decode(value);
  }
  
  static List<NodeState> listFromJson(List<dynamic> json) {
    return json == null ? new List<NodeState>() : json.map((value) => NodeState.fromJson(value)).toList();
  }
}

class NodeStateTypeTransformer {

  dynamic encode(NodeState data) {
    return data.value;
  }

  NodeState decode(dynamic data) {
    switch (data) {
      case "unknown": return NodeState.unknown_;
      case "down": return NodeState.down_;
      case "ready": return NodeState.ready_;
      case "disconnected": return NodeState.disconnected_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

