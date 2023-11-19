// import 'package:services/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LocalStorage {
//   Future<void> saveUserLogged(Usuario? userInfo) async {
//     SharedPreferences instance = await SharedPreferences.getInstance();
//     print("Informacion a guardar en  Preference");
//     print(userInfo?.toJson());
//     if (userInfo != null) {
//       instance.setString("_user_name", userInfo.username);
//       instance.setBool("_user_is_logged", true);
//       instance.setString("_user_token", userInfo.token ?? "");
//       // _instance?.setStringList("_user_roles_ids",
//       //     userInfo.rolesIDs.map((int number) => number.toString()).toList());
//       // _instance?.setStringList("_user_filiales_ids",
//       //     userInfo.filialesIDs.map((int number) => number.toString()).toList());
//       print("Usuario Cargado en Preference");
//     }
//   }
//
//   Future<void> clearUserLogged() async {
//     SharedPreferences instance = await SharedPreferences.getInstance();
//     instance.remove("_user_name");
//     instance.setBool("_user_is_logged", false);
//     instance.remove("_user_token");
//     instance.remove("_user_roles_ids");
//     instance.remove("_user_filiales_ids");
//   }
//
//   Future<bool> isLogged()async {
//     SharedPreferences instance = await SharedPreferences.getInstance();
//     return instance.getBool("_user_is_logged") ?? false;
//   }
//
//   Future<String> getToken()async {
//     SharedPreferences instance = await SharedPreferences.getInstance();
//     return instance.getString("_user_token") ?? "";
//   }
//   Future<String> getUsername()async {
//     SharedPreferences instance = await SharedPreferences.getInstance();
//     return instance.getString("_user_name") ?? "";
//   }
//
//   get instance async {
//     return await SharedPreferences.getInstance();
//   }
// }