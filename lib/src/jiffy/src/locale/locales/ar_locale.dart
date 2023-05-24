import '../../enums/start_of_week.dart';
import '../../utils/replace.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class ArLocale extends Locale {
  @override
  String code() => 'ar';

  @override
  List<String> ordinals() => List.from(['', '', '', ''], growable: false);

  @override
  StartOfWeek startOfWeek() => StartOfWeek.saturday;

  @override
  RelativeDateTime relativeDateTime() => ArRelativeTime(true);
}

class ArLyLocale extends ArLocale {
  @override
  String code() => 'ar_ly';

  @override
  RelativeDateTime relativeDateTime() => ArRelativeTime(false);
}

class ArDzLocale extends ArLocale {
  @override
  String code() => 'ar_dz';

  @override
  StartOfWeek startOfWeek() => StartOfWeek.sunday;

  @override
  RelativeDateTime relativeDateTime() => ArSaMaDzKwTnRelativeTime(false);
}

class ArKwLocale extends ArLocale {
  @override
  String code() => 'ar_kw';

  @override
  StartOfWeek startOfWeek() => StartOfWeek.sunday;

  @override
  RelativeDateTime relativeDateTime() => ArSaMaDzKwTnRelativeTime(false);
}

class ArSaLocale extends ArLocale {
  @override
  String code() => 'ar_sa';

  @override
  StartOfWeek startOfWeek() => StartOfWeek.sunday;

  @override
  RelativeDateTime relativeDateTime() => ArSaMaDzKwTnRelativeTime(true);
}

class ArMaLocale extends ArLocale {
  @override
  String code() => 'ar_ma';

  @override
  StartOfWeek startOfWeek() => StartOfWeek.saturday;

  @override
  RelativeDateTime relativeDateTime() => ArSaMaDzKwTnRelativeTime(false);
}

class ArTnLocale extends ArLocale {
  @override
  String code() => 'ar_tn';

  @override
  StartOfWeek startOfWeek() => StartOfWeek.saturday;

  @override
  RelativeDateTime relativeDateTime() => ArSaMaDzKwTnRelativeTime(false);
}

class ArRelativeTime extends RelativeDateTime {
  bool replaceNum;
  ArRelativeTime(this.replaceNum);

  @override
  String prefixAgo() => 'منذ';
  @override
  String prefixFromNow() => 'بعد';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ثانية واحدة';
  @override
  String aboutAMinute(int minutes) => 'دقيقة واحدة';
  @override
  String minutes(int minutes) {
    String result;
    if (minutes == 1) {
      result = 'دقيقة واحدة';
    } else if (minutes == 2) {
      result = 'دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      result = '$minutes دقائق ';
    } else if (minutes > 10) {
      result = '$minutes دقيقة ';
    } else {
      result = '$minutes دقائق ';
    }
    return replaceNum ? replaceToLocaleNum(result, 'ar') : result;
  }

  @override
  String aboutAnHour(int minutes) => 'ساعة واحدة';
  @override
  String hours(int hours) {
    String result;
    if (hours == 1) {
      result = 'ساعة واحدة';
    } else if (hours == 2) {
      result = ' ساعتين';
    } else if (hours > 2 && hours < 11) {
      result = '$hours ساعات ';
    } else if (hours > 10) {
      result = '$hours ساعة ';
    } else {
      result = '$hours ساعات ';
    }
    return replaceNum ? replaceToLocaleNum(result, 'ar') : result;
  }

  @override
  String aDay(int hours) => 'يوم واحد';
  @override
  String days(int days) {
    String result;
    if (days == 1) {
      result = ' يوم واحد';
    } else if (days == 2) {
      result = ' يومين';
    } else if (days > 2 && days < 11) {
      result = '$days ايام ';
    } else if (days > 10) {
      result = '$days يوم ';
    } else {
      result = '$days ايام ';
    }
    return replaceNum ? replaceToLocaleNum(result, 'ar') : result;
  }

  @override
  String aboutAMonth(int days) => 'شهر واحد';
  @override
  String months(int months) {
    String result;
    if (months == 1) {
      result = 'شهر واحد';
    } else if (months == 2) {
      result = 'شهرين';
    } else if (months > 2 && months < 11) {
      result = '$months اشهر ';
    } else if (months > 10) {
      result = '$months شهر ';
    } else {
      result = '$months شهور ';
    }
    return replaceNum ? replaceToLocaleNum(result, 'ar') : result;
  }

  @override
  String aboutAYear(int year) => 'عام واحد';
  @override
  String years(int years) {
    String result;
    if (years == 1) {
      result = 'عام واحد';
    } else if (years == 2) {
      result = 'عامين';
    } else if (years > 2 && years < 11) {
      result = '$years أعوام ';
    } else if (years > 10) {
      result = '$years عامًا ';
    } else {
      result = '$years أعوام ';
    }
    return replaceNum ? replaceToLocaleNum(result, 'ar') : result;
  }

  @override
  String wordSeparator() => ' ';
}

class ArSaMaDzKwTnRelativeTime extends RelativeDateTime {
  bool replaceNum;
  ArSaMaDzKwTnRelativeTime(this.replaceNum);

  @override
  String prefixAgo() => 'منذ';
  @override
  String prefixFromNow() => 'في';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'ثوان';
  @override
  String aboutAMinute(int minutes) => 'دقيقة';
  @override
  String minutes(int minutes) {
    return replaceNum
        ? replaceToLocaleNum('$minutes دقائق ', 'ar')
        : '$minutes دقائق ';
  }

  @override
  String aboutAnHour(int minutes) => 'ساعة';
  @override
  String hours(int hours) {
    return replaceNum
        ? replaceToLocaleNum('$hours ساعات ', 'ar')
        : '$hours ساعات ';
  }

  @override
  String aDay(int hours) => 'يوم';
  @override
  String days(int days) {
    return replaceNum ? replaceToLocaleNum('$days أيام ', 'ar') : '$days أيام ';
  }

  @override
  String aboutAMonth(int days) => 'شهر';
  @override
  String months(int months) {
    return replaceNum
        ? replaceToLocaleNum('$months أشهر ', 'ar')
        : '$months أشهر ';
  }

  @override
  String aboutAYear(int year) => 'سنة';
  @override
  String years(int years) {
    return replaceNum
        ? replaceToLocaleNum('$years سنوات ', 'ar')
        : '$years سنوات ';
  }

  @override
  String wordSeparator() => ' ';
}
