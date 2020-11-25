# openapi.model.SystemVersion

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platform** | [**SystemVersionPlatform**](SystemVersionPlatform.md) |  | [optional] [default to null]
**components** | [**List&lt;SystemVersionComponents&gt;**](SystemVersionComponents.md) | Information about system components  | [optional] [default to []]
**version** | **String** | The version of the daemon | [optional] [default to null]
**apiVersion** | **String** | The default (and highest) API version that is supported by the daemon  | [optional] [default to null]
**minAPIVersion** | **String** | The minimum API version that is supported by the daemon  | [optional] [default to null]
**gitCommit** | **String** | The Git commit of the source code that was used to build the daemon  | [optional] [default to null]
**goVersion** | **String** | The version Go used to compile the daemon, and the version of the Go runtime in use.  | [optional] [default to null]
**os** | **String** | The operating system that the daemon is running on (\&quot;linux\&quot; or \&quot;windows\&quot;)  | [optional] [default to null]
**arch** | **String** | The architecture that the daemon is running on  | [optional] [default to null]
**kernelVersion** | **String** | The kernel version (&#x60;uname -r&#x60;) that the daemon is running on.  This field is omitted when empty.  | [optional] [default to null]
**experimental** | **bool** | Indicates if the daemon is started with experimental features enabled.  This field is omitted when empty / false.  | [optional] [default to null]
**buildTime** | **String** | The date and time that the daemon was compiled.  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


