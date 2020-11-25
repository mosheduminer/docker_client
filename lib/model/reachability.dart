part of docker_client.api;

class Reachability {
  /// The underlying value of this enum member.
  final String value;

  const Reachability._internal(this.value);

  /// Reachability represents the reachability of a node.
  static const Reachability unknown_ = const Reachability._internal("unknown");
  /// Reachability represents the reachability of a node.
  static const Reachability unreachable_ = const Reachability._internal("unreachable");
  /// Reachability represents the reachability of a node.
  static const Reachability reachable_ = const Reachability._internal("reachable");

  static Reachability fromJson(String value) {
    return new ReachabilityTypeTransformer().decode(value);
  }
  
  static List<Reachability> listFromJson(List<dynamic> json) {
    return json == null ? new List<Reachability>() : json.map((value) => Reachability.fromJson(value)).toList();
  }
}

class ReachabilityTypeTransformer {

  dynamic encode(Reachability data) {
    return data.value;
  }

  Reachability decode(dynamic data) {
    switch (data) {
      case "unknown": return Reachability.unknown_;
      case "unreachable": return Reachability.unreachable_;
      case "reachable": return Reachability.reachable_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

