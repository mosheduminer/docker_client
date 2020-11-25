part of docker_client.api;

class Mount {
  /* Container path. */
  String target = null;
  /* Mount source (e.g. a volume name, a host path). */
  String source_ = null;
  /* The mount type. Available types:  - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container. - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed. - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs. - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.  */
  String type = null;
  //enum typeEnum {  bind,  volume,  tmpfs,  npipe,  };{
  /* Whether the mount should be read-only. */
  bool readOnly = null;
  /* The consistency requirement for the mount: `default`, `consistent`, `cached`, or `delegated`. */
  String consistency = null;
  
  MountBindOptions bindOptions = null;
  
  MountVolumeOptions volumeOptions = null;
  
  MountTmpfsOptions tmpfsOptions = null;
  Mount();

  @override
  String toString() {
    return 'Mount[target=$target, source_=$source_, type=$type, readOnly=$readOnly, consistency=$consistency, bindOptions=$bindOptions, volumeOptions=$volumeOptions, tmpfsOptions=$tmpfsOptions, ]';
  }

  Mount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    target = json['Target'];
    source_ = json['Source'];
    type = json['Type'];
    readOnly = json['ReadOnly'];
    consistency = json['Consistency'];
    bindOptions = (json['BindOptions'] == null) ?
      null :
      MountBindOptions.fromJson(json['BindOptions']);
    volumeOptions = (json['VolumeOptions'] == null) ?
      null :
      MountVolumeOptions.fromJson(json['VolumeOptions']);
    tmpfsOptions = (json['TmpfsOptions'] == null) ?
      null :
      MountTmpfsOptions.fromJson(json['TmpfsOptions']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (target != null)
      json['Target'] = target;
    if (source_ != null)
      json['Source'] = source_;
    if (type != null)
      json['Type'] = type;
    if (readOnly != null)
      json['ReadOnly'] = readOnly;
    if (consistency != null)
      json['Consistency'] = consistency;
    if (bindOptions != null)
      json['BindOptions'] = bindOptions;
    if (volumeOptions != null)
      json['VolumeOptions'] = volumeOptions;
    if (tmpfsOptions != null)
      json['TmpfsOptions'] = tmpfsOptions;
    return json;
  }

  static List<Mount> listFromJson(List<dynamic> json) {
    return json == null ? List<Mount>() : json.map((value) => Mount.fromJson(value)).toList();
  }

  static Map<String, Mount> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Mount>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Mount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Mount-objects as value to a dart map
  static Map<String, List<Mount>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Mount>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Mount.listFromJson(value);
       });
     }
     return map;
  }
}

