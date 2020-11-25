part of docker_client.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "http://localhost:2375/v1.40"}) {
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Address':
          return Address.fromJson(value);
        case 'AuthConfig':
          return AuthConfig.fromJson(value);
        case 'BuildCache':
          return BuildCache.fromJson(value);
        case 'BuildInfo':
          return BuildInfo.fromJson(value);
        case 'BuildPruneResponse':
          return BuildPruneResponse.fromJson(value);
        case 'ClusterInfo':
          return ClusterInfo.fromJson(value);
        case 'Commit':
          return Commit.fromJson(value);
        case 'Config':
          return Config.fromJson(value);
        case 'ConfigSpec':
          return ConfigSpec.fromJson(value);
        case 'ContainerChangeResponseItem':
          return ContainerChangeResponseItem.fromJson(value);
        case 'ContainerConfig':
          return ContainerConfig.fromJson(value);
        case 'ContainerCreateResponse':
          return ContainerCreateResponse.fromJson(value);
        case 'ContainerInspectResponse':
          return ContainerInspectResponse.fromJson(value);
        case 'ContainerPruneResponse':
          return ContainerPruneResponse.fromJson(value);
        case 'ContainerSummary':
          return ContainerSummary.fromJson(value);
        case 'ContainerState':
          return ContainerState.fromJson(value);
        case 'ContainerTopResponse':
          return ContainerTopResponse.fromJson(value);
        case 'ContainerUpdateResponse':
          return ContainerUpdateResponse.fromJson(value);
        case 'ContainerWaitResponse':
          return ContainerWaitResponse.fromJson(value);
        case 'ContainerWaitResponseError':
          return ContainerWaitResponseError.fromJson(value);
        case 'CreateImageInfo':
          return CreateImageInfo.fromJson(value);
        case 'DeviceMapping':
          return DeviceMapping.fromJson(value);
        case 'DeviceRequest':
          return DeviceRequest.fromJson(value);
        case 'DistributionInspectResponse':
          return DistributionInspectResponse.fromJson(value);
        case 'DistributionInspectResponseDescriptor':
          return DistributionInspectResponseDescriptor.fromJson(value);
        case 'DistributionInspectResponsePlatforms':
          return DistributionInspectResponsePlatforms.fromJson(value);
        case 'Driver':
          return Driver.fromJson(value);
        case 'EndpointIPAMConfig':
          return EndpointIPAMConfig.fromJson(value);
        case 'EndpointPortConfig':
          return EndpointPortConfig.fromJson(value);
        case 'EndpointSettings':
          return EndpointSettings.fromJson(value);
        case 'EndpointSpec':
          return EndpointSpec.fromJson(value);
        case 'EngineDescription':
          return EngineDescription.fromJson(value);
        case 'EngineDescriptionPlugins':
          return EngineDescriptionPlugins.fromJson(value);
        case 'ErrorDetail':
          return ErrorDetail.fromJson(value);
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'ExecInspectResponse':
          return ExecInspectResponse.fromJson(value);
        case 'GraphDriverData':
          return GraphDriverData.fromJson(value);
        case 'Health':
          return Health.fromJson(value);
        case 'HealthConfig':
          return HealthConfig.fromJson(value);
        case 'HealthcheckResult':
          return HealthcheckResult.fromJson(value);
        case 'HistoryResponseItem':
          return HistoryResponseItem.fromJson(value);
        case 'HostConfig':
          return HostConfig.fromJson(value);
        case 'HostConfigAllOf':
          return HostConfigAllOf.fromJson(value);
        case 'HostConfigAllOfLogConfig':
          return HostConfigAllOfLogConfig.fromJson(value);
        case 'IPAM':
          return IPAM.fromJson(value);
        case 'IdResponse':
          return IdResponse.fromJson(value);
        case 'Image':
          return Image.fromJson(value);
        case 'ImageDeleteResponseItem':
          return ImageDeleteResponseItem.fromJson(value);
        case 'ImageID':
          return ImageID.fromJson(value);
        case 'ImageMetadata':
          return ImageMetadata.fromJson(value);
        case 'ImagePruneResponse':
          return ImagePruneResponse.fromJson(value);
        case 'ImageRootFS':
          return ImageRootFS.fromJson(value);
        case 'ImageSearchResponseItem':
          return ImageSearchResponseItem.fromJson(value);
        case 'ImageSummary':
          return ImageSummary.fromJson(value);
        case 'IndexInfo':
          return IndexInfo.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'InlineObject2':
          return InlineObject2.fromJson(value);
        case 'InlineObject3':
          return InlineObject3.fromJson(value);
        case 'InlineObject4':
          return InlineObject4.fromJson(value);
        case 'InlineObject5':
          return InlineObject5.fromJson(value);
        case 'InlineObject6':
          return InlineObject6.fromJson(value);
        case 'InlineObject7':
          return InlineObject7.fromJson(value);
        case 'InlineResponse400':
          return InlineResponse400.fromJson(value);
        case 'JoinTokens':
          return JoinTokens.fromJson(value);
        case 'LocalNodeState':
          return new LocalNodeStateTypeTransformer().decode(value);
        case 'ManagerStatus':
          return ManagerStatus.fromJson(value);
        case 'Mount':
          return Mount.fromJson(value);
        case 'MountBindOptions':
          return MountBindOptions.fromJson(value);
        case 'MountPoint':
          return MountPoint.fromJson(value);
        case 'MountTmpfsOptions':
          return MountTmpfsOptions.fromJson(value);
        case 'MountVolumeOptions':
          return MountVolumeOptions.fromJson(value);
        case 'MountVolumeOptionsDriverConfig':
          return MountVolumeOptionsDriverConfig.fromJson(value);
        case 'Network':
          return Network.fromJson(value);
        case 'NetworkAttachmentConfig':
          return NetworkAttachmentConfig.fromJson(value);
        case 'NetworkContainer':
          return NetworkContainer.fromJson(value);
        case 'NetworkCreateResponse':
          return NetworkCreateResponse.fromJson(value);
        case 'NetworkPruneResponse':
          return NetworkPruneResponse.fromJson(value);
        case 'NetworkSettings':
          return NetworkSettings.fromJson(value);
        case 'NetworkingConfig':
          return NetworkingConfig.fromJson(value);
        case 'Node':
          return Node.fromJson(value);
        case 'NodeDescription':
          return NodeDescription.fromJson(value);
        case 'NodeSpec':
          return NodeSpec.fromJson(value);
        case 'NodeState':
          return new NodeStateTypeTransformer().decode(value);
        case 'NodeStatus':
          return NodeStatus.fromJson(value);
        case 'ObjectVersion':
          return ObjectVersion.fromJson(value);
        case 'PeerNode':
          return PeerNode.fromJson(value);
        case 'Platform':
          return Platform.fromJson(value);
        case 'Plugin':
          return Plugin.fromJson(value);
        case 'PluginConfig':
          return PluginConfig.fromJson(value);
        case 'PluginConfigArgs':
          return PluginConfigArgs.fromJson(value);
        case 'PluginConfigInterface':
          return PluginConfigInterface.fromJson(value);
        case 'PluginConfigLinux':
          return PluginConfigLinux.fromJson(value);
        case 'PluginConfigNetwork':
          return PluginConfigNetwork.fromJson(value);
        case 'PluginConfigRootfs':
          return PluginConfigRootfs.fromJson(value);
        case 'PluginConfigUser':
          return PluginConfigUser.fromJson(value);
        case 'PluginDevice':
          return PluginDevice.fromJson(value);
        case 'PluginEnv':
          return PluginEnv.fromJson(value);
        case 'PluginInterfaceType':
          return PluginInterfaceType.fromJson(value);
        case 'PluginMount':
          return PluginMount.fromJson(value);
        case 'PluginPrivilegeItem':
          return PluginPrivilegeItem.fromJson(value);
        case 'PluginSettings':
          return PluginSettings.fromJson(value);
        case 'PluginsInfo':
          return PluginsInfo.fromJson(value);
        case 'Port':
          return Port.fromJson(value);
        case 'PortBinding':
          return PortBinding.fromJson(value);
        case 'ProcessConfig':
          return ProcessConfig.fromJson(value);
        case 'ProgressDetail':
          return ProgressDetail.fromJson(value);
        case 'PushImageInfo':
          return PushImageInfo.fromJson(value);
        case 'Reachability':
          return new ReachabilityTypeTransformer().decode(value);
        case 'RegistryServiceConfig':
          return RegistryServiceConfig.fromJson(value);
        case 'ResourceObject':
          return ResourceObject.fromJson(value);
        case 'Resources':
          return Resources.fromJson(value);
        case 'ResourcesBlkioWeightDevice':
          return ResourcesBlkioWeightDevice.fromJson(value);
        case 'ResourcesUlimits':
          return ResourcesUlimits.fromJson(value);
        case 'RestartPolicy':
          return RestartPolicy.fromJson(value);
        case 'Runtime':
          return Runtime.fromJson(value);
        case 'Secret':
          return Secret.fromJson(value);
        case 'SecretSpec':
          return SecretSpec.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'ServiceCreateResponse':
          return ServiceCreateResponse.fromJson(value);
        case 'ServiceEndpoint':
          return ServiceEndpoint.fromJson(value);
        case 'ServiceEndpointVirtualIPs':
          return ServiceEndpointVirtualIPs.fromJson(value);
        case 'ServiceSpec':
          return ServiceSpec.fromJson(value);
        case 'ServiceSpecMode':
          return ServiceSpecMode.fromJson(value);
        case 'ServiceSpecModeReplicated':
          return ServiceSpecModeReplicated.fromJson(value);
        case 'ServiceSpecRollbackConfig':
          return ServiceSpecRollbackConfig.fromJson(value);
        case 'ServiceSpecUpdateConfig':
          return ServiceSpecUpdateConfig.fromJson(value);
        case 'ServiceUpdateResponse':
          return ServiceUpdateResponse.fromJson(value);
        case 'ServiceUpdateStatus':
          return ServiceUpdateStatus.fromJson(value);
        case 'Swarm':
          return Swarm.fromJson(value);
        case 'SwarmAllOf':
          return SwarmAllOf.fromJson(value);
        case 'SwarmInfo':
          return SwarmInfo.fromJson(value);
        case 'SwarmSpec':
          return SwarmSpec.fromJson(value);
        case 'SwarmSpecCAConfig':
          return SwarmSpecCAConfig.fromJson(value);
        case 'SwarmSpecCAConfigExternalCAs':
          return SwarmSpecCAConfigExternalCAs.fromJson(value);
        case 'SwarmSpecDispatcher':
          return SwarmSpecDispatcher.fromJson(value);
        case 'SwarmSpecEncryptionConfig':
          return SwarmSpecEncryptionConfig.fromJson(value);
        case 'SwarmSpecOrchestration':
          return SwarmSpecOrchestration.fromJson(value);
        case 'SwarmSpecRaft':
          return SwarmSpecRaft.fromJson(value);
        case 'SwarmSpecTaskDefaults':
          return SwarmSpecTaskDefaults.fromJson(value);
        case 'SwarmSpecTaskDefaultsLogDriver':
          return SwarmSpecTaskDefaultsLogDriver.fromJson(value);
        case 'SystemAuthResponse':
          return SystemAuthResponse.fromJson(value);
        case 'SystemDataUsageResponse':
          return SystemDataUsageResponse.fromJson(value);
        case 'SystemEventsResponse':
          return SystemEventsResponse.fromJson(value);
        case 'SystemEventsResponseActor':
          return SystemEventsResponseActor.fromJson(value);
        case 'SystemInfo':
          return SystemInfo.fromJson(value);
        case 'SystemVersion':
          return SystemVersion.fromJson(value);
        case 'SystemVersionComponents':
          return SystemVersionComponents.fromJson(value);
        case 'SystemVersionPlatform':
          return SystemVersionPlatform.fromJson(value);
        case 'TLSInfo':
          return TLSInfo.fromJson(value);
        case 'Task':
          return Task.fromJson(value);
        case 'TaskSpec':
          return TaskSpec.fromJson(value);
        case 'TaskSpecContainerSpec':
          return TaskSpecContainerSpec.fromJson(value);
        case 'TaskSpecContainerSpecConfigs':
          return TaskSpecContainerSpecConfigs.fromJson(value);
        case 'TaskSpecContainerSpecDNSConfig':
          return TaskSpecContainerSpecDNSConfig.fromJson(value);
        case 'TaskSpecContainerSpecFile':
          return TaskSpecContainerSpecFile.fromJson(value);
        case 'TaskSpecContainerSpecFile1':
          return TaskSpecContainerSpecFile1.fromJson(value);
        case 'TaskSpecContainerSpecPrivileges':
          return TaskSpecContainerSpecPrivileges.fromJson(value);
        case 'TaskSpecContainerSpecPrivilegesCredentialSpec':
          return TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(value);
        case 'TaskSpecContainerSpecPrivilegesSELinuxContext':
          return TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(value);
        case 'TaskSpecContainerSpecSecrets':
          return TaskSpecContainerSpecSecrets.fromJson(value);
        case 'TaskSpecLogDriver':
          return TaskSpecLogDriver.fromJson(value);
        case 'TaskSpecNetworkAttachmentSpec':
          return TaskSpecNetworkAttachmentSpec.fromJson(value);
        case 'TaskSpecPlacement':
          return TaskSpecPlacement.fromJson(value);
        case 'TaskSpecPlacementPreferences':
          return TaskSpecPlacementPreferences.fromJson(value);
        case 'TaskSpecPlacementSpread':
          return TaskSpecPlacementSpread.fromJson(value);
        case 'TaskSpecPluginSpec':
          return TaskSpecPluginSpec.fromJson(value);
        case 'TaskSpecResources':
          return TaskSpecResources.fromJson(value);
        case 'TaskSpecRestartPolicy':
          return TaskSpecRestartPolicy.fromJson(value);
        case 'TaskState':
          return new TaskStateTypeTransformer().decode(value);
        case 'TaskStatus':
          return TaskStatus.fromJson(value);
        case 'TaskStatusContainerStatus':
          return TaskStatusContainerStatus.fromJson(value);
        case 'ThrottleDevice':
          return ThrottleDevice.fromJson(value);
        case 'UnlockKeyResponse':
          return UnlockKeyResponse.fromJson(value);
        case 'Volume':
          return Volume.fromJson(value);
        case 'VolumeConfig':
          return VolumeConfig.fromJson(value);
        case 'VolumeListResponse':
          return VolumeListResponse.fromJson(value);
        case 'VolumePruneResponse':
          return VolumePruneResponse.fromJson(value);
        case 'VolumeUsageData':
          return VolumeUsageData.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String nullableContentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    if (nullableContentType != null) {
      final contentType = nullableContentType;
      headerParams['Content-Type'] = contentType;
    }

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = nullableContentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      final nullableHeaderParams = (headerParams.isEmpty)? null: headerParams;
      switch(method) {
        case "POST":
          return client.post(url, headers: nullableHeaderParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: nullableHeaderParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: nullableHeaderParams);
        case "PATCH":
          return client.patch(url, headers: nullableHeaderParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: nullableHeaderParams);
        default:
          return client.get(url, headers: nullableHeaderParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
