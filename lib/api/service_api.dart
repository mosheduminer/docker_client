part of docker_client.api;

class ServiceApi {
  final ApiClient apiClient;

  ServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a service with HTTP info returned
  ///
  ///
  Future<Response> serviceCreateWithHttpInfo(ServiceSpec body,
      {String xRegistryAuth}) async {
    Object postBody = body;

    // verify required params are set
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/services/create".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Registry-Auth"] = xRegistryAuth;

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

  /// Create a service
  ///
  ///
  Future<ServiceCreateResponse> serviceCreate(ServiceSpec body,
      {String xRegistryAuth}) async {
    Response response =
        await serviceCreateWithHttpInfo(body, xRegistryAuth: xRegistryAuth);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ServiceCreateResponse')
          as ServiceCreateResponse;
    } else {
      return null;
    }
  }

  /// Delete a service with HTTP info returned
  ///
  ///
  Future<Response> serviceDeleteWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/services/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Delete a service
  ///
  ///
  Future<void> serviceDelete(String id) async {
    Response response = await serviceDeleteWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Inspect a service with HTTP info returned
  ///
  ///
  Future<Response> serviceInspectWithHttpInfo(String id,
      {bool insertDefaults}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/services/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (insertDefaults != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "insertDefaults", insertDefaults));
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

  /// Inspect a service
  ///
  ///
  Future<Service> serviceInspect(String id, {bool insertDefaults}) async {
    Response response =
        await serviceInspectWithHttpInfo(id, insertDefaults: insertDefaults);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Service')
          as Service;
    } else {
      return null;
    }
  }

  /// List services with HTTP info returned
  ///
  ///
  Future<Response> serviceListWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/services".replaceAll("{format}", "json");

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

  /// List services
  ///
  ///
  Future<List<Service>> serviceList({String filters}) async {
    Response response = await serviceListWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Service>')
              as List)
          .map((item) => item as Service)
          .toList();
    } else {
      return null;
    }
  }

  /// Get service logs with HTTP info returned
  ///
  /// Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a service. See also [&#x60;/containers/{id}/logs&#x60;](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the &#x60;local&#x60;, &#x60;json-file&#x60; or &#x60;journald&#x60; logging drivers.
  Future<Response> serviceLogsWithHttpInfo(String id,
      {bool details,
      bool follow,
      bool stdout,
      bool stderr,
      int since,
      bool timestamps,
      String tail}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/services/{id}/logs"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (details != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "details", details));
    }
    if (follow != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "follow", follow));
    }
    if (stdout != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stdout", stdout));
    }
    if (stderr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stderr", stderr));
    }
    if (since != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if (timestamps != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "timestamps", timestamps));
    }
    if (tail != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "tail", tail));
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

  /// Get service logs
  ///
  /// Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a service. See also [&#x60;/containers/{id}/logs&#x60;](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the &#x60;local&#x60;, &#x60;json-file&#x60; or &#x60;journald&#x60; logging drivers.
  Future<MultipartFile> serviceLogs(String id,
      {bool details,
      bool follow,
      bool stdout,
      bool stderr,
      int since,
      bool timestamps,
      String tail}) async {
    Response response = await serviceLogsWithHttpInfo(id,
        details: details,
        follow: follow,
        stdout: stdout,
        stderr: stderr,
        since: since,
        timestamps: timestamps,
        tail: tail);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Update a service with HTTP info returned
  ///
  ///
  Future<Response> serviceUpdateWithHttpInfo(
      String id, int version, ServiceSpec body,
      {String registryAuthFrom, String rollback, String xRegistryAuth}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (version == null) {
      throw ApiException(400, "Missing required param: version");
    }
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/services/{id}/update"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "version", version));
    if (registryAuthFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "registryAuthFrom", registryAuthFrom));
    }
    if (rollback != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "rollback", rollback));
    }
    headerParams["X-Registry-Auth"] = xRegistryAuth;

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

  /// Update a service
  ///
  ///
  Future<ServiceUpdateResponse> serviceUpdate(
      String id, int version, ServiceSpec body,
      {String registryAuthFrom, String rollback, String xRegistryAuth}) async {
    Response response = await serviceUpdateWithHttpInfo(id, version, body,
        registryAuthFrom: registryAuthFrom,
        rollback: rollback,
        xRegistryAuth: xRegistryAuth);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ServiceUpdateResponse')
          as ServiceUpdateResponse;
    } else {
      return null;
    }
  }
}
