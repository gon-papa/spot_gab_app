# openapi.api.PostApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPostList**](PostApi.md#getpostlist) | **GET** /post | 投稿一覧
[**post**](PostApi.md#post) | **POST** /post | 投稿


# **getPostList**
> PostResponse getPostList(geoHash, xLanguage, xUserAgent, keyword, page, size)

投稿一覧

投稿一覧を取得します。

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPostApi();
final String geoHash = geoHash_example; // String | 
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final String keyword = keyword_example; // String | 
final int page = 56; // int | 
final int size = 56; // int | 

try {
    final response = api.getPostList(geoHash, xLanguage, xUserAgent, keyword, page, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PostApi->getPostList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geoHash** | **String**|  | 
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **keyword** | **String**|  | [optional] [default to '']
 **page** | **int**|  | [optional] [default to 1]
 **size** | **int**|  | [optional] [default to 10]

### Return type

[**PostResponse**](PostResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post**
> JsonResponse post(xLanguage, xUserAgent, postRequest)

投稿

投稿します。

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getPostApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final PostRequest postRequest = ; // PostRequest | 

try {
    final response = api.post(xLanguage, xUserAgent, postRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PostApi->post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **postRequest** | [**PostRequest**](PostRequest.md)|  | 

### Return type

[**JsonResponse**](JsonResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

