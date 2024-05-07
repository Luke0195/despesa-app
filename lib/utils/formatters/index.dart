import 'package:intl/intl.dart';

String parseDateToString(
    {required DateTime currentDate, String mask = "yyyy-MM-dd"}) {
  return DateFormat(mask).format(currentDate);
}
