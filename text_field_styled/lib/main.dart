import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const Color pColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text field styled'),
        ),
        body: Container(
            child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 1,
            cursorColor: pColor,
            //textInputAction: Icon(Icons.abc),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: pColor,
              ),
              hintText: 'Введите значение',
              hoverColor: pColor,
              labelText: 'Search',
              helperText: 'Поле для поиска заметок',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: pColor),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              labelStyle: TextStyle(color: Colors.purple),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.purple),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
        )));
  }
}
