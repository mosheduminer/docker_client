# openapi.model.IPAM

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driver** | **String** | Name of the IPAM driver to use. | [optional] [default to &quot;default&quot;]
**config** | [**List&lt;Map&lt;String, String&gt;&gt;**](Map.md) | List of IPAM configuration options, specified as a map:  &#x60;&#x60;&#x60; {\&quot;Subnet\&quot;: &lt;CIDR&gt;, \&quot;IPRange\&quot;: &lt;CIDR&gt;, \&quot;Gateway\&quot;: &lt;IP address&gt;, \&quot;AuxAddress\&quot;: &lt;device_name:IP address&gt;} &#x60;&#x60;&#x60;  | [optional] [default to []]
**options** | **Map&lt;String, String&gt;** | Driver-specific options, specified as a map. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


