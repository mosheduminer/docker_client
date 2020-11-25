part of docker_client.api;

class ContainerSummary {
  ContainerSummary(
      this.command,
      this.created,
      this.hostConfig,
      this.id,
      this.image,
      this.imageId,
      this.labels,
      this.mounts,
      this.names,
      this.networkSettings,
      this.ports,
      this.sizeRootFs,
      this.sizeRw,
      this.state,
      this.status);
  factory ContainerSummary.fromJson(Map<String, dynamic> json) =>
      ContainerSummary(
        json['Command'] as String,
        json['Created'] as int,
        HostConfig.fromJson(json['HostConfig'] as Map<String, dynamic>),
        json['Id'] as String,
        json['Image'] as String,
        json['ImageID'] as String,
        Map<String, String>.from(json['Labels'] as Map),
        (json['Mounts'] as List)
            .map((e) => Mount.fromJson(e as Map<String, dynamic>))
            .toList(),
        (json['Names'] as List).map((e) => e as String).toList(),
        NetworkSettings.fromJson(
            json['NetworkSettings'] as Map<String, dynamic>),
        (json['Ports'] as List)
            .map((e) => Port.fromJson(e as Map<String, dynamic>))
            .toList(),
        json['SizeRootFs'] as int,
        json['SizeRw'] as int,
        json['State'] as String,
        json['Status'] as String,
      );
  Map<String, dynamic> toJson() => <String, dynamic>{
        'Id': id,
        'Names': names,
        'Image': image,
        'ImageID': imageId,
        'Command': command,
        'Created': created,
        'Ports': ports.map((e) => e.toJson()).toList(),
        'SizeRw': sizeRw,
        'SizeRootFs': sizeRootFs,
        'Labels': labels,
        'State': state,
        'Status': status,
        'HostConfig': hostConfig.toJson(),
        'NetworkSettings': networkSettings.toJson(),
        'Mounts': mounts.map((e) => e.toJson()).toList(),
      };

  static listFromJson(List<dynamic> json) => json == null
      ? List<ContainerSummary>()
      : json.map((value) => ContainerSummary.fromJson(value)).toList();

  @override
  String toString() {
    return 'ContainerSummary[id=$id, names=$names, image=$image, imageId=$imageId, command=$command, created=$created, ports=$ports, sizeRw=$sizeRw, sizeRootFs=$sizeRootFs, labels=$labels, state=$state, status=$status, hostConfig=$hostConfig, networkSettings=$networkSettings, mounts=$mounts]';
  }

  /// The ID of this container
  String id;

  /// The names that this container has been given
  List<String> names;

  /// The name of the image used when creating this container
  String image;

  /// The ID of the image that this container was created from
  String imageId;

  /// Command to run when starting the container
  String command;

  /// When the container was created
  int created;

  /// The ports exposed by this container
  List<Port> ports;

  /// The size of files that have been created or changed by this container
  int sizeRw;

  /// The total size of all the files in this container
  int sizeRootFs;

  /// User-defined key/value metadata
  Map<String, String> labels;

  /// The state of this container (e.g. `Exited`)
  String state;

  /// Additional human-readable status of this container (e.g. `Exit 0`)
  String status;

  HostConfig hostConfig;

  /// A summary of the container's network settings
  NetworkSettings networkSettings;

  List<Mount> mounts;
}
