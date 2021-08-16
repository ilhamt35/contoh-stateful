import 'package:contoh_stateful/main_page.dart';
import 'package:contoh_stateful/stateful_app.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTab = TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.keyboard),
          text: 'Tab 1',
        ),
        Tab(
          icon: Icon(Icons.zoom_in),
          text: 'Tab 2',
        ),
        Tab(
          icon: Icon(Icons.android),
          text: 'Tab 3',
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTab.preferredSize.height),
              child: Container(
                child: myTab,
                color: Colors.black,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: ElevatedButton(
                  child: Text('Stateful Widget'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StatefulApp();
                    }));
                  },
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text('Main Page'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainPage();
                    }));
                  },
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return MainPage();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
