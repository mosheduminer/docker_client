part of docker_client.api;

class PluginApi {
  final ApiClient apiClient;

  PluginApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get plugin privileges with HTTP info returned
  ///
  ///
  Future<Response> getPluginPrivilegesWithHttpInfo(String remote) async {
    Object postBody;

    // verify required params are set
    if (remote == null) {
      throw ApiException(400, "Missing required param: remote");
    }

    // create path and map variables
    String path = "/plugins/privileges".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "remote", remote));

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

  /// Get plugin privileges
  ///
  ///
  Future<List<PluginPrivilegeItem>> getPluginPrivileges(String remote) async {
    Response response = await getPluginPrivilegesWithHttpInfo(remote);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(
              _decodeBodyBytes(response), 'List<PluginPrivilegeItem>') as List)
          .map((item) => item as PluginPrivilegeItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Create a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginCreateWithHttpInfo(String name,
      {MultipartFile tarContext}) async {
    Object postBody = tarContext;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/create".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));

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

  /// Create a plugin
  ///
  ///
  Future<void> pluginCreate(String name, {MultipartFile tarContext}) async {
    Response response =
        await pluginCreateWithHttpInfo(name, tarContext: tarContext);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Remove a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginDeleteWithHttpInfo(String name, {bool force}) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/{name}"
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

  /// Remove a plugin
  ///
  ///
  Future<Plugin> pluginDelete(String name, {bool force}) async {
    Response response = await pluginDeleteWithHttpInfo(name, force: force);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Plugin')
          as Plugin;
    } else {
      return null;
    }
  }

  /// Disable a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginDisableWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/{name}/disable"
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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Disable a plugin
  ///
  ///
  Future<void> pluginDisable(String name) async {
    Response response = await pluginDisableWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Enable a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginEnableWithHttpInfo(String name, {int timeout}) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/{name}/enable"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (timeout != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "timeout", timeout));
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

  /// Enable a plugin
  ///
  ///
  Future<void> pluginEnable(String name, {int timeout}) async {
    Response response = await pluginEnableWithHttpInfo(name, timeout: timeout);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Inspect a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginInspectWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/{name}/json"
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

  /// Inspect a plugin
  ///
  ///
  Future<Plugin> pluginInspect(String name) async {
    Response response = await pluginInspectWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Plugin')
          as Plugin;
    } else {
      return null;
    }
  }

  /// List plugins with HTTP info returned
  ///
  /// Returns information about installed plugins.
  Future<Response> pluginListWithHttpInfo({String filters}) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/plugins".replaceAll("{format}", "json");

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

  /// List plugins
  ///
  /// Returns information about installed plugins.
  Future<List<Plugin>> pluginList({String filters}) async {
    Response response = await pluginListWithHttpInfo(filters: filters);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Plugin>')
              as List)
          .map((item) => item as Plugin)
          .toList();
    } else {
      return null;
    }
  }

  /// Install a plugin with HTTP info returned
  ///
  /// Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [&#x60;POST /plugins/{name}/enable&#x60; endpoint](#operation/PostPluginsEnable).
  Future<Response> pluginPullWithHttpInfo(String remote,
      {String name, String xRegistryAuth, List<InlineObject> body}) async {
    Object postBody = body;

    // verify required params are set
    if (remote == null) {
      throw ApiException(400, "Missing required param: remote");
    }

    // create path and map variables
    String path = "/plugins/pull".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "remote", remote));
    if (name != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    headerParams["X-Registry-Auth"] = xRegistryAuth;

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

  /// Install a plugin
  ///
  /// Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [&#x60;POST /plugins/{name}/enable&#x60; endpoint](#operation/PostPluginsEnable).
  Future<void> pluginPull(String remote,
      {String name, String xRegistryAuth, List<InlineObject> body}) async {
    Response response = await pluginPullWithHttpInfo(remote,
        name: name, xRegistryAuth: xRegistryAuth, body: body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Push a plugin with HTTP info returned
  ///
  /// Push a plugin to the registry.
  Future<Response> pluginPushWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/{name}/push"
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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Push a plugin
  ///
  /// Push a plugin to the registry.
  Future<void> pluginPush(String name) async {
    Response response = await pluginPushWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Configure a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginSetWithHttpInfo(String name, {List<String> body}) async {
    Object postBody = body;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/plugins/{name}/set"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

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

  /// Configure a plugin
  ///
  ///
  Future<void> pluginSet(String name, {List<String> body}) async {
    Response response = await pluginSetWithHttpInfo(name, body: body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }

  /// Upgrade a plugin with HTTP info returned
  ///
  ///
  Future<Response> pluginUpgradeWithHttpInfo(String name, String remote,
      {String xRegistryAuth, List<InlineObject> body}) async {
    Object postBody = body;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }
    if (remote == null) {
      throw ApiException(400, "Missing required param: remote");
    }

    // create path and map variables
    String path = "/plugins/{name}/upgrade"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "remote", remote));
    headerParams["X-Registry-Auth"] = xRegistryAuth;

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

  /// Upgrade a plugin
  ///
  ///
  Future<void> pluginUpgrade(String name, String remote,
      {String xRegistryAuth, List<InlineObject> body}) async {
    Response response = await pluginUpgradeWithHttpInfo(name, remote,
        xRegistryAuth: xRegistryAuth, body: body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
    } else {
      return;
    }
  }
}
