# openapi.api.PostApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post**](PostApi.md#post) | **POST** /post | 投稿


# **post**
> JsonResponse post(xLanguage, xUserAgent, body, lat, lng, point, geoHash, country, administrativeArea, subAdministrativeArea, locality, subLocality, postalCode, name, street, isoCountryCode, thoroughfare, subThoroughfare)

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
final String body = body_example; // String | 
final num lat = 8.14; // num | 
final num lng = 8.14; // num | 
final String point = point_example; // String | 
final String geoHash = geoHash_example; // String | 
final Country country = ; // Country | 
final AdministrativeArea administrativeArea = ; // AdministrativeArea | 
final SubAdministrativeArea subAdministrativeArea = ; // SubAdministrativeArea | 
final Locality locality = ; // Locality | 
final SubLocality subLocality = ; // SubLocality | 
final PostalCode postalCode = ; // PostalCode | 
final Name name = ; // Name | 
final Street street = ; // Street | 
final IsoCountryCode isoCountryCode = ; // IsoCountryCode | 
final Thoroughfare thoroughfare = ; // Thoroughfare | 
final SubThoroughfare subThoroughfare = ; // SubThoroughfare | 

try {
    final response = api.post(xLanguage, xUserAgent, body, lat, lng, point, geoHash, country, administrativeArea, subAdministrativeArea, locality, subLocality, postalCode, name, street, isoCountryCode, thoroughfare, subThoroughfare);
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
 **body** | **String**|  | 
 **lat** | **num**|  | 
 **lng** | **num**|  | 
 **point** | **String**|  | 
 **geoHash** | **String**|  | 
 **country** | [**Country**](Country.md)|  | [optional] 
 **administrativeArea** | [**AdministrativeArea**](AdministrativeArea.md)|  | [optional] 
 **subAdministrativeArea** | [**SubAdministrativeArea**](SubAdministrativeArea.md)|  | [optional] 
 **locality** | [**Locality**](Locality.md)|  | [optional] 
 **subLocality** | [**SubLocality**](SubLocality.md)|  | [optional] 
 **postalCode** | [**PostalCode**](PostalCode.md)|  | [optional] 
 **name** | [**Name**](Name.md)|  | [optional] 
 **street** | [**Street**](Street.md)|  | [optional] 
 **isoCountryCode** | [**IsoCountryCode**](IsoCountryCode.md)|  | [optional] 
 **thoroughfare** | [**Thoroughfare**](Thoroughfare.md)|  | [optional] 
 **subThoroughfare** | [**SubThoroughfare**](SubThoroughfare.md)|  | [optional] 

### Return type

[**JsonResponse**](JsonResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

