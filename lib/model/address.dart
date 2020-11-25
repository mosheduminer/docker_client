part of docker_client.api;

class Address {
  /* IP address. */
  String addr = null;
  /* Mask length of the IP address. */
  int prefixLen = null;
  Address();

  @override
  String toString() {
    return 'Address[addr=$addr, prefixLen=$prefixLen, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addr = json['Addr'];
    prefixLen = json['PrefixLen'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (addr != null)
      json['Addr'] = addr;
    if (prefixLen != null)
      json['PrefixLen'] = prefixLen;
    return json;
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? List<Address>() : json.map((value) => Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Address>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Address.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Address-objects as value to a dart map
  static Map<String, List<Address>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Address>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Address.listFromJson(value);
       });
     }
     return map;
  }
}

