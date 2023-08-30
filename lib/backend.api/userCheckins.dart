import 'dart:convert';
import 'package:http/http.dart' as http;

userCheckins(userID) async {
  String url = 'http://192.168.43.145:3000/attendance/checkClockIn';

  // you can listen to this server remotely by using this IPv4 address of the device and the port to listen on
  Map<dynamic, dynamic> data = {"userID": userID};

  String jsonData = jsonEncode(data);

  final response = await http.post(
    Uri.parse(url),
    body: jsonData,
    headers: {
      'Content-Type':
          'application/json', // strictly Add the Content-Type header
    },
  );

  if (response.statusCode == 200) {
    data = jsonDecode(response.body);
    print(data);
  } else {
    print("the request didnt go through");
  }
}
