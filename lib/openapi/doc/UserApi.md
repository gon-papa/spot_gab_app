# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMe**](UserApi.md#getme) | **GET** /me | マイページ用ユーザー取得(自身と他人含む)
[**saveUserProfile**](UserApi.md#saveuserprofile) | **POST** /user/profile | ユーザープロフィール保存


# **getMe**
> MeResponse getMe(xLanguage, xUserAgent)

マイページ用ユーザー取得(自身と他人含む)

マイページ用ユーザー取得(自身と他人含む)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getUserApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent

try {
    final response = api.getMe(xLanguage, xUserAgent);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->getMe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 

### Return type

[**MeResponse**](MeResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveUserProfile**
> JsonResponse saveUserProfile(xLanguage, xUserAgent, userProfileRequest)

ユーザープロフィール保存

ユーザープロフィールを保存します。

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getUserApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final UserProfileRequest userProfileRequest = ; // UserProfileRequest | 

try {
    final response = api.saveUserProfile(xLanguage, xUserAgent, userProfileRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->saveUserProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **userProfileRequest** | [**UserProfileRequest**](UserProfileRequest.md)|  | 

### Return type

[**JsonResponse**](JsonResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

