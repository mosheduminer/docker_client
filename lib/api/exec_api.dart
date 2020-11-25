part of docker_client.api;

class ExecApi {
  final ApiClient apiClient;

  ExecApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an exec instance with HTTP info returned
  ///
  /// Run a command inside a running container.
  Future<Response> containerExecWithHttpInfo(
      String id, InlineObject execConfig) async {
    Object postBody = execConfig;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (execConfig == null) {
      throw ApiException(400, "Missing required param: execConfig");
    }

    // create path and map variables
    String path = "/containers/{id}/exec"
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

  /// Create an exec instance
  ///
  /// Run a command inside a running container.
  Future<IdResponse> containerExec(String id, InlineObject execConfig) async {
    Response response = await containerExecWithHttpInfo(id, execConfig);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'IdResponse')
          as IdResponse;
    } else {
      return null;
    }
  }

  /// Inspect an exec instance with HTTP info returned
  ///
  /// Return low-level information about an exec instance.
  Future<Response> execInspectWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/exec/{id}/json"
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

  /// Inspect an exec instance
  ///
  /// Return low-level information about an exec instance.
  Future<ExecInspectResponse> execInspect(String id) async {
    Response response = await execInspectWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ExecInspectResponse')
          as ExecInspectResponse;
    } else {
      return null;
    }
  }

  /// Resize an exec instance with HTTP info returned
  ///
  /// Resize the TTY session used by an exec instance. This endpoint only works if &#x60;tty&#x60; was specified as part of creating and starting the exec instance.
  Future<Response> execResizeWithHttpInfo(String id, {int h, int w}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/exec/{id}/resize"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (h != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "h", h));
    }
    if (w != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "w", w));
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

  /// Resize an exec instance
  ///
  /// Resize the TTY session used by an exec instance. This endpoint only works if &#x60;tty&#x60; was specified as part of creating and starting the exec instance.
  Future<void> execResize(String id, {int h, int w}) async {
    Response response = await execResizeWithHttpInfo(id, h: h, w: w);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Start an exec instance with HTTP info returned
  ///
  /// Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command.
  Future<Response> execStartWithHttpInfo(String id,
      {InlineObject1 execStartConfig}) async {
    Object postBody = execStartConfig;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/exec/{id}/start"
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

  /// Start an exec instance
  ///
  /// Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command.
  Future<void> execStart(String id, {InlineObject1 execStartConfig}) async {
    Response response =
        await execStartWithHttpInfo(id, execStartConfig: execStartConfig);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
