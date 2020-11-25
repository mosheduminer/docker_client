part of docker_client.api;

class NetworkApi {
  final ApiClient apiClient;

  NetworkApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Connect a container to a network with HTTP info returned
  ///
  ///
  Future<Response> networkConnectWithHttpInfo(
      String id, InlineObject3 container) async {
    Object postBody = container;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (container == null) {
      throw ApiException(400, "Missing required param: container");
    }

    // create path and map variables
    String path = "/networks/{id}/connect"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

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

  /// Connect a container to a network
  ///
  ///
  Future<void> networkConnect(String id, InlineObject3 container) async {
    Response response = await networkConnectWithHttpInfo(id, container);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Create a network with HTTP info returned
  ///
  ///
  Future<Response> networkCreateWithHttpInfo(
      InlineObject2 networkConfig) async {
    Object postBody = networkConfig;

    // verify required params are set
    if (networkConfig == null) {
      throw ApiException(400, "Missing required param: networkConfig");
    }

    // create path and map variables
    String path = "/networks/create".replaceAll("{format}", "json");

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

  /// Create a network
  ///
  ///
  Future<NetworkCreateResponse> networkCreate(
      InlineObject2 networkConfig) async {
    Response response = await networkCreateWithHttpInfo(networkConfig);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'NetworkCreateResponse')
          as NetworkCreateResponse;
    } else {
      return null;
    }
  }

  /// Remove a network with HTTP info returned
  ///
  ///
  Future<Response> networkDeleteWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/networks/{id}"
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

  /// Remove a network
  ///
  ///
  Future<void> networkDelete(String id) async {
    Response response = await networkDeleteWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Disconnect a container from a network with HTTP info returned
  ///
  ///
  Future<Response> networkDisconnectWithHttpInfo(
      String id, InlineObject4 container) async {
    Object postBody = container;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (container == null) {
      throw ApiException(400, "Missing required param: container");
    }

    // create path and map variables
    String path = "/networks/{id}/disconnect"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

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

  /// Disconnect a container from a network
  ///
  ///
  Future<void> networkDisconnect(String id, InlineObject4 container) async {
    Response response = await networkDisconnectWithHttpInfo(id, container);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Inspect a network with HTTP info returned
  ///
  ///
  Future<Response> networkInspectWithHttpInfo(String id,
      {bool verbose, String scope}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/networks/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (verbose != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "verbose", verbose));
    }
    if (scope != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "scope", scope));
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

  /// Inspect a network
  ///
  ///
  Future<Network> networkInspect(String id,
      {bool verbose, String scope}) async {
    Response response =
        await networkInspectWithHttpInfo(id, verbose: verbose, scope: scope);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Network')
          as Network;
    } else {
      return null;
    }
  }

  /// List networks with HTTP info returned
  ///
  /// Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up.
  Future<Response> networkListWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/networks".replaceAll("{format}", "json");

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

  /// List networks
  ///
  /// Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up.
  Future<List<Network>> networkList({String filters}) async {
    Response response = await networkListWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Network>')
              as List)
          .map((item) => item as Network)
          .toList();
    } else {
      return null;
    }
  }

  /// Delete unused networks with HTTP info returned
  ///
  ///
  Future<Response> networkPruneWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/networks/prune".replaceAll("{format}", "json");

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

  /// Delete unused networks
  ///
  ///
  Future<NetworkPruneResponse> networkPrune({String filters}) async {
    Response response = await networkPruneWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'NetworkPruneResponse')
          as NetworkPruneResponse;
    } else {
      return null;
    }
  }
}
