import 'package:corruption_application/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    appdata.writeIfNull("darkmode", false);

    return SimpleBuilder(
      builder: (_) {
        bool isDarkMode = appdata.read("darkmode");

        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: Scaffold(
            appBar: AppBar(
              title: Text("Kenya Beats Corruption",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              actions: [
                Switch(
                  value: isDarkMode,
                  onChanged: (value) => appdata.write('darkmode', value),
                )
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   isDarkMode ? 'images/night.png' : 'images/day.png',
                  //   width: 100,
                  //   height: 100,
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
