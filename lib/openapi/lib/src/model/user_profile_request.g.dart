// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileRequest extends UserProfileRequest {
  @override
  final String accountName;
  @override
  final String? link;
  @override
  final String? profile;
  @override
  final String? imageUuid;

  factory _$UserProfileRequest(
          [void Function(UserProfileRequestBuilder)? updates]) =>
      (new UserProfileRequestBuilder()..update(updates))._build();

  _$UserProfileRequest._(
      {required this.accountName, this.link, this.profile, this.imageUuid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountName, r'UserProfileRequest', 'accountName');
  }

  @override
  UserProfileRequest rebuild(
          void Function(UserProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileRequestBuilder toBuilder() =>
      new UserProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileRequest &&
        accountName == other.accountName &&
        link == other.link &&
        profile == other.profile &&
        imageUuid == other.imageUuid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, imageUuid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileRequest')
          ..add('accountName', accountName)
          ..add('link', link)
          ..add('profile', profile)
          ..add('imageUuid', imageUuid))
        .toString();
  }
}

class UserProfileRequestBuilder
    implements Builder<UserProfileRequest, UserProfileRequestBuilder> {
  _$UserProfileRequest? _$v;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _profile;
  String? get profile => _$this._profile;
  set profile(String? profile) => _$this._profile = profile;

  String? _imageUuid;
  String? get imageUuid => _$this._imageUuid;
  set imageUuid(String? imageUuid) => _$this._imageUuid = imageUuid;

  UserProfileRequestBuilder() {
    UserProfileRequest._defaults(this);
  }

  UserProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountName = $v.accountName;
      _link = $v.link;
      _profile = $v.profile;
      _imageUuid = $v.imageUuid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfileRequest;
  }

  @override
  void update(void Function(UserProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileRequest build() => _build();

  _$UserProfileRequest _build() {
    final _$result = _$v ??
        new _$UserProfileRequest._(
            accountName: BuiltValueNullFieldError.checkNotNull(
                accountName, r'UserProfileRequest', 'accountName'),
            link: link,
            profile: profile,
            imageUuid: imageUuid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
