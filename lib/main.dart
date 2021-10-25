import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Widget buildPage(String text) {
  return
  Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("App Bar Advanced Features"),
            backgroundColor: Colors.purple,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.red],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            leadingWidth: 30,
            actions: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              )
            ],

            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              //If you want to extend more tabs u can use below line of codes
            //  isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Person",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Setting",
                ),
                Tab(
                  icon: Icon(Icons.notification_add),
                  text: "Notifications",
                )
              ],
            ),
            //        brightness: Brightness.light,

            //  bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(50.0)),
          ),
          body: TabBarView(
            children: [
              buildPage("Home Page"),
              buildPage("Profile"),
              buildPage("Settings"),
              buildPage("Notifications"),
            ],
          ),
        ),
      ),
    );
  }
}
