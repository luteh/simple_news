import 'package:intl/intl.dart';

extension StringExt on String? {
  String toFormattedDate( {
    String datePattern = "dd MMMM yyyy, HH:mm",
  }) {
    if (this == null) return "-";
    return DateFormat(datePattern, 'id_ID').format(
      DateTime.parse(this!).toLocal(),
    );
  }
}
