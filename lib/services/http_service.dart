// import 'dart:io';

// import "package:dio/dio.dart" as dio_service;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:open_file/open_file.dart' as openFile;
// import 'package:path/path.dart' as path;
// import 'package:path_provider/path_provider.dart' as syspaths;

// class HttpService extends dio_service.Interceptor {
//   static dio_service.Dio dio = dio_service.Dio();
//   // static FlutterSecureStorage storage = const FlutterSecureStorage();
//   static String apiUrl = "https://newsdo.rzd.ru/api/";
//   // static String apiUrl = 'http://sdo.rzdit.ru/api/';
//   // static String apiUrl = 'http://sdo.ckadr/api/';
//   static Map userData = {};
//   static bool firstLogin = true;
//   static String libraryUrl = '';
//   static List notificationsData = [];
//   static int unreadNotifications = 0;
//   static FlutterSecureStorage storage = const FlutterSecureStorage();

//   Future exitApp() async {
//     try {
//       // await storage.delete(key: "login");
//       // await storage.delete(key: "password");
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.delete(
//         "${HttpService.apiUrl}sessions/logout",
//         // queryParameters: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             "Content-Type": "application/json",
//             "Authorization": 'Bearer $jwt',
//           },
//         ),
//       );
//       await storage.deleteAll();
//     } catch (e) {
//       rethrow;
//     }
//   }

//   static Future<void> errorHandling(dio_service.DioError e) async {
//     print('123123123 $e');
//     if (e.response != null) {
//       print('1111');
//       print("e.response!.data ${e.response!.data}");
//       print("e.response!.data['errors'] ${e.response!.data['errors']}");
//       print("e.response!.data['errors'][0] ${e.response!.data['errors'][0]}");
//       // throw e.response!.data['errors'][0]['message'] as Object;
//       throw e.response!.data['errors'][0] as Map;
//     } else {
//       throw 'Проверьте интернет или перезагрузите приложение';
//     }
//   }

//   Future attemptLogIn({
//     String route = '',
//     Map<String, dynamic> body = const {},
//   }) async {
//     try {
//       final dio_service.Response response = await dio.post(
//         "${HttpService.apiUrl}$route",
//         data: body,
//         options: dio_service.Options(
//           sendTimeout: 10000,
//           receiveTimeout: 10000,
//         ),
//       );

//       final jwt = response.data;
//       await storage.write(key: "expires", value: jwt['expires'].toString());
//       await storage.write(
//         key: "firstLogin",
//         value: jwt['firstLogin'].toString(),
//       );
//       await storage.write(key: "jwt", value: jwt['jwt'].toString());
//       await storage.write(
//         key: "onboardingCompleted",
//         value: jwt['onboardingCompleted'].toString(),
//       );
//       await storage.write(
//         key: "refreshToken",
//         value: jwt['refreshToken'].toString(),
//       );
//       firstLogin = jwt['firstLogin'] as bool;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   Future postDataWithHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.post(
//         "${HttpService.apiUrl}$route",
//         data: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             "Content-Type": contentType,
//             "Authorization": 'Bearer $jwt',
//           },
//         ),
//       );
//       return response.data;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   Future putDataWithHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.put(
//         "${HttpService.apiUrl}$route",
//         //поменял с queryParameters на data из за удаления в траектории
//         // queryParameters: body,
//         data: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             // "Accept-Encoding":	'gzip, deflate, br',
//             // "Accept":	"application/json, text/plain, /",
//             // "Host": 'newsdo.rzd.ru',
//             "Content-Type": contentType,
//             "Authorization": 'Bearer $jwt',
//           },
//         ),
//       );
//       return response.data;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   static Future getAndRedirectDataWithHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.get(
//         "${HttpService.apiUrl}$route",
//         queryParameters: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             // "Accept-Encoding":	'gzip, deflate, br',
//             // "Accept":	"application/json, text/plain, /",
//             // "Host": 'newsdo.rzd.ru',
//             // 'followRedirects': true,
//             "Content-Type": contentType,
//             "Authorization": 'Bearer $jwt',
//           },
//         ),
//       );
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   Future getDataWithHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       print("${HttpService.apiUrl}$route");
//       final dio_service.Response response = await dio.get(
//         "${HttpService.apiUrl}$route",
//         queryParameters: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             "Content-Type": contentType,
//             "Authorization": 'Bearer $jwt',
//           },
//         ),
//       );
//       return response.data;
//     } on dio_service.DioError catch (e) {
//       // TODO нужно написать так чтобы функция была throw
//       await errorHandling(e);
//     }
//   }

//   static Future downloadProfile({
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.get(
//         "${HttpService.apiUrl}/users/me",
//         queryParameters: {},
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             // "Accept-Encoding":	'gzip, deflate, br',
//             // "Accept":	"application/json, text/plain, /",
//             // "Host": 'newsdo.rzd.ru',
//             "Content-Type": contentType,
//             "Authorization": jwt,
//           },
//         ),
//       );
//       userData = response.data as Map;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   static Future downloadLibraryUrl({
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.get(
//         "${HttpService.apiUrl}books/open",
//         queryParameters: {},
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             // "Accept-Encoding":	'gzip, deflate, br',
//             // "Accept":	"application/json, text/plain, /",
//             // "Host": 'newsdo.rzd.ru',
//             "Authorization": jwt,
//             "Content-Type": contentType,
//           },
//         ),
//       );
//       libraryUrl = response.data['link'] as String;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   Future<List?> downloadNotifications({
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.get(
//         "${HttpService.apiUrl}/users/me/notifications",
//         queryParameters: {},
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             // "Accept-Encoding":	'gzip, deflate, br',
//             // "Accept":	"application/json, text/plain, /",
//             // "Host": 'newsdo.rzd.ru',
//             "Content-Type": contentType,
//             "Authorization": jwt,
//           },
//         ),
//       );
//       notificationsData = response.data['data'] as List;
//       unreadNotifications = notificationsData
//           .where((element) => element['status'] == 'unread')
//           .toList()
//           .length;
//       return response.data['data'] as List;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   static Future getDataWithoutHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//   }) async {
//     try {
//       print("${HttpService.apiUrl}$route");
//       final dio_service.Response response = await dio.get(
//         "${HttpService.apiUrl}$route",
//         queryParameters: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           // headers: {
//           //   "Accept-Encoding":	'gzip, deflate, br',
//           //   "Accept":	"application/json, text/plain, /",
//           //   "Host": 'newsdo.rzd.ru',
//           //   "Content-Type": "application/json",
//           // },
//         ),
//       );
//       print('response $response');
//       final result = response.data;
//       return result;
//     } on dio_service.DioError catch (e) {
//       print('e $e');
//       await errorHandling(e);
//     }
//   }

//   static Future deleteDataWithHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//     String contentType = "application/json",
//   }) async {
//     try {
//       final String? jwt = await storage.read(key: "jwt");
//       final dio_service.Response response = await dio.delete(
//         "${HttpService.apiUrl}$route",
//         queryParameters: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//           headers: {
//             // "Accept-Encoding":	'gzip, deflate, br',
//             // "Accept":	"application/json, text/plain, /",
//             // "Host": 'newsdo.rzd.ru',
//             "Content-Type": contentType,
//             "Authorization": 'Bearer $jwt',
//           },
//         ),
//       );
//       return response.data;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   static Future postDataWithoutHeaders({
//     String? route,
//     Map<String, dynamic> body = const {},
//   }) async {
//     try {
//       final dio_service.Response response = await dio.post(
//         "${HttpService.apiUrl}$route",
//         data: body,
//         options: dio_service.Options(
//           sendTimeout: 100000,
//           receiveTimeout: 100000,
//         ),
//       );
//       // print('прошел');
//       final result = response.data;
//       return result;
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   static Future downloadDataWithHeaders({
//     required String route,
//     Map<String, dynamic> body = const {},
//     bool openAfterDowload = false,
//     String contentType = 'text/html',
//     String fileName = 'file',
//     String folderNameFilePath = '/files',
//   }) async {
//     try {
//       const listOfTypes = [
//         'vod',
//         'avi',
//         'vob',
//         'mp4',
//         'wmv',
//         'mpeg',
//         'mkv',
//         'png',
//         'jpeg',
//         'gif',
//         'jpg',
//         'doc',
//         'docx',
//         'xls',
//         'xlsx',
//         'ppt',
//         'pptx',
//         'rtf',
//         'pdf',
//         'txt',
//         'odt',
//         'odp',
//         'ods',
//         'mp3',
//         'wav',
//         'flac'
//       ];
//       final String? jwt = await storage.read(key: "jwt");
//       final mobPath = await createFilePath(folderName: folderNameFilePath);
//       final String fullPath = '$mobPath/$fileName';
//       final dio_service.Response response = await dio.download(
//         route,
//         fullPath,
//         onReceiveProgress: (rcv, total) {
//           // print('${((rcv / total) * 100).toStringAsFixed(0)}');
//         },
//         queryParameters: body,
//         options: dio_service.Options(
//           // sendTimeout: 100000,
//           // receiveTimeout: 100000,
//           headers: {
//             // "Host": 'newsdo.rzd.ru',
//             "Content-Type": contentType,
//           },
//         ),
//       );
//       String type = '';
//       final headerContentType = response.headers['content-type'].toString();
//       for (final element in listOfTypes) {
//         if (headerContentType.contains(element)) type = element;
//       }
//       final File file = File(fullPath);
//       final String newPath = path.join(mobPath, '$fileName.$type');
//       file.renameSync(newPath);
//       if (openAfterDowload) {
//         await openFile.OpenFile.open(
//           '$fullPath.$type',
//         );
//       }
//     } on dio_service.DioError catch (e) {
//       await errorHandling(e);
//     }
//   }

//   static Future<String> getFileDirectory() async {
//     final Directory appDir = await syspaths.getApplicationDocumentsDirectory();
//     return appDir.path;
//   }

//   static Future<String> createFilePath({String folderName = '/files'}) async {
//     final String path = await getFileDirectory();
//     final String mobPath = '$path$folderName';
//     await Directory(mobPath).create(recursive: true);
//     return mobPath;
//   }

//   Future<bool> needShowBiometricDialogAndIcon() async {
//     try {
//       final String? needShowBiometricDialogAndIcon =
//           await storage.read(key: "checkNeedShowBiometricDialogAndIcon");
//       return needShowBiometricDialogAndIcon == 'false' ? false : true;
//     } catch (e) {
//       return false;
//     }
//   }

//   checkNeedShowBiometricDialogAndIcon(value) async {
//     // try {
//     await storage.write(
//         key: "checkNeedShowBiometricDialogAndIcon", value: value.toString());
//     final String? checkNeedShowBiometricDialogAndIcon =
//         await storage.read(key: "checkNeedShowBiometricDialogAndIcon");
//     print(
//         'http checkNeedShowBiometricDialogAndIcon ${checkNeedShowBiometricDialogAndIcon}');
//   }

//   writeFirstTime(String value) async {
//     await storage.write(key: "isFirstTime", value: value);
//     final String? itFirstTime = await storage.read(key: "isFirstTime");
//     print("writeFirstTime $itFirstTime ");
//   }

//   Future<bool> readIsFirstTime() async {
//     try {
//       final String? itFirstTime = await storage.read(key: "isFirstTime");
//       if (itFirstTime == null || itFirstTime == 'true') {
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       print("readIsFirstTime() error");
//       return false;
//     }
//   }
// }
