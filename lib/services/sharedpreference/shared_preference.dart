
import 'package:shared_preferences/shared_preferences.dart';

Future<void> userLoginCredential({
  required String userId,
  required String userName,
  required String email,
  required String authToken,
}) async {
  SharedPreferences userLoginCredential = await SharedPreferences.getInstance();
  userLoginCredential.setString('userId', userId);
  userLoginCredential.setString('userName', userName);
  userLoginCredential.setString('email', email);
  userLoginCredential.setString('authToken', authToken);
}