import 'package:intl/intl.dart';

class FormatHelper {
  static String formatDate(DateTime date) {
    final format = DateFormat('E, d MMM yyyy HH:mm:ss');
    return format.format(date);
  }
}
