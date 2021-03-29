
import 'package:http/http.dart' as http;
import 'dart:convert';

  Future<dynamic> registerCustomer(String phone, String pass) async {
    final apiMap = "http://192.168.1.12/dashboard_app",
        namespace = "/pages/mobile/khach_app/login/registerApp.php";
    var response = await http.post('$apiMap$namespace',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          "phone_cus_app": phone,
          'name_cus_app': '',
          'add_cus_app': '',
          'des_cus_app': '',
          'sex_cus_app': '',
          'email_cus_app': '',
          'birth_day_cus_app': '',
          'string_pass': pass
        }));
    try {
      if (response.statusCode == 200 && response.body != null) {
        final results = response.body;
        print(results);
      }
    } catch (e) {
      return null;
    }
  }
