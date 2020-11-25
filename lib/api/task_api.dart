part of docker_client.api;

class TaskApi {
  final ApiClient apiClient;

  TaskApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Inspect a task with HTTP info returned
  ///
  ///
  Future<Response> taskInspectWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/tasks/{id}"
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

  /// Inspect a task
  ///
  ///
  Future<Task> taskInspect(String id) async {
    Response response = await taskInspectWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Task') as Task;
    } else {
      return null;
    }
  }

  /// List tasks with HTTP info returned
  ///
  ///
  Future<Response> taskListWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/tasks".replaceAll("{format}", "json");

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

  /// List tasks
  ///
  ///
  Future<List<Task>> taskList({String filters}) async {
    Response response = await taskListWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Task>')
              as List)
          .map((item) => item as Task)
          .toList();
    } else {
      return null;
    }
  }

  /// Get task logs with HTTP info returned
  ///
  /// Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a task. See also [&#x60;/containers/{id}/logs&#x60;](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the &#x60;local&#x60;, &#x60;json-file&#x60; or &#x60;journald&#x60; logging drivers.
  Future<Response> taskLogsWithHttpInfo(String id,
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
    String path = "/tasks/{id}/logs"
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

  /// Get task logs
  ///
  /// Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a task. See also [&#x60;/containers/{id}/logs&#x60;](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the &#x60;local&#x60;, &#x60;json-file&#x60; or &#x60;journald&#x60; logging drivers.
  Future<MultipartFile> taskLogs(String id,
      {bool details,
      bool follow,
      bool stdout,
      bool stderr,
      int since,
      bool timestamps,
      String tail}) async {
    Response response = await taskLogsWithHttpInfo(id,
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
}
