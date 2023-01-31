import 'package:equatable/equatable.dart';

class TimeZone extends Equatable {
  const TimeZone({
    required this.datetime,
    required this.unixtime,
    required this.utcDatetime,
  });

  final DateTime datetime;
  final int unixtime;
  final DateTime utcDatetime;

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
