// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Profile extends Profile {
  @override
  final AnyOf anyOf;

  factory _$Profile([void Function(ProfileBuilder)? updates]) =>
      (new ProfileBuilder()..update(updates))._build();

  _$Profile._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'Profile', 'anyOf');
  }

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Profile')..add('anyOf', anyOf))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  ProfileBuilder() {
    Profile._defaults(this);
  }

  ProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Profile build() => _build();

  _$Profile _build() {
    final _$result = _$v ??
        new _$Profile._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'Profile', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
