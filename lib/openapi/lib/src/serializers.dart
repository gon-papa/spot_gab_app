//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/administrative_area.dart';
import 'package:openapi/src/model/authenticated_user.dart';
import 'package:openapi/src/model/authenticated_user_file.dart';
import 'package:openapi/src/model/client_id.dart';
import 'package:openapi/src/model/client_secret.dart';
import 'package:openapi/src/model/country.dart';
import 'package:openapi/src/model/created_at.dart';
import 'package:openapi/src/model/deleted_at.dart';
import 'package:openapi/src/model/email_exists_request.dart';
import 'package:openapi/src/model/email_exists_response.dart';
import 'package:openapi/src/model/email_exists_response_item.dart';
import 'package:openapi/src/model/error_detail.dart';
import 'package:openapi/src/model/error_json_response.dart';
import 'package:openapi/src/model/files.dart';
import 'package:openapi/src/model/grant_type.dart';
import 'package:openapi/src/model/http_validation_error.dart';
import 'package:openapi/src/model/id.dart';
import 'package:openapi/src/model/id_account_exists_request.dart';
import 'package:openapi/src/model/id_account_exists_response.dart';
import 'package:openapi/src/model/id_account_exists_response_item.dart';
import 'package:openapi/src/model/image_id.dart';
import 'package:openapi/src/model/image_response.dart';
import 'package:openapi/src/model/image_response_item.dart';
import 'package:openapi/src/model/iso_country_code.dart';
import 'package:openapi/src/model/json_response.dart';
import 'package:openapi/src/model/link.dart';
import 'package:openapi/src/model/locality.dart';
import 'package:openapi/src/model/me.dart';
import 'package:openapi/src/model/me_response.dart';
import 'package:openapi/src/model/me_response_item.dart';
import 'package:openapi/src/model/message.dart';
import 'package:openapi/src/model/name.dart';
import 'package:openapi/src/model/other_user_invitation_code.dart';
import 'package:openapi/src/model/postal_code.dart';
import 'package:openapi/src/model/profile.dart';
import 'package:openapi/src/model/refresh_token_request.dart';
import 'package:openapi/src/model/reset_password_request.dart';
import 'package:openapi/src/model/sign_in_response.dart';
import 'package:openapi/src/model/sign_up_request.dart';
import 'package:openapi/src/model/sign_up_response.dart';
import 'package:openapi/src/model/sign_up_response_item.dart';
import 'package:openapi/src/model/street.dart';
import 'package:openapi/src/model/sub_administrative_area.dart';
import 'package:openapi/src/model/sub_locality.dart';
import 'package:openapi/src/model/sub_thoroughfare.dart';
import 'package:openapi/src/model/thoroughfare.dart';
import 'package:openapi/src/model/token.dart';
import 'package:openapi/src/model/updated_at.dart';
import 'package:openapi/src/model/user_profile_request.dart';
import 'package:openapi/src/model/validation_error.dart';
import 'package:openapi/src/model/validation_error_loc_inner.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdministrativeArea,
  AuthenticatedUser,
  AuthenticatedUserFile,
  ClientId,
  ClientSecret,
  Country,
  CreatedAt,
  DeletedAt,
  EmailExistsRequest,
  EmailExistsResponse,
  EmailExistsResponseItem,
  ErrorDetail,
  ErrorJsonResponse,
  Files,
  GrantType,
  HTTPValidationError,
  Id,
  IdAccountExistsRequest,
  IdAccountExistsResponse,
  IdAccountExistsResponseItem,
  ImageId,
  ImageResponse,
  ImageResponseItem,
  IsoCountryCode,
  JsonResponse,
  Link,
  Locality,
  Me,
  MeResponse,
  MeResponseItem,
  Message,
  Name,
  OtherUserInvitationCode,
  PostalCode,
  Profile,
  RefreshTokenRequest,
  ResetPasswordRequest,
  SignInResponse,
  SignUpRequest,
  SignUpResponse,
  SignUpResponseItem,
  Street,
  SubAdministrativeArea,
  SubLocality,
  SubThoroughfare,
  Thoroughfare,
  Token,
  UpdatedAt,
  UserProfileRequest,
  ValidationError,
  ValidationErrorLocInner,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();