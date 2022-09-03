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
  var list = List<int>.generate(10, (index) => index + 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List horizont'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double width = constraints.constrainWidth();

          print(width);

          return width < 500
              ? /*Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            list.length,
                            (index) => Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.green[index * 100]),
                                )),
                      )),
                )*/
              GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: width < 500 ? 1 : 3,
                    childAspectRatio: width < 500 ? 10 : 1,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      width: 80,
                      color: Colors.green[index * 100],
                    );
                  })
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.green[index * 100],
                      ),
                    );
                  });
        },
      ),
    );
  }
}
