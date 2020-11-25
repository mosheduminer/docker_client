part of docker_client.api;

class ContainerApi {
  final ApiClient apiClient;

  ContainerApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get an archive of a filesystem resource in a container with HTTP info returned
  ///
  /// Get a tar archive of a resource in the filesystem of container id.
  Future<Response> containerArchiveWithHttpInfo(String id, String path) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (path == null) {
      throw ApiException(400, "Missing required param: path");
    }

    // create path and map variables
    path = "/containers/{id}/archive"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));

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

  /// Get an archive of a filesystem resource in a container
  ///
  /// Get a tar archive of a resource in the filesystem of container id.
  Future<void> containerArchive(String id, String path) async {
    Response response = await containerArchiveWithHttpInfo(id, path);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Get information about files in a container with HTTP info returned
  ///
  /// A response header &#x60;X-Docker-Container-Path-Stat&#x60; is returned, containing a base64 - encoded JSON object with some filesystem header information about the path.
  Future<Response> containerArchiveInfoWithHttpInfo(String id, String path) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (path == null) {
      throw ApiException(400, "Missing required param: path");
    }

    // create path and map variables
    path = "/containers/{id}/archive"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));

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

  /// Get information about files in a container
  ///
  /// A response header &#x60;X-Docker-Container-Path-Stat&#x60; is returned, containing a base64 - encoded JSON object with some filesystem header information about the path.
  Future<void> containerArchiveInfo(String id, String path) async {
    Response response = await containerArchiveInfoWithHttpInfo(id, path);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Attach to a container with HTTP info returned
  ///
  /// Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the &#x60;stream&#x60; or &#x60;logs&#x60; parameter must be &#x60;true&#x60; for this endpoint to do anything.  See the [documentation for the &#x60;docker attach&#x60; command](https://docs.docker.com/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport &#x60;stdin&#x60;, &#x60;stdout&#x60;, and &#x60;stderr&#x60; on the same socket.  This is the response from the daemon for an attach request:  &#x60;&#x60;&#x60; HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] &#x60;&#x60;&#x60;  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  &#x60;&#x60;&#x60; POST /containers/16253994b7c4/attach?stream&#x3D;1&amp;stdout&#x3D;1 HTTP/1.1 Upgrade: tcp Connection: Upgrade &#x60;&#x60;&#x60;  The Docker daemon will respond with a &#x60;101 UPGRADED&#x60; response, and will similarly follow with the raw stream:  &#x60;&#x60;&#x60; HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] &#x60;&#x60;&#x60;  ### Stream format  When the TTY setting is disabled in [&#x60;POST /containers/create&#x60;](#operation/ContainerCreate), the stream over the hijacked connected is multiplexed to separate out &#x60;stdout&#x60; and &#x60;stderr&#x60;. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (&#x60;stdout&#x60; or &#x60;stderr&#x60;). It also contains the size of the associated frame encoded in the last four bytes (&#x60;uint32&#x60;).  It is encoded on the first eight bytes like this:  &#x60;&#x60;&#x60;go header :&#x3D; [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} &#x60;&#x60;&#x60;  &#x60;STREAM_TYPE&#x60; can be:  - 0: &#x60;stdin&#x60; (is written on &#x60;stdout&#x60;) - 1: &#x60;stdout&#x60; - 2: &#x60;stderr&#x60;  &#x60;SIZE1, SIZE2, SIZE3, SIZE4&#x60; are the four bytes of the &#x60;uint32&#x60; size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of &#x60;STREAM_TYPE&#x60;.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose &#x60;stdout&#x60; or &#x60;stderr&#x60; depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [&#x60;POST /containers/create&#x60;](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client&#39;s &#x60;stdin&#x60;.
  Future<Response> containerAttachWithHttpInfo(String id,
      {String detachKeys,
      bool logs,
      bool stream,
      bool stdin,
      bool stdout,
      bool stderr}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/attach"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (detachKeys != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "detachKeys", detachKeys));
    }
    if (logs != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "logs", logs));
    }
    if (stream != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stream", stream));
    }
    if (stdin != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stdin", stdin));
    }
    if (stdout != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stdout", stdout));
    }
    if (stderr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stderr", stderr));
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

  /// Attach to a container
  ///
  /// Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the &#x60;stream&#x60; or &#x60;logs&#x60; parameter must be &#x60;true&#x60; for this endpoint to do anything.  See the [documentation for the &#x60;docker attach&#x60; command](https://docs.docker.com/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport &#x60;stdin&#x60;, &#x60;stdout&#x60;, and &#x60;stderr&#x60; on the same socket.  This is the response from the daemon for an attach request:  &#x60;&#x60;&#x60; HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] &#x60;&#x60;&#x60;  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  &#x60;&#x60;&#x60; POST /containers/16253994b7c4/attach?stream&#x3D;1&amp;stdout&#x3D;1 HTTP/1.1 Upgrade: tcp Connection: Upgrade &#x60;&#x60;&#x60;  The Docker daemon will respond with a &#x60;101 UPGRADED&#x60; response, and will similarly follow with the raw stream:  &#x60;&#x60;&#x60; HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] &#x60;&#x60;&#x60;  ### Stream format  When the TTY setting is disabled in [&#x60;POST /containers/create&#x60;](#operation/ContainerCreate), the stream over the hijacked connected is multiplexed to separate out &#x60;stdout&#x60; and &#x60;stderr&#x60;. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (&#x60;stdout&#x60; or &#x60;stderr&#x60;). It also contains the size of the associated frame encoded in the last four bytes (&#x60;uint32&#x60;).  It is encoded on the first eight bytes like this:  &#x60;&#x60;&#x60;go header :&#x3D; [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} &#x60;&#x60;&#x60;  &#x60;STREAM_TYPE&#x60; can be:  - 0: &#x60;stdin&#x60; (is written on &#x60;stdout&#x60;) - 1: &#x60;stdout&#x60; - 2: &#x60;stderr&#x60;  &#x60;SIZE1, SIZE2, SIZE3, SIZE4&#x60; are the four bytes of the &#x60;uint32&#x60; size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of &#x60;STREAM_TYPE&#x60;.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose &#x60;stdout&#x60; or &#x60;stderr&#x60; depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [&#x60;POST /containers/create&#x60;](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client&#39;s &#x60;stdin&#x60;.
  Future<void> containerAttach(String id,
      {String detachKeys,
      bool logs,
      bool stream,
      bool stdin,
      bool stdout,
      bool stderr}) async {
    Response response = await containerAttachWithHttpInfo(id,
        detachKeys: detachKeys,
        logs: logs,
        stream: stream,
        stdin: stdin,
        stdout: stdout,
        stderr: stderr);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Attach to a container via a websocket with HTTP info returned
  ///
  ///
  Future<Response> containerAttachWebsocketWithHttpInfo(String id,
      {String detachKeys,
      bool logs,
      bool stream,
      bool stdin,
      bool stdout,
      bool stderr}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/attach/ws"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (detachKeys != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "detachKeys", detachKeys));
    }
    if (logs != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "logs", logs));
    }
    if (stream != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stream", stream));
    }
    if (stdin != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stdin", stdin));
    }
    if (stdout != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stdout", stdout));
    }
    if (stderr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stderr", stderr));
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

  /// Attach to a container via a websocket
  ///
  ///
  Future<void> containerAttachWebsocket(String id,
      {String detachKeys,
      bool logs,
      bool stream,
      bool stdin,
      bool stdout,
      bool stderr}) async {
    Response response = await containerAttachWebsocketWithHttpInfo(id,
        detachKeys: detachKeys,
        logs: logs,
        stream: stream,
        stdin: stdin,
        stdout: stdout,
        stderr: stderr);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Get changes on a container’s filesystem with HTTP info returned
  ///
  /// Returns which files in a container&#39;s filesystem have been added, deleted, or modified. The &#x60;Kind&#x60; of modification can be one of:  - &#x60;0&#x60;: Modified - &#x60;1&#x60;: Added - &#x60;2&#x60;: Deleted
  Future<Response> containerChangesWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/changes"
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

  /// Get changes on a container’s filesystem
  ///
  /// Returns which files in a container&#39;s filesystem have been added, deleted, or modified. The &#x60;Kind&#x60; of modification can be one of:  - &#x60;0&#x60;: Modified - &#x60;1&#x60;: Added - &#x60;2&#x60;: Deleted
  Future<List<ContainerChangeResponseItem>> containerChanges(String id) async {
    Response response = await containerChangesWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response),
              'List<ContainerChangeResponseItem>') as List)
          .map((item) => item as ContainerChangeResponseItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Create a container with HTTP info returned
  ///
  ///
  Future<Response> containerCreateWithHttpInfo(ContainerConfig body,
      {String name}) async {
    Object postBody = body;

    // verify required params are set
    if (body == null) {
      throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/containers/create".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (name != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "name", name));
    }

    List<String> contentTypes = [
      "application/json",
      "application/octet-stream"
    ];

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

  /// Create a container
  ///
  ///
  Future<ContainerCreateResponse> containerCreate(ContainerConfig body,
      {String name}) async {
    Response response = await containerCreateWithHttpInfo(body, name: name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ContainerCreateResponse')
          as ContainerCreateResponse;
    } else {
      return null;
    }
  }

  /// Remove a container with HTTP info returned
  ///
  ///
  Future<Response> containerDeleteWithHttpInfo(String id,
      {bool v, bool force, bool link}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (v != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "v", v));
    }
    if (force != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "force", force));
    }
    if (link != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "link", link));
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

  /// Remove a container
  ///
  ///
  Future<void> containerDelete(String id, {bool v, bool force, bool link}) async {
    Response response =
        await containerDeleteWithHttpInfo(id, v: v, force: force, link: link);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Export a container with HTTP info returned
  ///
  /// Export the contents of a container as a tarball.
  Future<Response> containerExportWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/export"
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

  /// Export a container
  ///
  /// Export the contents of a container as a tarball.
  Future<void> containerExport(String id) async {
    Response response = await containerExportWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Inspect a container with HTTP info returned
  ///
  /// Return low-level information about a container.
  Future<Response> containerInspectWithHttpInfo(String id, {bool size}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/json"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (size != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "size", size));
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

  /// Inspect a container
  ///
  /// Return low-level information about a container.
  Future<ContainerInspectResponse> containerInspect(String id,
      {bool size}) async {
    Response response = await containerInspectWithHttpInfo(id, size: size);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ContainerInspectResponse')
          as ContainerInspectResponse;
    } else {
      return null;
    }
  }

  /// Kill a container with HTTP info returned
  ///
  /// Send a POSIX signal to a container, defaulting to killing to the container.
  Future<Response> containerKillWithHttpInfo(String id, {String signal}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/kill"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (signal != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "signal", signal));
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

  /// Kill a container
  ///
  /// Send a POSIX signal to a container, defaulting to killing to the container.
  Future<void> containerKill(String id, {String signal}) async {
    Response response = await containerKillWithHttpInfo(id, signal: signal);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// List containers with HTTP info returned
  ///
  /// Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated .
  Future<Response> containerListWithHttpInfo(
      {bool all, int limit, bool size, String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/containers/json".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (size != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "size", size));
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

  /// List containers
  ///
  /// Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated .
  Future<List<ContainerSummary>> containerList(
      {bool all, int limit, bool size, String filters}) async {
    Response response = await containerListWithHttpInfo(
        all: all, limit: limit, size: size, filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ContainerSummary>')
              as List)
          .map((item) => item as ContainerSummary)
          .toList();
    } else {
      return null;
    }
  }

  /// Get container logs with HTTP info returned
  ///
  /// Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a container.  Note: This endpoint works only for containers with the &#x60;json-file&#x60; or &#x60;journald&#x60; logging driver.
  Future<Response> containerLogsWithHttpInfo(String id,
      {bool follow,
      bool stdout,
      bool stderr,
      int since,
      int until,
      bool timestamps,
      String tail}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/logs"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
    if (until != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "until", until));
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

  /// Get container logs
  ///
  /// Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a container.  Note: This endpoint works only for containers with the &#x60;json-file&#x60; or &#x60;journald&#x60; logging driver.
  Future<MultipartFile> containerLogs(String id,
      {bool follow,
      bool stdout,
      bool stderr,
      int since,
      int until,
      bool timestamps,
      String tail}) async {
    Response response = await containerLogsWithHttpInfo(id,
        follow: follow,
        stdout: stdout,
        stderr: stderr,
        since: since,
        until: until,
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

  /// Pause a container with HTTP info returned
  ///
  /// Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the &#x60;SIGSTOP&#x60; signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed.
  Future<Response> containerPauseWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/pause"
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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Pause a container
  ///
  /// Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the &#x60;SIGSTOP&#x60; signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed.
  Future<void> containerPause(String id) async {
    Response response = await containerPauseWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Delete stopped containers with HTTP info returned
  ///
  ///
  Future<Response> containerPruneWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/containers/prune".replaceAll("{format}", "json");

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

  /// Delete stopped containers
  ///
  ///
  Future<ContainerPruneResponse> containerPrune({String filters}) async {
    Response response = await containerPruneWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ContainerPruneResponse')
          as ContainerPruneResponse;
    } else {
      return null;
    }
  }

  /// Rename a container with HTTP info returned
  ///
  ///
  Future<Response> containerRenameWithHttpInfo(String id, String name) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/containers/{id}/rename"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));

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

  /// Rename a container
  ///
  ///
  Future<void> containerRename(String id, String name) async {
    Response response = await containerRenameWithHttpInfo(id, name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Resize a container TTY with HTTP info returned
  ///
  /// Resize the TTY for a container.
  Future<Response> containerResizeWithHttpInfo(String id, {int h, int w}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/resize"
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

  /// Resize a container TTY
  ///
  /// Resize the TTY for a container.
  Future<void> containerResize(String id, {int h, int w}) async {
    Response response = await containerResizeWithHttpInfo(id, h: h, w: w);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Restart a container with HTTP info returned
  ///
  ///
  Future<Response> containerRestartWithHttpInfo(String id, {int t}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/restart"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (t != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "t", t));
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

  /// Restart a container
  ///
  ///
  Future<void> containerRestart(String id, {int t}) async {
    Response response = await containerRestartWithHttpInfo(id, t: t);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Start a container with HTTP info returned
  ///
  ///
  Future<Response> containerStartWithHttpInfo(String id, {String detachKeys}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/start"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (detachKeys != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "detachKeys", detachKeys));
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

  /// Start a container
  ///
  ///
  Future<void> containerStart(String id, {String detachKeys}) async {
    Response response =
        await containerStartWithHttpInfo(id, detachKeys: detachKeys);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Get container stats based on resource usage with HTTP info returned
  ///
  /// This endpoint returns a live stream of a container’s resource usage statistics.  The &#x60;precpu_stats&#x60; is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the &#x60;cpu_stats&#x60; field.  If either &#x60;precpu_stats.online_cpus&#x60; or &#x60;cpu_stats.online_cpus&#x60; is nil then for compatibility with older daemons the length of the corresponding &#x60;cpu_usage.percpu_usage&#x60; array should be used.  To calculate the values shown by the &#x60;stats&#x60; command of the docker cli tool the following formulas can be used: * used_memory &#x3D; &#x60;memory_stats.usage - memory_stats.stats.cache&#x60; * available_memory &#x3D; &#x60;memory_stats.limit&#x60; * Memory usage % &#x3D; &#x60;(used_memory / available_memory) * 100.0&#x60; * cpu_delta &#x3D; &#x60;cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage&#x60; * system_cpu_delta &#x3D; &#x60;cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage&#x60; * number_cpus &#x3D; &#x60;lenght(cpu_stats.cpu_usage.percpu_usage)&#x60; or &#x60;cpu_stats.online_cpus&#x60; * CPU usage % &#x3D; &#x60;(cpu_delta / system_cpu_delta) * number_cpus * 100.0&#x60;
  Future<Response> containerStatsWithHttpInfo(String id, {bool stream}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/stats"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (stream != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stream", stream));
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

  /// Get container stats based on resource usage
  ///
  /// This endpoint returns a live stream of a container’s resource usage statistics.  The &#x60;precpu_stats&#x60; is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the &#x60;cpu_stats&#x60; field.  If either &#x60;precpu_stats.online_cpus&#x60; or &#x60;cpu_stats.online_cpus&#x60; is nil then for compatibility with older daemons the length of the corresponding &#x60;cpu_usage.percpu_usage&#x60; array should be used.  To calculate the values shown by the &#x60;stats&#x60; command of the docker cli tool the following formulas can be used: * used_memory &#x3D; &#x60;memory_stats.usage - memory_stats.stats.cache&#x60; * available_memory &#x3D; &#x60;memory_stats.limit&#x60; * Memory usage % &#x3D; &#x60;(used_memory / available_memory) * 100.0&#x60; * cpu_delta &#x3D; &#x60;cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage&#x60; * system_cpu_delta &#x3D; &#x60;cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage&#x60; * number_cpus &#x3D; &#x60;lenght(cpu_stats.cpu_usage.percpu_usage)&#x60; or &#x60;cpu_stats.online_cpus&#x60; * CPU usage % &#x3D; &#x60;(cpu_delta / system_cpu_delta) * number_cpus * 100.0&#x60;
  Future<Object> containerStats(String id, {bool stream}) async {
    Response response = await containerStatsWithHttpInfo(id, stream: stream);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object')
          as Object;
    } else {
      return null;
    }
  }

  /// Stop a container with HTTP info returned
  ///
  ///
  Future<Response> containerStopWithHttpInfo(String id, {int t}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/stop"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (t != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "t", t));
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

  /// Stop a container
  ///
  ///
  Future<void> containerStop(String id, {int t}) async {
    Response response = await containerStopWithHttpInfo(id, t: t);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// List processes running inside a container with HTTP info returned
  ///
  /// On Unix systems, this is done by running the &#x60;ps&#x60; command. This endpoint is not supported on Windows.
  Future<Response> containerTopWithHttpInfo(String id, {String psArgs}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/top"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (psArgs != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "ps_args", psArgs));
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

  /// List processes running inside a container
  ///
  /// On Unix systems, this is done by running the &#x60;ps&#x60; command. This endpoint is not supported on Windows.
  Future<ContainerTopResponse> containerTop(String id, {String psArgs}) async {
    Response response = await containerTopWithHttpInfo(id, psArgs: psArgs);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ContainerTopResponse')
          as ContainerTopResponse;
    } else {
      return null;
    }
  }

  /// Unpause a container with HTTP info returned
  ///
  /// Resume a container which has been paused.
  Future<Response> containerUnpauseWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/unpause"
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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Unpause a container
  ///
  /// Resume a container which has been paused.
  Future<void> containerUnpause(String id) async {
    Response response = await containerUnpauseWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Update a container with HTTP info returned
  ///
  /// Change various configuration options of a container without having to recreate it.
  Future<Response> containerUpdateWithHttpInfo(String id, Resources update) async {
    Object postBody = update;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (update == null) {
      throw ApiException(400, "Missing required param: update");
    }

    // create path and map variables
    String path = "/containers/{id}/update"
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

  /// Update a container
  ///
  /// Change various configuration options of a container without having to recreate it.
  Future<ContainerUpdateResponse> containerUpdate(
      String id, Resources update) async {
    Response response = await containerUpdateWithHttpInfo(id, update);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ContainerUpdateResponse')
          as ContainerUpdateResponse;
    } else {
      return null;
    }
  }

  /// Wait for a container with HTTP info returned
  ///
  /// Block until a container stops, then returns the exit code.
  Future<Response> containerWaitWithHttpInfo(String id,
      {String condition}) async {
    Object postBody;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/containers/{id}/wait"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (condition != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "condition", condition));
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

  /// Wait for a container
  ///
  /// Block until a container stops, then returns the exit code.
  Future<ContainerWaitResponse> containerWait(String id,
      {String condition}) async {
    Response response =
        await containerWaitWithHttpInfo(id, condition: condition);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ContainerWaitResponse')
          as ContainerWaitResponse;
    } else {
      return null;
    }
  }

  /// Extract an archive of files or folders to a directory in a container with HTTP info returned
  ///
  /// Upload a tar archive to be extracted to a path in the filesystem of container id.
  Future<Response> putContainerArchiveWithHttpInfo(
      String id, String path, MultipartFile inputStream,
      {String noOverwriteDirNonDir, String copyUIDGID}) async {
    Object postBody = inputStream;

    // verify required params are set
    if (id == null) {
      throw ApiException(400, "Missing required param: id");
    }
    if (path == null) {
      throw ApiException(400, "Missing required param: path");
    }
    if (inputStream == null) {
      throw ApiException(400, "Missing required param: inputStream");
    }

    // create path and map variables
    path = "/containers/{id}/archive"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
    if (noOverwriteDirNonDir != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "noOverwriteDirNonDir", noOverwriteDirNonDir));
    }
    if (copyUIDGID != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "copyUIDGID", copyUIDGID));
    }

    List<String> contentTypes = [
      "application/x-tar",
      "application/octet-stream"
    ];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Extract an archive of files or folders to a directory in a container
  ///
  /// Upload a tar archive to be extracted to a path in the filesystem of container id.
  Future<void> putContainerArchive(String id, String path, MultipartFile inputStream,
      {String noOverwriteDirNonDir, String copyUIDGID}) async {
    Response response = await putContainerArchiveWithHttpInfo(
        id, path, inputStream,
        noOverwriteDirNonDir: noOverwriteDirNonDir, copyUIDGID: copyUIDGID);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
