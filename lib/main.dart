import 'package:flutter/material.dart';
import './demo/listview-demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basec_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
// import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home:  // SliverDemo(), // Home(),
      initialRoute: '/form',
      routes: {
        '/': (context) => Home(), //NavigatorDemo(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo()
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('FLUTTER DEMO'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('on Press Search'),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo()
            // Icon(Icons.local_florist, size: 128, color: Colors.black12),
            //Icon(Icons.change_history, size: 128, color: Colors.black12),
            // Icon(Icons.directions_bike, size: 128, color: Colors.black12)
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}


class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.black87
        ),
      ),
    );
  }
}