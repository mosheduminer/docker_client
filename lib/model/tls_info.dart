part of docker_client.api;

class TLSInfo {
  /* The root CA certificate(s) that are used to validate leaf TLS certificates.  */
  String trustRoot = null;
  /* The base64-url-safe-encoded raw subject bytes of the issuer. */
  String certIssuerSubject = null;
  /* The base64-url-safe-encoded raw public key bytes of the issuer.  */
  String certIssuerPublicKey = null;
  TLSInfo();

  @override
  String toString() {
    return 'TLSInfo[trustRoot=$trustRoot, certIssuerSubject=$certIssuerSubject, certIssuerPublicKey=$certIssuerPublicKey, ]';
  }

  TLSInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    trustRoot = json['TrustRoot'];
    certIssuerSubject = json['CertIssuerSubject'];
    certIssuerPublicKey = json['CertIssuerPublicKey'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (trustRoot != null)
      json['TrustRoot'] = trustRoot;
    if (certIssuerSubject != null)
      json['CertIssuerSubject'] = certIssuerSubject;
    if (certIssuerPublicKey != null)
      json['CertIssuerPublicKey'] = certIssuerPublicKey;
    return json;
  }

  static List<TLSInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<TLSInfo>() : json.map((value) => TLSInfo.fromJson(value)).toList();
  }

  static Map<String, TLSInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TLSInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TLSInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TLSInfo-objects as value to a dart map
  static Map<String, List<TLSInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TLSInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TLSInfo.listFromJson(value);
       });
     }
     return map;
  }
}

