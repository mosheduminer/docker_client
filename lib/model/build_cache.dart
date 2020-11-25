part of docker_client.api;

class BuildCache {
  
  String ID = null;
  
  String parent = null;
  
  String type = null;
  
  String description = null;
  
  bool inUse = null;
  
  bool shared = null;
  /* Amount of disk space used by the build cache (in bytes).  */
  int size = null;
  /* Date and time at which the build cache was created in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String createdAt = null;
  /* Date and time at which the build cache was last used in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
  String lastUsedAt = null;
  
  int usageCount = null;
  BuildCache();

  @override
  String toString() {
    return 'BuildCache[ID=$ID, parent=$parent, type=$type, description=$description, inUse=$inUse, shared=$shared, size=$size, createdAt=$createdAt, lastUsedAt=$lastUsedAt, usageCount=$usageCount, ]';
  }

  BuildCache.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ID = json['ID'];
    parent = json['Parent'];
    type = json['Type'];
    description = json['Description'];
    inUse = json['InUse'];
    shared = json['Shared'];
    size = json['Size'];
    createdAt = json['CreatedAt'];
    lastUsedAt = json['LastUsedAt'];
    usageCount = json['UsageCount'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ID != null)
      json['ID'] = ID;
    if (parent != null)
      json['Parent'] = parent;
    if (type != null)
      json['Type'] = type;
    if (description != null)
      json['Description'] = description;
    if (inUse != null)
      json['InUse'] = inUse;
    if (shared != null)
      json['Shared'] = shared;
    if (size != null)
      json['Size'] = size;
    if (createdAt != null)
      json['CreatedAt'] = createdAt;
      json['LastUsedAt'] = lastUsedAt;
    if (usageCount != null)
      json['UsageCount'] = usageCount;
    return json;
  }

  static List<BuildCache> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildCache>() : json.map((value) => BuildCache.fromJson(value)).toList();
  }

  static Map<String, BuildCache> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildCache>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildCache.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BuildCache-objects as value to a dart map
  static Map<String, List<BuildCache>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BuildCache>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BuildCache.listFromJson(value);
       });
     }
     return map;
  }
}

