// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AuthenticatedUser.serializer)
      ..add(AuthenticatedUserFile.serializer)
      ..add(ClientId.serializer)
      ..add(ClientSecret.serializer)
      ..add(CreatedAt.serializer)
      ..add(DeletedAt.serializer)
      ..add(EmailExistsRequest.serializer)
      ..add(EmailExistsResponse.serializer)
      ..add(EmailExistsResponseItem.serializer)
      ..add(ErrorDetail.serializer)
      ..add(ErrorJsonResponse.serializer)
      ..add(Files.serializer)
      ..add(GrantType.serializer)
      ..add(HTTPValidationError.serializer)
      ..add(Id.serializer)
      ..add(IdAccountExistsRequest.serializer)
      ..add(IdAccountExistsResponse.serializer)
      ..add(IdAccountExistsResponseItem.serializer)
      ..add(ImageId.serializer)
      ..add(ImageResponse.serializer)
      ..add(ImageResponseItem.serializer)
      ..add(JsonResponse.serializer)
      ..add(Link.serializer)
      ..add(Me.serializer)
      ..add(MeResponse.serializer)
      ..add(MeResponseItem.serializer)
      ..add(Message.serializer)
      ..add(OtherUserInvitationCode.serializer)
      ..add(PostRequest.serializer)
      ..add(Profile.serializer)
      ..add(RefreshTokenRequest.serializer)
      ..add(ResetPasswordRequest.serializer)
      ..add(SignInResponse.serializer)
      ..add(SignUpRequest.serializer)
      ..add(SignUpResponse.serializer)
      ..add(SignUpResponseItem.serializer)
      ..add(Token.serializer)
      ..add(UpdatedAt.serializer)
      ..add(UserProfileRequest.serializer)
      ..add(ValidationError.serializer)
      ..add(ValidationErrorLocInner.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ErrorDetail)]),
          () => new ListBuilder<ErrorDetail>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ImageResponseItem)]),
          () => new ListBuilder<ImageResponseItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ValidationError)]),
          () => new ListBuilder<ValidationError>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ValidationErrorLocInner)]),
          () => new ListBuilder<ValidationErrorLocInner>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
