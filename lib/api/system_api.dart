part of docker_client.api;

class SystemApi {
  final ApiClient apiClient;

  SystemApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Check auth configuration with HTTP info returned
  ///
  /// Validate credentials for a registry and, if available, get an identity token for accessing the registry without password.
  Future<Response> systemAuthWithHttpInfo({AuthConfig authConfig}) async {
    Object postBody = authConfig;

    // verify required params are set

    // create path and map variables
    String path = "/auth".replaceAll("{format}", "json");

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

  /// Check auth configuration
  ///
  /// Validate credentials for a registry and, if available, get an identity token for accessing the registry without password.
  Future<SystemAuthResponse> systemAuth({AuthConfig authConfig}) async {
    Response response = await systemAuthWithHttpInfo(authConfig: authConfig);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'SystemAuthResponse')
          as SystemAuthResponse;
    } else {
      return null;
    }
  }

  /// Get data usage information with HTTP info returned
  ///
  ///
  Future<Response> systemDataUsageWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/system/df".replaceAll("{format}", "json");

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

  /// Get data usage information
  ///
  ///
  Future<SystemDataUsageResponse> systemDataUsage() async {
    Response response = await systemDataUsageWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'SystemDataUsageResponse')
          as SystemDataUsageResponse;
    } else {
      return null;
    }
  }

  /// Monitor events with HTTP info returned
  ///
  /// Stream real-time events from the server.  Various objects within Docker report events when something happens to them.  Containers report these events: &#x60;attach&#x60;, &#x60;commit&#x60;, &#x60;copy&#x60;, &#x60;create&#x60;, &#x60;destroy&#x60;, &#x60;detach&#x60;, &#x60;die&#x60;, &#x60;exec_create&#x60;, &#x60;exec_detach&#x60;, &#x60;exec_start&#x60;, &#x60;exec_die&#x60;, &#x60;export&#x60;, &#x60;health_status&#x60;, &#x60;kill&#x60;, &#x60;oom&#x60;, &#x60;pause&#x60;, &#x60;rename&#x60;, &#x60;resize&#x60;, &#x60;restart&#x60;, &#x60;start&#x60;, &#x60;stop&#x60;, &#x60;top&#x60;, &#x60;unpause&#x60;, and &#x60;update&#x60;  Images report these events: &#x60;delete&#x60;, &#x60;import&#x60;, &#x60;load&#x60;, &#x60;pull&#x60;, &#x60;push&#x60;, &#x60;save&#x60;, &#x60;tag&#x60;, and &#x60;untag&#x60;  Volumes report these events: &#x60;create&#x60;, &#x60;mount&#x60;, &#x60;unmount&#x60;, and &#x60;destroy&#x60;  Networks report these events: &#x60;create&#x60;, &#x60;connect&#x60;, &#x60;disconnect&#x60;, &#x60;destroy&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  The Docker daemon reports these events: &#x60;reload&#x60;  Services report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  Nodes report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  Secrets report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  Configs report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;
  Future<Response> systemEventsWithHttpInfo(
      {String since, String until, String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/events".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (since != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if (until != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "until", until));
    }
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

  /// Monitor events
  ///
  /// Stream real-time events from the server.  Various objects within Docker report events when something happens to them.  Containers report these events: &#x60;attach&#x60;, &#x60;commit&#x60;, &#x60;copy&#x60;, &#x60;create&#x60;, &#x60;destroy&#x60;, &#x60;detach&#x60;, &#x60;die&#x60;, &#x60;exec_create&#x60;, &#x60;exec_detach&#x60;, &#x60;exec_start&#x60;, &#x60;exec_die&#x60;, &#x60;export&#x60;, &#x60;health_status&#x60;, &#x60;kill&#x60;, &#x60;oom&#x60;, &#x60;pause&#x60;, &#x60;rename&#x60;, &#x60;resize&#x60;, &#x60;restart&#x60;, &#x60;start&#x60;, &#x60;stop&#x60;, &#x60;top&#x60;, &#x60;unpause&#x60;, and &#x60;update&#x60;  Images report these events: &#x60;delete&#x60;, &#x60;import&#x60;, &#x60;load&#x60;, &#x60;pull&#x60;, &#x60;push&#x60;, &#x60;save&#x60;, &#x60;tag&#x60;, and &#x60;untag&#x60;  Volumes report these events: &#x60;create&#x60;, &#x60;mount&#x60;, &#x60;unmount&#x60;, and &#x60;destroy&#x60;  Networks report these events: &#x60;create&#x60;, &#x60;connect&#x60;, &#x60;disconnect&#x60;, &#x60;destroy&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  The Docker daemon reports these events: &#x60;reload&#x60;  Services report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  Nodes report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  Secrets report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;  Configs report these events: &#x60;create&#x60;, &#x60;update&#x60;, and &#x60;remove&#x60;
  Future<SystemEventsResponse> systemEvents(
      {String since, String until, String filters}) async {
    Response response = await systemEventsWithHttpInfo(
        since: since, until: until, filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'SystemEventsResponse')
          as SystemEventsResponse;
    } else {
      return null;
    }
  }

  /// Get system information with HTTP info returned
  ///
  ///
  Future<Response> systemInfoWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/info".replaceAll("{format}", "json");

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

  /// Get system information
  ///
  ///
  Future<SystemInfo> systemInfo() async {
    Response response = await systemInfoWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SystemInfo')
          as SystemInfo;
    } else {
      return null;
    }
  }

  /// Ping with HTTP info returned
  ///
  /// This is a dummy endpoint you can use to test if the server is accessible.
  Future<Response> systemPingWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/_ping".replaceAll("{format}", "json");

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

  /// Ping
  ///
  /// This is a dummy endpoint you can use to test if the server is accessible.
  Future<String> systemPing() async {
    Response response = await systemPingWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String')
          as String;
    } else {
      return null;
    }
  }

  /// Ping with HTTP info returned
  ///
  /// This is a dummy endpoint you can use to test if the server is accessible.
  Future<Response> systemPingHeadWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/_ping".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'HEAD', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Ping
  ///
  /// This is a dummy endpoint you can use to test if the server is accessible.
  Future<String> systemPingHead() async {
    Response response = await systemPingHeadWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String')
          as String;
    } else {
      return null;
    }
  }

  /// Get version with HTTP info returned
  ///
  /// Returns the version of Docker that is running and various information about the system that Docker is running on.
  Future<Response> systemVersionWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/version".replaceAll("{format}", "json");

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

  /// Get version
  ///
  /// Returns the version of Docker that is running and various information about the system that Docker is running on.
  Future<SystemVersion> systemVersion() async {
    Response response = await systemVersionWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SystemVersion')
          as SystemVersion;
    } else {
      return null;
    }
  }
}
