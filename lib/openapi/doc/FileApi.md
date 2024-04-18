# openapi.api.FileApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageUpload**](FileApi.md#imageupload) | **POST** /image/upload | ファイルアップロード


# **imageUpload**
> ImageResponse imageUpload(xLanguage, xUserAgent, images)

ファイルアップロード

ファイルアップロードします。

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getFileApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final BuiltList<MultipartFile> images = /path/to/file.txt; // BuiltList<MultipartFile> | 

try {
    final response = api.imageUpload(xLanguage, xUserAgent, images);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->imageUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **images** | [**BuiltList&lt;MultipartFile&gt;**](MultipartFile.md)|  | 

### Return type

[**ImageResponse**](ImageResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

