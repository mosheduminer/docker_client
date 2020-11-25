# openapi.model.NetworkSettings

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bridge** | **String** | Name of the network&#39;a bridge (for example, &#x60;docker0&#x60;). | [optional] [default to null]
**sandboxID** | **String** | SandboxID uniquely represents a container&#39;s network stack. | [optional] [default to null]
**hairpinMode** | **bool** | Indicates if hairpin NAT should be enabled on the virtual interface.  | [optional] [default to null]
**linkLocalIPv6Address** | **String** | IPv6 unicast address using the link-local prefix. | [optional] [default to null]
**linkLocalIPv6PrefixLen** | **int** | Prefix length of the IPv6 unicast address. | [optional] [default to null]
**ports** | [**Map&lt;String, List&lt;PortBinding&gt;&gt;**](List.md) | PortMap describes the mapping of container ports to host ports, using the container&#39;s port-number and protocol as key in the format &#x60;&lt;port&gt;/&lt;protocol&gt;&#x60;, for example, &#x60;80/udp&#x60;.  If a container&#39;s port is mapped for multiple protocols, separate entries are added to the mapping table.  | [optional] [default to {}]
**sandboxKey** | **String** | SandboxKey identifies the sandbox | [optional] [default to null]
**secondaryIPAddresses** | [**List&lt;Address&gt;**](Address.md) |  | [optional] [default to []]
**secondaryIPv6Addresses** | [**List&lt;Address&gt;**](Address.md) |  | [optional] [default to []]
**endpointID** | **String** | EndpointID uniquely represents a service endpoint in a Sandbox.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**gateway** | **String** | Gateway address for the default \&quot;bridge\&quot; network.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**globalIPv6Address** | **String** | Global IPv6 address for the default \&quot;bridge\&quot; network.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**globalIPv6PrefixLen** | **int** | Mask length of the global IPv6 address.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**iPAddress** | **String** | IPv4 address for the default \&quot;bridge\&quot; network.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**iPPrefixLen** | **int** | Mask length of the IPv4 address.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**iPv6Gateway** | **String** | IPv6 gateway address for this network.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**macAddress** | **String** | MAC address for the container on the default \&quot;bridge\&quot; network.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Deprecated**: This field is only propagated when attached to the &gt; default \&quot;bridge\&quot; network. Use the information from the \&quot;bridge\&quot; &gt; network inside the &#x60;Networks&#x60; map instead, which contains the same &gt; information. This field was deprecated in Docker 1.9 and is scheduled &gt; to be removed in Docker 17.12.0  | [optional] [default to null]
**networks** | [**Map&lt;String, EndpointSettings&gt;**](EndpointSettings.md) | Information about all networks that the container is connected to.  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


