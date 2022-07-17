// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherVo _$WeatherVoFromJson(Map<String, dynamic> json) {
  return _WeatherVo.fromJson(json);
}

/// @nodoc
mixin _$WeatherVo {
  String get countryIcon => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  String get weatherIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherVoCopyWith<WeatherVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherVoCopyWith<$Res> {
  factory $WeatherVoCopyWith(WeatherVo value, $Res Function(WeatherVo) then) =
      _$WeatherVoCopyWithImpl<$Res>;
  $Res call(
      {String countryIcon,
      String country,
      String city,
      double temperature,
      double windSpeed,
      String weatherIcon});
}

/// @nodoc
class _$WeatherVoCopyWithImpl<$Res> implements $WeatherVoCopyWith<$Res> {
  _$WeatherVoCopyWithImpl(this._value, this._then);

  final WeatherVo _value;
  // ignore: unused_field
  final $Res Function(WeatherVo) _then;

  @override
  $Res call({
    Object? countryIcon = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? temperature = freezed,
    Object? windSpeed = freezed,
    Object? weatherIcon = freezed,
  }) {
    return _then(_value.copyWith(
      countryIcon: countryIcon == freezed
          ? _value.countryIcon
          : countryIcon // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weatherIcon: weatherIcon == freezed
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherVoCopyWith<$Res> implements $WeatherVoCopyWith<$Res> {
  factory _$$_WeatherVoCopyWith(
          _$_WeatherVo value, $Res Function(_$_WeatherVo) then) =
      __$$_WeatherVoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String countryIcon,
      String country,
      String city,
      double temperature,
      double windSpeed,
      String weatherIcon});
}

/// @nodoc
class __$$_WeatherVoCopyWithImpl<$Res> extends _$WeatherVoCopyWithImpl<$Res>
    implements _$$_WeatherVoCopyWith<$Res> {
  __$$_WeatherVoCopyWithImpl(
      _$_WeatherVo _value, $Res Function(_$_WeatherVo) _then)
      : super(_value, (v) => _then(v as _$_WeatherVo));

  @override
  _$_WeatherVo get _value => super._value as _$_WeatherVo;

  @override
  $Res call({
    Object? countryIcon = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? temperature = freezed,
    Object? windSpeed = freezed,
    Object? weatherIcon = freezed,
  }) {
    return _then(_$_WeatherVo(
      countryIcon: countryIcon == freezed
          ? _value.countryIcon
          : countryIcon // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weatherIcon: weatherIcon == freezed
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherVo implements _WeatherVo {
  const _$_WeatherVo(
      {required this.countryIcon,
      required this.country,
      required this.city,
      required this.temperature,
      required this.windSpeed,
      required this.weatherIcon});

  factory _$_WeatherVo.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherVoFromJson(json);

  @override
  final String countryIcon;
  @override
  final String country;
  @override
  final String city;
  @override
  final double temperature;
  @override
  final double windSpeed;
  @override
  final String weatherIcon;

  @override
  String toString() {
    return 'WeatherVo(countryIcon: $countryIcon, country: $country, city: $city, temperature: $temperature, windSpeed: $windSpeed, weatherIcon: $weatherIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherVo &&
            const DeepCollectionEquality()
                .equals(other.countryIcon, countryIcon) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality()
                .equals(other.weatherIcon, weatherIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countryIcon),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(weatherIcon));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherVoCopyWith<_$_WeatherVo> get copyWith =>
      __$$_WeatherVoCopyWithImpl<_$_WeatherVo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherVoToJson(
      this,
    );
  }
}

abstract class _WeatherVo implements WeatherVo {
  const factory _WeatherVo(
      {required final String countryIcon,
      required final String country,
      required final String city,
      required final double temperature,
      required final double windSpeed,
      required final String weatherIcon}) = _$_WeatherVo;

  factory _WeatherVo.fromJson(Map<String, dynamic> json) =
      _$_WeatherVo.fromJson;

  @override
  String get countryIcon;
  @override
  String get country;
  @override
  String get city;
  @override
  double get temperature;
  @override
  double get windSpeed;
  @override
  String get weatherIcon;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherVoCopyWith<_$_WeatherVo> get copyWith =>
      throw _privateConstructorUsedError;
}
