part of docker_client.api;

class ImageApi {
  final ApiClient apiClient;

  ImageApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete builder cache with HTTP info returned
  ///
  ///
  Future<Response> buildPruneWithHttpInfo(
      {int keepStorage, bool all, String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/build/prune".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (keepStorage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "keep-storage", keepStorage));
    }
    if (all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Delete builder cache
  ///
  ///
  Future<BuildPruneResponse> buildPrune(
      {int keepStorage, bool all, String filters}) async {
    Response response = await buildPruneWithHttpInfo(
        keepStorage: keepStorage, all: all, filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'BuildPruneResponse')
          as BuildPruneResponse;
    } else {
      return null;
    }
  }

  /// Build an image with HTTP info returned
  ///
  /// Build an image from a tar archive with a &#x60;Dockerfile&#x60; in it.  The &#x60;Dockerfile&#x60; specifies how the image is built from the tar archive. It is typically in the archive&#39;s root, but can be at a different path or have a different name by specifying the &#x60;dockerfile&#x60; parameter. [See the &#x60;Dockerfile&#x60; reference for more information](https://docs.docker.com/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the &#x60;Dockerfile&#x60; before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed.
  Future<Response> imageBuildWithHttpInfo(
      {String dockerfile,
      String t,
      String extrahosts,
      String remote,
      bool q,
      bool nocache,
      String cachefrom,
      String pull,
      bool rm,
      bool forcerm,
      int memory,
      int memswap,
      int cpushares,
      String cpusetcpus,
      int cpuperiod,
      int cpuquota,
      String buildargs,
      int shmsize,
      bool squash,
      String labels,
      String networkmode,
      String contentType,
      String xRegistryConfig,
      String platform,
      String target,
      String outputs,
      MultipartFile inputStream}) async {
    Object postBody = inputStream;

    // verify required params are set

    // create path and map variables
    String path = "/build".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (dockerfile != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "dockerfile", dockerfile));
    }
    if (t != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "t", t));
    }
    if (extrahosts != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "extrahosts", extrahosts));
    }
    if (remote != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "remote", remote));
    }
    if (q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if (nocache != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "nocache", nocache));
    }
    if (cachefrom != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "cachefrom", cachefrom));
    }
    if (pull != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "pull", pull));
    }
    if (rm != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rm", rm));
    }
    if (forcerm != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "forcerm", forcerm));
    }
    if (memory != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "memory", memory));
    }
    if (memswap != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "memswap", memswap));
    }
    if (cpushares != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "cpushares", cpushares));
    }
    if (cpusetcpus != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "cpusetcpus", cpusetcpus));
    }
    if (cpuperiod != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "cpuperiod", cpuperiod));
    }
    if (cpuquota != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "cpuquota", cpuquota));
    }
    if (buildargs != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "buildargs", buildargs));
    }
    if (shmsize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "shmsize", shmsize));
    }
    if (squash != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "squash", squash));
    }
    if (labels != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "labels", labels));
    }
    if (networkmode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "networkmode", networkmode));
    }
    if (platform != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "platform", platform));
    }
    if (target != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "target", target));
    }
    if (outputs != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "outputs", outputs));
    }
    headerParams["Content-type"] = contentType;
    headerParams["X-Registry-Config"] = xRegistryConfig;

    List<String> contentTypes = ["application/octet-stream"];

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

  /// Build an image
  ///
  /// Build an image from a tar archive with a &#x60;Dockerfile&#x60; in it.  The &#x60;Dockerfile&#x60; specifies how the image is built from the tar archive. It is typically in the archive&#39;s root, but can be at a different path or have a different name by specifying the &#x60;dockerfile&#x60; parameter. [See the &#x60;Dockerfile&#x60; reference for more information](https://docs.docker.com/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the &#x60;Dockerfile&#x60; before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed.
  Future<void> imageBuild(
      {String dockerfile,
      String t,
      String extrahosts,
      String remote,
      bool q,
      bool nocache,
      String cachefrom,
      String pull,
      bool rm,
      bool forcerm,
      int memory,
      int memswap,
      int cpushares,
      String cpusetcpus,
      int cpuperiod,
      int cpuquota,
      String buildargs,
      int shmsize,
      bool squash,
      String labels,
      String networkmode,
      String contentType,
      String xRegistryConfig,
      String platform,
      String target,
      String outputs,
      MultipartFile inputStream}) async {
    Response response = await imageBuildWithHttpInfo(
        dockerfile: dockerfile,
        t: t,
        extrahosts: extrahosts,
        remote: remote,
        q: q,
        nocache: nocache,
        cachefrom: cachefrom,
        pull: pull,
        rm: rm,
        forcerm: forcerm,
        memory: memory,
        memswap: memswap,
        cpushares: cpushares,
        cpusetcpus: cpusetcpus,
        cpuperiod: cpuperiod,
        cpuquota: cpuquota,
        buildargs: buildargs,
        shmsize: shmsize,
        squash: squash,
        labels: labels,
        networkmode: networkmode,
        contentType: contentType,
        xRegistryConfig: xRegistryConfig,
        platform: platform,
        target: target,
        outputs: outputs,
        inputStream: inputStream);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Create a new image from a container with HTTP info returned
  ///
  ///
  Future<Response> imageCommitWithHttpInfo(
      {String container,
      String repo,
      String tag,
      String comment,
      String author,
      bool pause,
      String changes,
      ContainerConfig containerConfig}) async {
    Object postBody = containerConfig;

    // verify required params are set

    // create path and map variables
    String path = "/commit".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (container != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "container", container));
    }
    if (repo != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "repo", repo));
    }
    if (tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
    }
    if (comment != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "comment", comment));
    }
    if (author != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "author", author));
    }
    if (pause != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "pause", pause));
    }
    if (changes != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "changes", changes));
    }

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

  /// Create a new image from a container
  ///
  ///
  Future<IdResponse> imageCommit(
      {String container,
      String repo,
      String tag,
      String comment,
      String author,
      bool pause,
      String changes,
      ContainerConfig containerConfig}) async {
    Response response = await imageCommitWithHttpInfo(
        container: container,
        repo: repo,
        tag: tag,
        comment: comment,
        author: author,
        pause: pause,
        changes: changes,
        containerConfig: containerConfig);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'IdResponse')
          as IdResponse;
    } else {
      return null;
    }
  }

  /// Create an image with HTTP info returned
  ///
  /// Create an image by either pulling it from a registry or importing it.
  Future<Response> imageCreateWithHttpInfo(
      {String fromImage,
      String fromSrc,
      String repo,
      String tag,
      String message,
      String xRegistryAuth,
      String platform,
      String inputImage}) async {
    Object postBody = inputImage;

    // verify required params are set

    // create path and map variables
    String path = "/images/create".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (fromImage != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "fromImage", fromImage));
    }
    if (fromSrc != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "fromSrc", fromSrc));
    }
    if (repo != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "repo", repo));
    }
    if (tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
    }
    if (message != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "message", message));
    }
    if (platform != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "platform", platform));
    }
    headerParams["X-Registry-Auth"] = xRegistryAuth;

    List<String> contentTypes = ["text/plain", "application/octet-stream"];

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

  /// Create an image
  ///
  /// Create an image by either pulling it from a registry or importing it.
  Future<void> imageCreate(
      {String fromImage,
      String fromSrc,
      String repo,
      String tag,
      String message,
      String xRegistryAuth,
      String platform,
      String inputImage}) async {
    Response response = await imageCreateWithHttpInfo(
        fromImage: fromImage,
        fromSrc: fromSrc,
        repo: repo,
        tag: tag,
        message: message,
        xRegistryAuth: xRegistryAuth,
        platform: platform,
        inputImage: inputImage);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Remove an image with HTTP info returned
  ///
  /// Remove an image, along with any untagged parent images that were referenced by that image.  Images can&#39;t be removed if they have descendant images, are being used by a running container or are being used by a build.
  Future<Response> imageDeleteWithHttpInfo(String name,
      {bool force, bool noprune}) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/images/{name}"
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
    if (noprune != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "noprune", noprune));
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

  /// Remove an image
  ///
  /// Remove an image, along with any untagged parent images that were referenced by that image.  Images can&#39;t be removed if they have descendant images, are being used by a running container or are being used by a build.
  Future<List<ImageDeleteResponseItem>> imageDelete(String name,
      {bool force, bool noprune}) async {
    Response response =
        await imageDeleteWithHttpInfo(name, force: force, noprune: noprune);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(
                  _decodeBodyBytes(response), 'List<ImageDeleteResponseItem>')
              as List)
          .map((item) => item as ImageDeleteResponseItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Export an image with HTTP info returned
  ///
  /// Get a tarball containing all images and metadata for a repository.  If &#x60;name&#x60; is a specific name and tag (e.g. &#x60;ubuntu:latest&#x60;), then only that image (and its parents) are returned. If &#x60;name&#x60; is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the &#x60;repositories&#x60; file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - &#x60;VERSION&#x60;: currently &#x60;1.0&#x60; - the file format version - &#x60;json&#x60;: detailed layer information, similar to &#x60;docker inspect layer_id&#x60; - &#x60;layer.tar&#x60;: A tarfile containing the filesystem changes in this layer  The &#x60;layer.tar&#x60; file contains &#x60;aufs&#x60; style &#x60;.wh..wh.aufs&#x60; files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a &#x60;repositories&#x60; file at the root that contains a list of repository and tag names mapped to layer IDs.  &#x60;&#x60;&#x60;json {   \&quot;hello-world\&quot;: {     \&quot;latest\&quot;: \&quot;565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\&quot;   } } &#x60;&#x60;&#x60;
  Future<Response> imageGetWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/images/{name}/get"
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

  /// Export an image
  ///
  /// Get a tarball containing all images and metadata for a repository.  If &#x60;name&#x60; is a specific name and tag (e.g. &#x60;ubuntu:latest&#x60;), then only that image (and its parents) are returned. If &#x60;name&#x60; is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the &#x60;repositories&#x60; file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - &#x60;VERSION&#x60;: currently &#x60;1.0&#x60; - the file format version - &#x60;json&#x60;: detailed layer information, similar to &#x60;docker inspect layer_id&#x60; - &#x60;layer.tar&#x60;: A tarfile containing the filesystem changes in this layer  The &#x60;layer.tar&#x60; file contains &#x60;aufs&#x60; style &#x60;.wh..wh.aufs&#x60; files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a &#x60;repositories&#x60; file at the root that contains a list of repository and tag names mapped to layer IDs.  &#x60;&#x60;&#x60;json {   \&quot;hello-world\&quot;: {     \&quot;latest\&quot;: \&quot;565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\&quot;   } } &#x60;&#x60;&#x60;
  Future<MultipartFile> imageGet(String name) async {
    Response response = await imageGetWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Export several images with HTTP info returned
  ///
  /// Get a tarball containing all images and metadata for several image repositories.  For each value of the &#x60;names&#x60; parameter: if it is a specific name and tag (e.g. &#x60;ubuntu:latest&#x60;), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the &#39;repositories&#39; file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  Future<Response> imageGetAllWithHttpInfo({List<String> names}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/images/get".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (names != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("csv", "names", names));
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

  /// Export several images
  ///
  /// Get a tarball containing all images and metadata for several image repositories.  For each value of the &#x60;names&#x60; parameter: if it is a specific name and tag (e.g. &#x60;ubuntu:latest&#x60;), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the &#39;repositories&#39; file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  Future<MultipartFile> imageGetAll({List<String> names}) async {
    Response response = await imageGetAllWithHttpInfo(names: names);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Get the history of an image with HTTP info returned
  ///
  /// Return parent layers of an image.
  Future<Response> imageHistoryWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/images/{name}/history"
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

  /// Get the history of an image
  ///
  /// Return parent layers of an image.
  Future<List<HistoryResponseItem>> imageHistory(String name) async {
    Response response = await imageHistoryWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(
              _decodeBodyBytes(response), 'List<HistoryResponseItem>') as List)
          .map((item) => item as HistoryResponseItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Inspect an image with HTTP info returned
  ///
  /// Return low-level information about an image.
  Future<Response> imageInspectWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/images/{name}/json"
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

  /// Inspect an image
  ///
  /// Return low-level information about an image.
  Future<Image> imageInspect(String name) async {
    Response response = await imageInspectWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Image')
          as Image;
    } else {
      return null;
    }
  }

  /// List Images with HTTP info returned
  ///
  /// Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.
  Future<Response> imageListWithHttpInfo(
      {bool all, String filters, bool digests}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/images/json".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
    if (filters != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "filters", filters));
    }
    if (digests != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "digests", digests));
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

  /// List Images
  ///
  /// Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.
  Future<List<ImageSummary>> imageList(
      {bool all, String filters, bool digests}) async {
    Response response = await imageListWithHttpInfo(
        all: all, filters: filters, digests: digests);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(
              _decodeBodyBytes(response), 'List<ImageSummary>') as List)
          .map((item) => item as ImageSummary)
          .toList();
    } else {
      return null;
    }
  }

  /// Import images with HTTP info returned
  ///
  /// Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  Future<Response> imageLoadWithHttpInfo(
      {bool quiet, MultipartFile imagesTarball}) async {
    Object postBody = imagesTarball;

    // verify required params are set

    // create path and map variables
    String path = "/images/load".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (quiet != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "quiet", quiet));
    }

    List<String> contentTypes = ["application/x-tar"];

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

  /// Import images
  ///
  /// Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  Future<void> imageLoad({bool quiet, MultipartFile imagesTarball}) async {
    Response response =
        await imageLoadWithHttpInfo(quiet: quiet, imagesTarball: imagesTarball);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Delete unused images with HTTP info returned
  ///
  ///
  Future<Response> imagePruneWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/images/prune".replaceAll("{format}", "json");

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

  /// Delete unused images
  ///
  ///
  Future<ImagePruneResponse> imagePrune({String filters}) async {
    Response response = await imagePruneWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'ImagePruneResponse')
          as ImagePruneResponse;
    } else {
      return null;
    }
  }

  /// Push an image with HTTP info returned
  ///
  /// Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, &#x60;registry.example.com/myimage:latest&#x60;.  The push is cancelled if the HTTP connection is closed.
  Future<Response> imagePushWithHttpInfo(String name, String xRegistryAuth,
      {String tag}) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }
    if (xRegistryAuth == null) {
      throw ApiException(400, "Missing required param: xRegistryAuth");
    }

    // create path and map variables
    String path = "/images/{name}/push"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
    }
    headerParams["X-Registry-Auth"] = xRegistryAuth;

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

  /// Push an image
  ///
  /// Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, &#x60;registry.example.com/myimage:latest&#x60;.  The push is cancelled if the HTTP connection is closed.
  Future<void> imagePush(String name, String xRegistryAuth, {String tag}) async {
    Response response =
        await imagePushWithHttpInfo(name, xRegistryAuth, tag: tag);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Search images with HTTP info returned
  ///
  /// Search for an image on Docker Hub.
  Future<Response> imageSearchWithHttpInfo(String term,
      {int limit, String filters}) async {
    Object postBody;

    // verify required params are set
    if (term == null) {
      throw ApiException(400, "Missing required param: term");
    }

    // create path and map variables
    String path = "/images/search".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "term", term));
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
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

  /// Search images
  ///
  /// Search for an image on Docker Hub.
  Future<List<ImageSearchResponseItem>> imageSearch(String term,
      {int limit, String filters}) async {
    Response response =
        await imageSearchWithHttpInfo(term, limit: limit, filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(
                  _decodeBodyBytes(response), 'List<ImageSearchResponseItem>')
              as List)
          .map((item) => item as ImageSearchResponseItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Tag an image with HTTP info returned
  ///
  /// Tag an image so that it becomes part of a repository.
  Future<Response> imageTagWithHttpInfo(String name, {String repo, String tag}) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/images/{name}/tag"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (repo != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "repo", repo));
    }
    if (tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
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

  /// Tag an image
  ///
  /// Tag an image so that it becomes part of a repository.
  Future<void> imageTag(String name, {String repo, String tag}) async {
    Response response = await imageTagWithHttpInfo(name, repo: repo, tag: tag);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
