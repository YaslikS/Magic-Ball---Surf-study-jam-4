import 'package:json_annotation/json_annotation.dart';

part "reading.g.dart";

@JsonSerializable()
class Reading {
  final String reading;

  Reading({
    required this.reading,
  });

  // From Json
  factory Reading.fromJson(Map<String, dynamic> json) =>
      _$ReadingFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$ReadingToJson(this);
}
