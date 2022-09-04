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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: SafeArea(
          child: CustomScrollView(slivers: <Widget>[
            //2
            SliverAppBar(
              //forceElevated: true,
              //primary: true,
              //excludeHeaderSemantics: true,
              //floating: true,
              //stretch: true,
              //snap: true,
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Simple text', textScaleFactor: 1),
                background: Image.asset('assets/images/istockphoto.jpg',
                    fit: BoxFit.fill, color: Colors.black.withOpacity(1.0)),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([Text('radomWords')])),
            SliverFixedExtentList(
              itemExtent: 50,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Text("Index n°$index"),
                  );
                },
              ),
            )
          ]),
        ));
  }
}
