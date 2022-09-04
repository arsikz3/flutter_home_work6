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
              forceElevated: true, //for shadow
              elevation: 20, //for shadow

              flexibleSpace: FlexibleSpaceBar(
                  title: Text('Simple text', textScaleFactor: 1),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/istockphoto.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                      )
                    ],
                  )),
            ),

            SliverList(
                delegate: SliverChildListDelegate([
              Text(
                  'Flutter — комплект средств разработки и фреймворк с открытым исходным кодом для создания мобильных приложений под Android и iOS, веб-приложений, а также настольных приложений под Windows, macOS и Linux с использованием языка программирования Dart, разработанный и развиваемый корпорацией Google.Первая версия выпущена в 2015 году под названием «Sky», работала только для Android-приложений. Основная заявленная особенность — высокая графическая производительность (возможность отображения 120 кадров в секунду). Полная поддержка создания веб-приложений появилась в версии 2.0 (март 2021 года), с этой же версии реализована поддержка создания настольных приложений для Windows, macOS и Linux и Google Fuchsia (в виртуальной машине Dart с JIT-компилятором).Из-за ограничений на динамическое выполнение кода в App Store, под iOS Flutter использует AOT-компиляцию[2]. Широко используется такая возможность платформы Dart, как «горячая перезагрузка», когда изменение исходного кода применяется сразу в работающем приложении без необходимости его перезапуска.Основные составляющие комплекта — платформа Dart, движок Flutter, библиотека Foundation, наборы виджетов и средства разработки (Flutter DevTools).Движок Flutter написан преимущественно на C++, поддерживает низкоуровневый рендеринг с помощью графической библиотеки Google Skia, имеет возможность взаимодействовать с платформозависимыми SDK под Android и iOS.Библиотека Foundation[3], написанная на языке Dart, содержит основные классы и методы для создания приложений Flutter и взаимодействия с движком Flutter. Дизайн пользовательского интерфейса приложений Flutter предполагает использование виджетов, описываемых как неизменяемые объекты какой-либо части пользовательского интерфейса. Все графические объекты, включая текст, формы и анимацию, создаются с помощью виджетов; комбинированием простых виджетов создаются сложные виджеты. С фреймворком поставляется два основных набора виджетов — Material Design (стиль Google) и Cupertino (стиль Apple). При этом создавать приложения Flutter можно и без виджетов, напрямую вызывая методы библиотеки Foundation для работы с канвой')
            ])),
            /*
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
            */
          ]),
        ));
  }
}
