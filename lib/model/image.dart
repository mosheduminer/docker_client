part of docker_client.api;

class Image {
  
  String id = null;
  
  List<String> repoTags = [];
  
  List<String> repoDigests = [];
  
  String parent = null;
  
  String comment = null;
  
  String created = null;
  
  String container = null;
  
  ContainerConfig containerConfig = null;
  
  String dockerVersion = null;
  
  String author = null;
  
  ContainerConfig config = null;
  
  String architecture = null;
  
  String os = null;
  
  String osVersion = null;
  
  int size = null;
  
  int virtualSize = null;
  
  GraphDriverData graphDriver = null;
  
  ImageRootFS rootFS = null;
  
  ImageMetadata metadata = null;
  Image();

  @override
  String toString() {
    return 'Image[id=$id, repoTags=$repoTags, repoDigests=$repoDigests, parent=$parent, comment=$comment, created=$created, container=$container, containerConfig=$containerConfig, dockerVersion=$dockerVersion, author=$author, config=$config, architecture=$architecture, os=$os, osVersion=$osVersion, size=$size, virtualSize=$virtualSize, graphDriver=$graphDriver, rootFS=$rootFS, metadata=$metadata, ]';
  }

  Image.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['Id'];
    repoTags = (json['RepoTags'] == null) ?
      null :
      (json['RepoTags'] as List).cast<String>();
    repoDigests = (json['RepoDigests'] == null) ?
      null :
      (json['RepoDigests'] as List).cast<String>();
    parent = json['Parent'];
    comment = json['Comment'];
    created = json['Created'];
    container = json['Container'];
    containerConfig = (json['ContainerConfig'] == null) ?
      null :
      ContainerConfig.fromJson(json['ContainerConfig']);
    dockerVersion = json['DockerVersion'];
    author = json['Author'];
    config = (json['Config'] == null) ?
      null :
      ContainerConfig.fromJson(json['Config']);
    architecture = json['Architecture'];
    os = json['Os'];
    osVersion = json['OsVersion'];
    size = json['Size'];
    virtualSize = json['VirtualSize'];
    graphDriver = (json['GraphDriver'] == null) ?
      null :
      GraphDriverData.fromJson(json['GraphDriver']);
    rootFS = (json['RootFS'] == null) ?
      null :
      ImageRootFS.fromJson(json['RootFS']);
    metadata = (json['Metadata'] == null) ?
      null :
      ImageMetadata.fromJson(json['Metadata']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['Id'] = id;
    if (repoTags != null)
      json['RepoTags'] = repoTags;
    if (repoDigests != null)
      json['RepoDigests'] = repoDigests;
    if (parent != null)
      json['Parent'] = parent;
    if (comment != null)
      json['Comment'] = comment;
    if (created != null)
      json['Created'] = created;
    if (container != null)
      json['Container'] = container;
    if (containerConfig != null)
      json['ContainerConfig'] = containerConfig;
    if (dockerVersion != null)
      json['DockerVersion'] = dockerVersion;
    if (author != null)
      json['Author'] = author;
    if (config != null)
      json['Config'] = config;
    if (architecture != null)
      json['Architecture'] = architecture;
    if (os != null)
      json['Os'] = os;
    if (osVersion != null)
      json['OsVersion'] = osVersion;
    if (size != null)
      json['Size'] = size;
    if (virtualSize != null)
      json['VirtualSize'] = virtualSize;
    if (graphDriver != null)
      json['GraphDriver'] = graphDriver;
    if (rootFS != null)
      json['RootFS'] = rootFS;
    if (metadata != null)
      json['Metadata'] = metadata;
    return json;
  }

  static List<Image> listFromJson(List<dynamic> json) {
    return json == null ? List<Image>() : json.map((value) => Image.fromJson(value)).toList();
  }

  static Map<String, Image> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Image>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Image.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Image-objects as value to a dart map
  static Map<String, List<Image>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Image>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Image.listFromJson(value);
       });
     }
     return map;
  }
}

