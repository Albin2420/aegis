// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await preRequisites();

//   runApp(const NeufloLearn());
// }

// Future preRequisites() async {
//   await dotenv.load(fileName: ".env");
//   Directory directory = await getApplicationDocumentsDirectory();
//   Hive.init('${directory.path}/neuflodb');

//   Hive.registerAdapter(CourseAdapter());
//   Hive.registerAdapter(ChapterAdapter());
// }
import 'package:aegis/src/app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}