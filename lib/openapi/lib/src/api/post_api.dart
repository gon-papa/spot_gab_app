//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/administrative_area.dart';
import 'package:openapi/src/model/country.dart';
import 'package:openapi/src/model/http_validation_error.dart';
import 'package:openapi/src/model/iso_country_code.dart';
import 'package:openapi/src/model/json_response.dart';
import 'package:openapi/src/model/locality.dart';
import 'package:openapi/src/model/name.dart';
import 'package:openapi/src/model/postal_code.dart';
import 'package:openapi/src/model/street.dart';
import 'package:openapi/src/model/sub_administrative_area.dart';
import 'package:openapi/src/model/sub_locality.dart';
import 'package:openapi/src/model/sub_thoroughfare.dart';
import 'package:openapi/src/model/thoroughfare.dart';

class PostApi {

  final Dio _dio;

  final Serializers _serializers;

  const PostApi(this._dio, this._serializers);

  /// 投稿
  /// 投稿します。
  ///
  /// Parameters:
  /// * [xLanguage] - 言語[ja,en]
  /// * [xUserAgent] - カスタムUser-Agent
  /// * [body] 
  /// * [lat] 
  /// * [lng] 
  /// * [point] 
  /// * [geoHash] 
  /// * [country] 
  /// * [administrativeArea] 
  /// * [subAdministrativeArea] 
  /// * [locality] 
  /// * [subLocality] 
  /// * [postalCode] 
  /// * [name] 
  /// * [street] 
  /// * [isoCountryCode] 
  /// * [thoroughfare] 
  /// * [subThoroughfare] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JsonResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<JsonResponse>> post({ 
    required String xLanguage,
    required String xUserAgent,
    required String body,
    required num lat,
    required num lng,
    required String point,
    required String geoHash,
    Country? country,
    AdministrativeArea? administrativeArea,
    SubAdministrativeArea? subAdministrativeArea,
    Locality? locality,
    SubLocality? subLocality,
    PostalCode? postalCode,
    Name? name,
    Street? street,
    IsoCountryCode? isoCountryCode,
    Thoroughfare? thoroughfare,
    SubThoroughfare? subThoroughfare,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/post';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'X-Language': xLanguage,
        r'X-User-Agent': xUserAgent,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'OAuth2PasswordBearer',
          },
        ],
        ...?extra,
      },
      contentType: 'application/x-www-form-urlencoded',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = <String, dynamic>{
        r'body': encodeQueryParameter(_serializers, body, const FullType(String)),
        r'lat': encodeQueryParameter(_serializers, lat, const FullType(num)),
        r'lng': encodeQueryParameter(_serializers, lng, const FullType(num)),
        r'point': encodeQueryParameter(_serializers, point, const FullType(String)),
        r'geo_hash': encodeQueryParameter(_serializers, geoHash, const FullType(String)),
        if (country != null) r'country': encodeQueryParameter(_serializers, country, const FullType(Country)),
        if (administrativeArea != null) r'administrative_area': encodeQueryParameter(_serializers, administrativeArea, const FullType(AdministrativeArea)),
        if (subAdministrativeArea != null) r'sub_administrative_area': encodeQueryParameter(_serializers, subAdministrativeArea, const FullType(SubAdministrativeArea)),
        if (locality != null) r'locality': encodeQueryParameter(_serializers, locality, const FullType(Locality)),
        if (subLocality != null) r'sub_locality': encodeQueryParameter(_serializers, subLocality, const FullType(SubLocality)),
        if (postalCode != null) r'postal_code': encodeQueryParameter(_serializers, postalCode, const FullType(PostalCode)),
        if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(Name)),
        if (street != null) r'street': encodeQueryParameter(_serializers, street, const FullType(Street)),
        if (isoCountryCode != null) r'iso_country_code': encodeQueryParameter(_serializers, isoCountryCode, const FullType(IsoCountryCode)),
        if (thoroughfare != null) r'thoroughfare': encodeQueryParameter(_serializers, thoroughfare, const FullType(Thoroughfare)),
        if (subThoroughfare != null) r'sub_thoroughfare': encodeQueryParameter(_serializers, subThoroughfare, const FullType(SubThoroughfare)),
      };

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    JsonResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(JsonResponse),
      ) as JsonResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<JsonResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
