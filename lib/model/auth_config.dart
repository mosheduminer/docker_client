part of docker_client.api;

class AuthConfig {
  
  String username = null;
  
  String password = null;
  
  String email = null;
  
  String serveraddress = null;
  AuthConfig({this.username, this.password, this.email, this.serveraddress});

  @override
  String toString() {
    return 'AuthConfig[username=$username, password=$password, email=$email, serveraddress=$serveraddress, ]';
  }

  AuthConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username = json['username'];
    password = json['password'];
    email = json['email'];
    serveraddress = json['serveraddress'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (username != null)
      json['username'] = username;
    if (password != null)
      json['password'] = password;
    if (email != null)
      json['email'] = email;
    if (serveraddress != null)
      json['serveraddress'] = serveraddress;
    return json;
  }

  static List<AuthConfig> listFromJson(List<dynamic> json) {
    return json == null ? List<AuthConfig>() : json.map((value) => AuthConfig.fromJson(value)).toList();
  }

  static Map<String, AuthConfig> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuthConfig>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthConfig-objects as value to a dart map
  static Map<String, List<AuthConfig>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AuthConfig>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AuthConfig.listFromJson(value);
       });
     }
     return map;
  }
}

