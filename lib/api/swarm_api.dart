part of docker_client.api;

class SwarmApi {
  final ApiClient apiClient;

  SwarmApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Initialize a new swarm with HTTP info returned
  ///
  ///
  Future<Response> swarmInitWithHttpInfo(InlineObject5 body) async {
    Object postBody = body;

    // verify required params are set
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/swarm/init".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json", "text/plain"];

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

  /// Initialize a new swarm
  ///
  ///
  Future<String> swarmInit(InlineObject5 body) async {
    Response response = await swarmInitWithHttpInfo(body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String')
          as String;
    } else {
      return null;
    }
  }

  /// Inspect swarm with HTTP info returned
  ///
  ///
  Future<Response> swarmInspectWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/swarm".replaceAll("{format}", "json");

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

  /// Inspect swarm
  ///
  ///
  Future<Swarm> swarmInspect() async {
    Response response = await swarmInspectWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Swarm')
          as Swarm;
    } else {
      return null;
    }
  }

  /// Join an existing swarm with HTTP info returned
  ///
  ///
  Future<Response> swarmJoinWithHttpInfo(InlineObject6 body) async {
    Object postBody = body;

    // verify required params are set
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/swarm/join".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json", "text/plain"];

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

  /// Join an existing swarm
  ///
  ///
  Future<void> swarmJoin(InlineObject6 body) async {
    Response response = await swarmJoinWithHttpInfo(body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Leave a swarm with HTTP info returned
  ///
  ///
  Future<Response> swarmLeaveWithHttpInfo({bool force}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/swarm/leave".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Leave a swarm
  ///
  ///
  Future<void> swarmLeave({bool force}) async {
    Response response = await swarmLeaveWithHttpInfo(force: force);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Unlock a locked manager with HTTP info returned
  ///
  ///
  Future<Response> swarmUnlockWithHttpInfo(InlineObject7 body) async {
    Object postBody = body;

    // verify required params are set
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/swarm/unlock".replaceAll("{format}", "json");

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

  /// Unlock a locked manager
  ///
  ///
  Future<void> swarmUnlock(InlineObject7 body) async {
    Response response = await swarmUnlockWithHttpInfo(body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Get the unlock key with HTTP info returned
  ///
  ///
  Future<Response> swarmUnlockkeyWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/swarm/unlockkey".replaceAll("{format}", "json");

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

  /// Get the unlock key
  ///
  ///
  Future<UnlockKeyResponse> swarmUnlockkey() async {
    Response response = await swarmUnlockkeyWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'UnlockKeyResponse') as UnlockKeyResponse;
    } else {
      return null;
    }
  }

  /// Update a swarm with HTTP info returned
  ///
  ///
  Future<Response> swarmUpdateWithHttpInfo(int version, SwarmSpec body,
      {bool rotateWorkerToken,
      bool rotateManagerToken,
      bool rotateManagerUnlockKey}) async {
    Object postBody = body;

    // verify required params are set
    if (version == null) {
      throw ApiException(400, "Missing required param: version");
    }
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/swarm/update".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "version", version));
    if (rotateWorkerToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "rotateWorkerToken", rotateWorkerToken));
    }
    if (rotateManagerToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "rotateManagerToken", rotateManagerToken));
    }
    if (rotateManagerUnlockKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "rotateManagerUnlockKey", rotateManagerUnlockKey));
    }

    List<String> contentTypes = ["application/json", "text/plain"];

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

  /// Update a swarm
  ///
  ///
  Future<void> swarmUpdate(int version, SwarmSpec body,
      {bool rotateWorkerToken,
      bool rotateManagerToken,
      bool rotateManagerUnlockKey}) async {
    Response response = await swarmUpdateWithHttpInfo(version, body,
        rotateWorkerToken: rotateWorkerToken,
        rotateManagerToken: rotateManagerToken,
        rotateManagerUnlockKey: rotateManagerUnlockKey);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
