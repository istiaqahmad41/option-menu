import 'package:flutter/material.dart';

void main() {
  runApp( menu_optionmenu_122_demo());
}

class menu_optionmenu_122_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Option Menu Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Option Menu Home"),
        backgroundColor: Colors.cyan,
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => _onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(value: 0, child: Text('Go to Page 1')),
              PopupMenuItem<int>(value: 1, child: Text('Go to Page 2')),
            ],
          ),
        ],
      ),
      body: Center(child: Text("Home Page")),
    );
  }

  void _onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.pushNamed(context, '/page1');
        break;
      case 1:
        Navigator.pushNamed(context, '/page2');
        break;
    }
  }
}



class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 1")),
      body: Center(child: Text("This is Page 1")),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 2")),
      body: Center(child: Text("This is Page 2")),
    );
  }
}
