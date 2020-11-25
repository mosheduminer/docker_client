# openapi.model.EndpointSettings

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iPAMConfig** | [**EndpointIPAMConfig**](EndpointIPAMConfig.md) |  | [optional] [default to null]
**links** | **List&lt;String&gt;** |  | [optional] [default to []]
**aliases** | **List&lt;String&gt;** |  | [optional] [default to []]
**networkID** | **String** | Unique ID of the network.  | [optional] [default to null]
**endpointID** | **String** | Unique ID for the service endpoint in a Sandbox.  | [optional] [default to null]
**gateway** | **String** | Gateway address for this network.  | [optional] [default to null]
**iPAddress** | **String** | IPv4 address.  | [optional] [default to null]
**iPPrefixLen** | **int** | Mask length of the IPv4 address.  | [optional] [default to null]
**iPv6Gateway** | **String** | IPv6 gateway address.  | [optional] [default to null]
**globalIPv6Address** | **String** | Global IPv6 address.  | [optional] [default to null]
**globalIPv6PrefixLen** | **int** | Mask length of the global IPv6 address.  | [optional] [default to null]
**macAddress** | **String** | MAC address for the endpoint on this network.  | [optional] [default to null]
**driverOpts** | **Map&lt;String, String&gt;** | DriverOpts is a mapping of driver options and values. These options are passed directly to the driver and are driver specific.  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


