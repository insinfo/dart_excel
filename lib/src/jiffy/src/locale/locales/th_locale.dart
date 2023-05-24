import '../../enums/start_of_week.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class ThLocale extends Locale {
  @override
  String code() => 'th';

  @override
  List<String> ordinals() => List.from(['', '', '', ''], growable: false);

  @override
  StartOfWeek startOfWeek() => StartOfWeek.sunday;

  @override
  RelativeDateTime relativeDateTime() => ThRelativeTime();
}

class ThRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'อีก';
  @override
  String suffixAgo() => 'ที่แล้ว';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ไม่กี่วินาที';
  @override
  String aboutAMinute(int minutes) => '1 นาที';
  @override
  String minutes(int minutes) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes) => '1 ชั่วโมง';
  @override
  String hours(int hours) => '$hours ชั่วโมง';
  @override
  String aDay(int hours) => '1 วัน';
  @override
  String days(int days) => '$days วัน';
  @override
  String aboutAMonth(int days) => '1 เดือน';
  @override
  String months(int months) => '$months เดือน';
  @override
  String aboutAYear(int year) => '1 ปี';
  @override
  String years(int years) => '$years ปี';
  @override
  String wordSeparator() => '';
}
