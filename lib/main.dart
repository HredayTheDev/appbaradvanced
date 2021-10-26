import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Widget buildPage(String image, String text,String text2) {
  return

      // Center(
      //   child: Text(
      //     text,
      //     style: TextStyle(fontSize: 28),
      //   ),

      // );

      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.cover,
          height: 345,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
            text2,
            style: TextStyle(fontSize: 18),
        ),
          ),
          ],
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
        length: 3,
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
                  text: "Hreday",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Salman",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Aamir",
                ),
               
              ],
            ),
            //        brightness: Brightness.light,

            //  bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(50.0)),
          ),
          body: TabBarView(
            children: [
              buildPage('assets/hreday.jpg',"Hreday Sagar Chakraborty","Hreday Sagar Chakraborty born 26 November 1995 is an Indian actor, singer, director, filmmaker, and television talk show host. Through his career spanning over 30 years in Hindi films, Khan has established himself as one of the most popular and influential actors of Indian cinema.He has a large global following, especially in India and China, and has been described by Newsweek as biggest star in the world.Hreday Sagar Chakraborty born 26 November 1995 is an Indian actor, singer, director, filmmaker, and television talk show host. Through his career spanning over 30 years in Hindi films, Khan has established himself as one of the most popular and influential actors of Indian cinema.He has a large global following, especially in India and China, and has been described by Newsweek as biggest star in the world."),
              buildPage('assets/sallu.jpg',"Salman Khan","Salman  Khan  born 14 March 1965) is an Indian actor, singer, director, filmmaker, and television talk show host. Through his career spanning over 30 years in Hindi films, Khan has established himself as one of the most popular and influential actors of Indian cinema.He has a large global following, especially in India and China, and has been described by Newsweek as biggest star in the world."),
              buildPage('assets/aamir.jpg',"Aamir Khan","Mohammed Aamir Hussain Khan  born 14 March 1965) is an Indian actor, singer, director, filmmaker, and television talk show host. Through his career spanning over 30 years in Hindi films, Khan has established himself as one of the most popular and influential actors of Indian cinema.He has a large global following, especially in India and China, and has been described by Newsweek as biggest star in the world."),
            
            
            ],
          ),
        ),
      ),
    );
  }
}
