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
        _note2++;
      }
      if (_note3 != 20) {
        _note3++;
      }
      if (_note4 != 20) {
        _note4++;
      }
      if (_note5 != 20) {
        _note5++;
      }
      if (_note6 != 20) {
        _note6++;
      }
      if (_note7 != 20) {
        _note7++;
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
  void buttonMinusOnPressed() {
    incrementThis(_note1);
  }

  void _itemClique(int index) {
    setState(() {
      _indexSelectionne = index;
      switch (_indexSelectionne) {
        case 0:
          {
            int _note = 0;
            _note = _note1 * 2 +
                _note2 * 2 +
                _note3 * 3 +
                _note4 * 3 +
                _note5 * 4 +
                _note6 * 4 +
                _note7 * 4;
            if (_note < 10) {
              _affichage = "Vous n'avez pas le bts";
            } else {
              _affichage = "Vous avez le bts";
            }
          }
          break;
        case 2:
          {
            _note1 = _indexSelectionne = 10;
            _note2 = _indexSelectionne = 10;
            _note3 = _indexSelectionne = 10;
            _note4 = _indexSelectionne = 10;
            _note5 = _indexSelectionne = 10;
            _note6 = _indexSelectionne = 10;
            _note7 = _indexSelectionne = 10;
          }
          break;
      }
    });
  }

  String _affichage = "";
  int _index = 0;

  int _indexSelectionne = 0;
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
                  children: const <Widget>[
                    Text('2'),
                    Text('2'),
                    Text('3'),
                    Text('3'),
                    Text('4'),
                    Text('4'),
                    Text('4'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('$_note1'),
                    Text('$_note2'),
                    Text('$_note3'),
                    Text('$_note4'),
                    Text('$_note5'),
                    Text('$_note6'),
                    Text('$_note7'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Padding(padding: EdgeInsets.all(30)),
                    ElevatedButton(
                    onPressed: buttonMinusOnPressed),
                    child: Text(
                    '-',
                    style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.red),
                    elevation: MaterialStateProperty.resolveWith((states) => 8),
              ),
            ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addThis, backgroundColor: Colors.red, child: add),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
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
