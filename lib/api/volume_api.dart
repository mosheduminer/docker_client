part of docker_client.api;

class VolumeApi {
  final ApiClient apiClient;

  VolumeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a volume with HTTP info returned
  ///
  ///
  Future<Response> volumeCreateWithHttpInfo(VolumeConfig volumeConfig) async {
    Object postBody = volumeConfig;

    // verify required params are set
    if (volumeConfig == null) {
      throw ApiException(400, "Missing required param: volumeConfig");
    }

    // create path and map variables
    String path = "/volumes/create".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Create a volume
  ///
  ///
  Future<Volume> volumeCreate(VolumeConfig volumeConfig) async {
    Response response = await volumeCreateWithHttpInfo(volumeConfig);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Volume')
          as Volume;
    } else {
      return null;
    }
  }

  /// Remove a volume with HTTP info returned
  ///
  /// Instruct the driver to remove the volume.
  Future<Response> volumeDeleteWithHttpInfo(String name, {bool force}) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/volumes/{name}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (force != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "force", force));
    }

    List<String> contentTypes = [];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Remove a volume
  ///
  /// Instruct the driver to remove the volume.
  Future<void> volumeDelete(String name, {bool force}) async {
    Response response = await volumeDeleteWithHttpInfo(name, force: force);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Inspect a volume with HTTP info returned
  ///
  ///
  Future<Response> volumeInspectWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/volumes/{name}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Inspect a volume
  ///
  ///
  Future<Volume> volumeInspect(String name) async {
    Response response = await volumeInspectWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Volume')
          as Volume;
    } else {
      return null;
    }
  }

  /// List volumes with HTTP info returned
  ///
  ///
  Future<Response> volumeListWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/volumes".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (filters != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "filters", filters));
    }

    List<String> contentTypes = [];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// List volumes
  ///
  ///
  Future<VolumeListResponse> volumeList({String filters}) async {
    Response response = await volumeListWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'VolumeListResponse')
          as VolumeListResponse;
    } else {
      return null;
    }
  }

  /// Delete unused volumes with HTTP info returned
  ///
  ///
  Future<Response> volumePruneWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/volumes/prune".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (filters != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "filters", filters));
    }

    List<String> contentTypes = [];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Delete unused volumes
  ///
  ///
  Future<VolumePruneResponse> volumePrune({String filters}) async {
    Response response = await volumePruneWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'VolumePruneResponse')
          as VolumePruneResponse;
    } else {
      return null;
    }
  }
}
