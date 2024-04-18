# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailExists**](AuthApi.md#emailexists) | **POST** /email-exists | メールアドレスの存在確認
[**idAccountExists**](AuthApi.md#idaccountexists) | **POST** /id-account-exists | Id Accountの存在確認
[**passwordResetPage**](AuthApi.md#passwordresetpage) | **GET** /password-reset/{token}/{lang} | パスワードリセット画面
[**passwordResetVerify**](AuthApi.md#passwordresetverify) | **POST** /password-reset-verify | パスワードリセット認証
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /refresh-token | トークンリフレッシュ
[**resetPassword**](AuthApi.md#resetpassword) | **POST** /password-reset | パスワードリセット
[**signIn**](AuthApi.md#signin) | **POST** /sign-in | サインイン
[**signOut**](AuthApi.md#signout) | **POST** /sign-out | サインアウト
[**signUp**](AuthApi.md#signup) | **POST** /sign-up | サインアップ
[**verifyEmail**](AuthApi.md#verifyemail) | **GET** /verify-email/{token}/{lang} | メールアドレスの確認


# **emailExists**
> EmailExistsResponse emailExists(xLanguage, xUserAgent, emailExistsRequest)

メールアドレスの存在確認

emailの存在確認。ture: 存在する, false: 存在しない

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final EmailExistsRequest emailExistsRequest = ; // EmailExistsRequest | 

try {
    final response = api.emailExists(xLanguage, xUserAgent, emailExistsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->emailExists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **emailExistsRequest** | [**EmailExistsRequest**](EmailExistsRequest.md)|  | 

### Return type

[**EmailExistsResponse**](EmailExistsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **idAccountExists**
> IdAccountExistsResponse idAccountExists(xLanguage, xUserAgent, idAccountExistsRequest)

Id Accountの存在確認

id_accountの存在確認。ture: 存在する, false: 存在しない

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final IdAccountExistsRequest idAccountExistsRequest = ; // IdAccountExistsRequest | 

try {
    final response = api.idAccountExists(xLanguage, xUserAgent, idAccountExistsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->idAccountExists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **idAccountExistsRequest** | [**IdAccountExistsRequest**](IdAccountExistsRequest.md)|  | 

### Return type

[**IdAccountExistsResponse**](IdAccountExistsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passwordResetPage**
> String passwordResetPage(token, lang)

パスワードリセット画面

パスワードリセット画面

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String token = token_example; // String | 
final String lang = lang_example; // String | 

try {
    final response = api.passwordResetPage(token, lang);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->passwordResetPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 
 **lang** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passwordResetVerify**
> String passwordResetVerify(password)

パスワードリセット認証

パスワードリセット認証

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String password = password_example; // String | 

try {
    final response = api.passwordResetVerify(password);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->passwordResetVerify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> SignUpResponse refreshToken(xLanguage, xUserAgent, refreshTokenRequest)

トークンリフレッシュ

トークンリフレッシュ

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final RefreshTokenRequest refreshTokenRequest = ; // RefreshTokenRequest | 

try {
    final response = api.refreshToken(xLanguage, xUserAgent, refreshTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md)|  | 

### Return type

[**SignUpResponse**](SignUpResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> JsonResponse resetPassword(xLanguage, xUserAgent, resetPasswordRequest)

パスワードリセット

パスワードリセットメールを送信する

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final ResetPasswordRequest resetPasswordRequest = ; // ResetPasswordRequest | 

try {
    final response = api.resetPassword(xLanguage, xUserAgent, resetPasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**JsonResponse**](JsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signIn**
> SignInResponse signIn(username, password, grantType, scope, clientId, clientSecret)

サインイン

サインイン

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String username = username_example; // String | 
final String password = password_example; // String | 
final GrantType grantType = ; // GrantType | 
final String scope = scope_example; // String | 
final ClientId clientId = ; // ClientId | 
final ClientSecret clientSecret = ; // ClientSecret | 

try {
    final response = api.signIn(username, password, grantType, scope, clientId, clientSecret);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **password** | **String**|  | 
 **grantType** | [**GrantType**](GrantType.md)|  | [optional] 
 **scope** | **String**|  | [optional] [default to '']
 **clientId** | [**ClientId**](ClientId.md)|  | [optional] 
 **clientSecret** | [**ClientSecret**](ClientSecret.md)|  | [optional] 

### Return type

[**SignInResponse**](SignInResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signOut**
> JsonResponse signOut(xLanguage, xUserAgent)

サインアウト

サインアウト

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//defaultApiClient.getAuthentication<OAuth>('OAuth2PasswordBearer').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getAuthApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent

try {
    final response = api.signOut(xLanguage, xUserAgent);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signOut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 

### Return type

[**JsonResponse**](JsonResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signUp**
> SignUpResponse signUp(xLanguage, xUserAgent, signUpRequest)

サインアップ

サインアップ

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String xLanguage = ja; // String | 言語[ja,en]
final String xUserAgent = now-go-app; // String | カスタムUser-Agent
final SignUpRequest signUpRequest = ; // SignUpRequest | 

try {
    final response = api.signUp(xLanguage, xUserAgent, signUpRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->signUp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xLanguage** | **String**| 言語[ja,en] | 
 **xUserAgent** | **String**| カスタムUser-Agent | 
 **signUpRequest** | [**SignUpRequest**](SignUpRequest.md)|  | 

### Return type

[**SignUpResponse**](SignUpResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmail**
> String verifyEmail(token, lang)

メールアドレスの確認

メールアドレスの確認

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String token = token_example; // String | 
final String lang = lang_example; // String | 

try {
    final response = api.verifyEmail(token, lang);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->verifyEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 
 **lang** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

