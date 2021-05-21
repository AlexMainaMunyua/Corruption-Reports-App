import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import 'view/myhomepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              backgroundColor:
                  isDarkMode ? Colors.grey.shade900 : Colors.grey.shade300,
              title: isDarkMode
                  ? Text("Kenya Beats Corruption",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                  : Text("Kenya Beats Corruption",
                      style: TextStyle(
                        color: Colors.grey.shade900,
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
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor:
                  isDarkMode ? Colors.grey.shade900 : Colors.grey.shade300,
              selectedItemColor:
                  isDarkMode ? Colors.white : Colors.grey.shade900,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.twelve_mp,
                  ),
                  label: 'twitter',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.insert_link,
                  ),
                  label: 'links',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.confirmation_number_outlined,
                  ),
                  label: 'contribute',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            body: SafeArea(
              child: Center(child: _widgetOptions.elementAt(_selectedIndex)),
            ),
          ),
        );
      },
    );
  }
}
