import "package:freezed_annotation/freezed_annotation.dart";

part "weather_vo.freezed.dart";
part "weather_vo.g.dart";

@freezed
class WeatherVo with _$WeatherVo {
  const factory WeatherVo(
      {required String countryIcon,
      required String country,
      required String city,
      required double temperature,
      required double windSpeed,
      required String weatherIcon}) = _WeatherVo;

  factory WeatherVo.fromJson(Map<String, Object?> json) =>
      _$WeatherVoFromJson(json);
}
