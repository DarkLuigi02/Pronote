import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon add = const Icon(
    Icons.add,
    color: Colors.white,
  );
  int _note1 = 10;
  int _note2 = 10;
  int _note3 = 10;
  int _note4 = 10;
  int _note5 = 10;
  int _note6 = 10;
  int _note7 = 10;

  void _addThis() {
    setState(() {
      if (_note1 != 20) {
        _note1++;
      }
      if (_note2 != 20) {
        _note1++;
      }
      if (_note3 != 20) {
        _note1++;
      }
      if (_note4 != 20) {
        _note1++;
      }
      if (_note5 != 20) {
        _note1++;
      }
      if (_note6 != 20) {
        _note1++;
      }
      if (_note7 != 20) {
        _note1++;
      }
    });
  }

  void incrementThis(note) {
    setState(() {
      if (note != 20) {
        note++;
      }
    });
  }

  void _decrementThis(note) {
    setState(() {
      if (note != 0) {
        note--;
      }
    });
  }

  void _itemClique(int index) {
    setState(() {
      _indexSelectionne = index;
      switch (_indexSelectionne) {
        case 0:
          {
            _affichage = _indexSelectionne = _note1;
          }
          break;
        case 2:
          {
            _affichage = _indexSelectionne = 10;
          }
          break;
      }
    });
  }

  int _index = 0;
  final List<Step> _steps = [
    const Step(title: Text('note 1'), content: Text('10')),
    const Step(title: Text('note 2'), content: Text('10')),
    const Step(title: Text('note 3'), content: Text('10')),
    const Step(title: Text('note 4'), content: Text('10')),
    const Step(title: Text('note 5'), content: Text('10')),
    const Step(title: Text('note 6'), content: Text('10')),
    const Step(title: Text('note 7'), content: Text('10')),
  ];

  void _incrementStepper() {
    setState(() {
      if ((_index >= 0) && (_index < _steps.length - 1)) {
        _index++;
      }
    });
  }

  void _decrementStepper() {
    setState(() {
      if (_index > 0 && _index < _steps.length) {
        _index--;
      }
    });
  }

  int _indexSelectionne = 0;
  int _affichage = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: add, onPressed: _addThis),
        ],
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Transform.rotate(
                    angle: 0,
                    child: const Text(
                      'Matière',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 0,
                    child: const Text(
                      'Coef',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 0,
                    child: const Text(
                      'Note',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: const Text(
                      '',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: const Text(
                      '',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
          const Divider(
            color: Colors.white,
          ),
          Expanded(
            flex: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: const Text('Français'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      child: const Text('Anglais'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      child: const Text('Math'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      child: const Text('Cejm'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      child: const Text('E4'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      child: const Text('E5'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      child: const Text('E6'),
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 30),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Stepper(
                      steps: _steps,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(
                      'Stepper',
                    ),
                    Stepper(
                      steps: _steps,
                      onStepContinue: _incrementStepper,
                      onStepCancel: _decrementStepper,
                      currentStep: _index,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.red,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.purple,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addThis, backgroundColor: Colors.red, child: add),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      /*bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add_location,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.forward,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),*/

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment,
              color: Colors.white,
            ),
            label: 'Statistiques',
          ),
        ],
        backgroundColor: Colors.red,
        onTap: _itemClique,
        currentIndex: _indexSelectionne,
      ),
      drawer: Drawer(
        child: Column(
          children: const <Widget>[
            DrawerHeader(
              child: Text(
                'Menu de navigation',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Text('Lien 1'),
            Text('Lien 3'),
          ],
        ),
      ),
    );
  }
}
