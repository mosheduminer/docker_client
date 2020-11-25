part of docker_client.api;

class ConfigApi {
  final ApiClient apiClient;

  ConfigApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a config with HTTP info returned
  ///
  ///
  Future<Response> configCreateWithHttpInfo({ConfigSpec body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/configs/create".replaceAll("{format}", "json");

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

  /// Create a config
  ///
  ///
  Future<IdResponse> configCreate({ConfigSpec body}) async {
    Response response = await configCreateWithHttpInfo(body: body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'IdResponse')
          as IdResponse;
    } else {
      return null;
    }
  }

  /// Delete a config with HTTP info returned
  ///
  ///
  Future<Response> configDeleteWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/configs/{id}"
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

  /// Delete a config
  ///
  ///
  Future<void> configDelete(String id) async {
    Response response = await configDeleteWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Inspect a config with HTTP info returned
  ///
  ///
  Future<Response> configInspectWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/configs/{id}"
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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Inspect a config
  ///
  ///
  Future<Config> configInspect(String id) async {
    Response response = await configInspectWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Config')
          as Config;
    } else {
      return null;
    }
  }

  /// List configs with HTTP info returned
  ///
  ///
  Future<Response> configListWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/configs".replaceAll("{format}", "json");

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

  /// List configs
  ///
  ///
  Future<List<Config>> configList({String filters}) async {
    Response response = await configListWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Config>')
              as List)
          .map((item) => item as Config)
          .toList();
    } else {
      return null;
    }
  }

  /// Update a Config with HTTP info returned
  ///
  ///
  Future<Response> configUpdateWithHttpInfo(String id, int version,
      {ConfigSpec body}) async {
    Object postBody = body;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (version == null) {
      throw ApiException(400, "Missing required param: version");
    }

    // create path and map variables
    String path = "/configs/{id}/update"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "version", version));

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

  /// Update a Config
  ///
  ///
  Future<void> configUpdate(String id, int version, {ConfigSpec body}) async {
    Response response = await configUpdateWithHttpInfo(id, version, body: body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
