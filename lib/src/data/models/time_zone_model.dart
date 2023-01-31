import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/time_zone.dart';

class TimeZoneModel extends Equatable {
  const TimeZoneModel({
    required this.datetime,
    required this.unixtime,
    required this.utcDatetime,
  });

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) {
    return TimeZoneModel(
      datetime: DateTime.parse(json['datetime'] as String),
      unixtime: json['unixtime'] as int,
      utcDatetime: DateTime.parse(json['utc_datetime'] as String),
    );
  }

  final DateTime datetime;
  final int unixtime;
  final DateTime utcDatetime;

  TimeZone toEntity() {
    return TimeZone(
      datetime: datetime,
      unixtime: unixtime,
      utcDatetime: utcDatetime,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'datetime': datetime.toIso8601String(),
      'unixtime': unixtime,
      'utc_datetime': utcDatetime.toIso8601String(),
    };
  }

  @override
  List<Object?> get props => [
        datetime,
        unixtime,
        utcDatetime,
      ];
}
