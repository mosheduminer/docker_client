# openapi.api.PluginApi

## Load the API package
```dart
import 'package:docker_client/api.dart';
```

All URIs are relative to *http://localhost/v1.40*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPluginPrivileges**](PluginApi.md#getPluginPrivileges) | **GET** /plugins/privileges | Get plugin privileges
[**pluginCreate**](PluginApi.md#pluginCreate) | **POST** /plugins/create | Create a plugin
[**pluginDelete**](PluginApi.md#pluginDelete) | **DELETE** /plugins/{name} | Remove a plugin
[**pluginDisable**](PluginApi.md#pluginDisable) | **POST** /plugins/{name}/disable | Disable a plugin
[**pluginEnable**](PluginApi.md#pluginEnable) | **POST** /plugins/{name}/enable | Enable a plugin
[**pluginInspect**](PluginApi.md#pluginInspect) | **GET** /plugins/{name}/json | Inspect a plugin
[**pluginList**](PluginApi.md#pluginList) | **GET** /plugins | List plugins
[**pluginPull**](PluginApi.md#pluginPull) | **POST** /plugins/pull | Install a plugin
[**pluginPush**](PluginApi.md#pluginPush) | **POST** /plugins/{name}/push | Push a plugin
[**pluginSet**](PluginApi.md#pluginSet) | **POST** /plugins/{name}/set | Configure a plugin
[**pluginUpgrade**](PluginApi.md#pluginUpgrade) | **POST** /plugins/{name}/upgrade | Upgrade a plugin


# **getPluginPrivileges**
> List<PluginPrivilegeItem> getPluginPrivileges(remote)

Get plugin privileges

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var remote = remote_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

try { 
    var result = api_instance.getPluginPrivileges(remote);
    print(result);
} catch (e) {
    print("Exception when calling PluginApi->getPluginPrivileges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remote** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]

### Return type

[**List<PluginPrivilegeItem>**](PluginPrivilegeItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginCreate**
> pluginCreate(name, tarContext)

Create a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
var tarContext = MultipartFile(); // MultipartFile | Path to tar containing plugin rootfs and manifest

try { 
    api_instance.pluginCreate(name, tarContext);
} catch (e) {
    print("Exception when calling PluginApi->pluginCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]
 **tarContext** | **MultipartFile**| Path to tar containing plugin rootfs and manifest | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-tar
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginDelete**
> Plugin pluginDelete(name, force)

Remove a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
var force = true; // bool | Disable the plugin before removing. This may result in issues if the plugin is in use by a container. 

try { 
    var result = api_instance.pluginDelete(name, force);
    print(result);
} catch (e) {
    print("Exception when calling PluginApi->pluginDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]
 **force** | **bool**| Disable the plugin before removing. This may result in issues if the plugin is in use by a container.  | [optional] [default to false]

### Return type

[**Plugin**](Plugin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginDisable**
> pluginDisable(name)

Disable a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

try { 
    api_instance.pluginDisable(name);
} catch (e) {
    print("Exception when calling PluginApi->pluginDisable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginEnable**
> pluginEnable(name, timeout)

Enable a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
var timeout = 56; // int | Set the HTTP client timeout (in seconds)

try { 
    api_instance.pluginEnable(name, timeout);
} catch (e) {
    print("Exception when calling PluginApi->pluginEnable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]
 **timeout** | **int**| Set the HTTP client timeout (in seconds) | [optional] [default to 0]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginInspect**
> Plugin pluginInspect(name)

Inspect a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

try { 
    var result = api_instance.pluginInspect(name);
    print(result);
} catch (e) {
    print("Exception when calling PluginApi->pluginInspect: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]

### Return type

[**Plugin**](Plugin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginList**
> List<Plugin> pluginList(filters)

List plugins

Returns information about installed plugins.

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var filters = filters_example; // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the plugin list.  Available filters:  - `capability=<capability name>` - `enable=<true>|<false>` 

try { 
    var result = api_instance.pluginList(filters);
    print(result);
} catch (e) {
    print("Exception when calling PluginApi->pluginList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the plugin list.  Available filters:  - &#x60;capability&#x3D;&lt;capability name&gt;&#x60; - &#x60;enable&#x3D;&lt;true&gt;|&lt;false&gt;&#x60;  | [optional] [default to null]

### Return type

[**List<Plugin>**](Plugin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginPull**
> pluginPull(remote, name, xRegistryAuth, body)

Install a plugin

Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [`POST /plugins/{name}/enable` endpoint](#operation/PostPluginsEnable). 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var remote = remote_example; // String | Remote reference for plugin to install.  The `:latest` tag is optional, and is used as the default if omitted. 
var name = name_example; // String | Local name for the pulled plugin.  The `:latest` tag is optional, and is used as the default if omitted. 
var xRegistryAuth = xRegistryAuth_example; // String | A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details. 
var body = [List&lt;InlineObject&gt;()]; // List<InlineObject> | 

try { 
    api_instance.pluginPull(remote, name, xRegistryAuth, body);
} catch (e) {
    print("Exception when calling PluginApi->pluginPull: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remote** | **String**| Remote reference for plugin to install.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  | [default to null]
 **name** | **String**| Local name for the pulled plugin.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  | [optional] [default to null]
 **xRegistryAuth** | **String**| A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] [default to null]
 **body** | [**List&lt;InlineObject&gt;**](InlineObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginPush**
> pluginPush(name)

Push a plugin

Push a plugin to the registry. 

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

try { 
    api_instance.pluginPush(name);
} catch (e) {
    print("Exception when calling PluginApi->pluginPush: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginSet**
> pluginSet(name, body)

Configure a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
var body = [List&lt;String&gt;()]; // List<String> | 

try { 
    api_instance.pluginSet(name, body);
} catch (e) {
    print("Exception when calling PluginApi->pluginSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginUpgrade**
> pluginUpgrade(name, remote, xRegistryAuth, body)

Upgrade a plugin

### Example 
```dart
import 'package:docker_client/api.dart';

var api_instance = PluginApi();
var name = name_example; // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
var remote = remote_example; // String | Remote reference to upgrade to.  The `:latest` tag is optional, and is used as the default if omitted. 
var xRegistryAuth = xRegistryAuth_example; // String | A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details. 
var body = [List&lt;InlineObject&gt;()]; // List<InlineObject> | 

try { 
    api_instance.pluginUpgrade(name, remote, xRegistryAuth, body);
} catch (e) {
    print("Exception when calling PluginApi->pluginUpgrade: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | [default to null]
 **remote** | **String**| Remote reference to upgrade to.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  | [default to null]
 **xRegistryAuth** | **String**| A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] [default to null]
 **body** | [**List&lt;InlineObject&gt;**](InlineObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

