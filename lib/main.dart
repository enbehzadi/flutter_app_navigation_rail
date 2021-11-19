import 'package:flutter/material.dart';
import 'package:navigation_rail_widget/About.dart';
import 'package:navigation_rail_widget/Collection.dart';
import 'package:navigation_rail_widget/Featued.dart';
import 'package:navigation_rail_widget/Newest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> screens = [Featured(), Newest(), Collection(), About()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[400],
        body: Row(
          children: <Widget>[
            NavigationRail(

              backgroundColor: Colors.purple[800],
              selectedIndex: _selectedIndex,
              selectedLabelTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1.0,
                  decoration: TextDecoration.underline),
              unselectedLabelTextStyle: TextStyle(color: Colors.white),
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              groupAlignment: 0.0,
              labelType: NavigationRailLabelType.all,
              leading:  Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('featured/IMG.JPG'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              destinations: [
                // NavigationRailDestination(
                //   icon: Icon(Icons.dashboard, color: Colors.white,),
                //   selectedIcon: Icon(Icons.dashboard, color: Colors.white,),
                //   label: Text("Dashboard", style: TextStyle(color: Colors.white))
                // ),
                // NavigationRailDestination(
                //   icon: Icon(Icons.list, color: Colors.white,),
                //   selectedIcon: Icon(Icons.list, color: Colors.white,),
                //   label: Text("Details", style: TextStyle(color: Colors.white))
                // ),
                // NavigationRailDestination(
                //   icon: Icon(Icons.info_outline, color: Colors.white,),
                //   selectedIcon: Icon(Icons.info, color: Colors.white,),
                //   label: Text("About", style: TextStyle(color: Colors.white))
                // ),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Featured",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Newest",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Collection",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "About Us",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
            Expanded(child: screens[_selectedIndex])
          ],
        ),
      ),
    );
  }
}




