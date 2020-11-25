part of docker_client.api;

class SessionApi {
  final ApiClient apiClient;

  SessionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Initialize interactive session with HTTP info returned
  ///
  /// Start a new interactive session with a server. Session allows server to call back to the client for advanced capabilities.  ### Hijacking  This endpoint hijacks the HTTP connection to HTTP2 transport that allows the client to expose gPRC services on that connection.  For example, the client sends this request to upgrade the connection:  &#x60;&#x60;&#x60; POST /session HTTP/1.1 Upgrade: h2c Connection: Upgrade &#x60;&#x60;&#x60;  The Docker daemon responds with a &#x60;101 UPGRADED&#x60; response follow with the raw stream:  &#x60;&#x60;&#x60; HTTP/1.1 101 UPGRADED Connection: Upgrade Upgrade: h2c &#x60;&#x60;&#x60;
  Future<Response> sessionWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/session".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Initialize interactive session
  ///
  /// Start a new interactive session with a server. Session allows server to call back to the client for advanced capabilities.  ### Hijacking  This endpoint hijacks the HTTP connection to HTTP2 transport that allows the client to expose gPRC services on that connection.  For example, the client sends this request to upgrade the connection:  &#x60;&#x60;&#x60; POST /session HTTP/1.1 Upgrade: h2c Connection: Upgrade &#x60;&#x60;&#x60;  The Docker daemon responds with a &#x60;101 UPGRADED&#x60; response follow with the raw stream:  &#x60;&#x60;&#x60; HTTP/1.1 101 UPGRADED Connection: Upgrade Upgrade: h2c &#x60;&#x60;&#x60;
  Future<void> session() async {
    Response response = await sessionWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
