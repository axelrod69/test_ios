import 'package:get/get.dart';

class AllProvider extends GetConnect {
  static String urlBase = "https://achievexsolutions.in/current_work/plantrip/";
  // static String tokenAPI = 'bf939db2c3060b988389d1aecbe18aefb7ee6ff4';
  // static String tokenAPI =
  //     'ecNs6dqTFUdOpd5yLWekeo:APA91bGSg1Dk9Tl_OtiIfejYlQQoVt90xHkGSFcwgpqAyZvoMpc1-lGR2_Byx_LibzJsfA9G-iCH2uyZReKNPh6UL_ZkjKbsekTQSRZYRIEzQyvkiYMphMh5vvLahIgL3pKkR1yyiiR0';

  static String tokenAPI = 'A32B0222-67CA-46E1-BEEE-F2D337A40424';

  Future<Response?>? pushResponse(final String path, final String encoded) =>
      post(
        urlBase + path,
        encoded,
        contentType: 'application/json; charset=UTF-8',
        headers: {
          'X-Authentication': tokenAPI,
          'Content-type': 'application/json',
        },
      ).timeout(const Duration(seconds: 210));
}
