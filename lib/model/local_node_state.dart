part of docker_client.api;

class LocalNodeState {
  /// The underlying value of this enum member.
  final String value;

  const LocalNodeState._internal(this.value);

  /// Current local status of this node.
  static const LocalNodeState empty = const LocalNodeState._internal("");
  /// Current local status of this node.
  static const LocalNodeState inactive_ = const LocalNodeState._internal("inactive");
  /// Current local status of this node.
  static const LocalNodeState pending_ = const LocalNodeState._internal("pending");
  /// Current local status of this node.
  static const LocalNodeState active_ = const LocalNodeState._internal("active");
  /// Current local status of this node.
  static const LocalNodeState error_ = const LocalNodeState._internal("error");
  /// Current local status of this node.
  static const LocalNodeState locked_ = const LocalNodeState._internal("locked");

  static LocalNodeState fromJson(String value) {
    return new LocalNodeStateTypeTransformer().decode(value);
  }
  
  static List<LocalNodeState> listFromJson(List<dynamic> json) {
    return json == null ? new List<LocalNodeState>() : json.map((value) => LocalNodeState.fromJson(value)).toList();
  }
}

class LocalNodeStateTypeTransformer {

  dynamic encode(LocalNodeState data) {
    return data.value;
  }

  LocalNodeState decode(dynamic data) {
    switch (data) {
      case "": return LocalNodeState.empty;
      case "inactive": return LocalNodeState.inactive_;
      case "pending": return LocalNodeState.pending_;
      case "active": return LocalNodeState.active_;
      case "error": return LocalNodeState.error_;
      case "locked": return LocalNodeState.locked_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

