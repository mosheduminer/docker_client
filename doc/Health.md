# openapi.model.Health

## Load the model package
```dart
import 'package:docker_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Status is one of &#x60;none&#x60;, &#x60;starting&#x60;, &#x60;healthy&#x60; or &#x60;unhealthy&#x60;  - \&quot;none\&quot;      Indicates there is no healthcheck - \&quot;starting\&quot;  Starting indicates that the container is not yet ready - \&quot;healthy\&quot;   Healthy indicates that the container is running correctly - \&quot;unhealthy\&quot; Unhealthy indicates that the container has a problem  | [optional] [default to null]
**failingStreak** | **int** | FailingStreak is the number of consecutive failures | [optional] [default to null]
**log** | [**List&lt;HealthcheckResult&gt;**](HealthcheckResult.md) | Log contains the last few results (oldest first)  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


