part of docker_client.api;

class DistributionApi {
  final ApiClient apiClient;

  DistributionApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get image information from the registry with HTTP info returned
  ///
  /// Return image digest and platform information by contacting the registry.
  Future<Response> distributionInspectWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if (name == null) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/distribution/{name}/json"
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

  /// Get image information from the registry
  ///
  /// Return image digest and platform information by contacting the registry.
  Future<DistributionInspectResponse> distributionInspect(String name) async {
    Response response = await distributionInspectWithHttpInfo(name);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'DistributionInspectResponse')
          as DistributionInspectResponse;
    } else {
      return null;
    }
  }
}
