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
  Icon remove = const Icon(
    Icons.remove,
    color: Colors.black,
  );
  Icon add = const Icon(
    Icons.add,
    color: Colors.black,
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

  _incrementThis(String note) {
    setState(() {
      if (note == "_note1") {
        if (_note1 != 20) {
          _note1++;
        }
      }
      if (note == "_note2") {
        if (_note2 != 20) {
          _note2++;
        }
      }
      if (note == "_note3") {
        if (_note3 != 20) {
          _note3++;
        }
      }
      if (note == "_note4") {
        if (_note4 != 20) {
          _note4++;
        }
      }
      if (note == "_note5") {
        if (_note5 != 20) {
          _note5++;
        }
      }
      if (note == "_note6") {
        if (_note6 != 20) {
          _note6++;
        }
      }
      if (note == "_note7") {
        if (_note7 != 20) {
          _note7++;
        }
      }

      //_affichage = "$note";
    });
  }

  _decrementThis(String note) {
    setState(() {
      if (note == "_note1") {
        if (_note1 != 20) {
          _note1--;
        }
      }
      if (note == "_note2") {
        if (_note2 != 20) {
          _note2--;
        }
      }
      if (note == "_note3") {
        if (_note3 != 20) {
          _note3--;
        }
      }
      if (note == "_note4") {
        if (_note4 != 20) {
          _note4--;
        }
      }
      if (note == "_note5") {
        if (_note5 != 20) {
          _note5--;
        }
      }
      if (note == "_note6") {
        if (_note6 != 20) {
          _note6--;
        }
      }
      if (note == "_note7") {
        if (_note7 != 20) {
          _note7--;
        }
      }
    });
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
            _note = (_note / 22).round();

            if (_note < 10) {
              _affichage = "Vous n'avez pas le bts voici votre note $_note /20";
            } else {
              _affichage = "Vous avez le bts voici votre note $_note /20";
            }
          }
          break;
        case 1:
          {
            _note1 = 10;
            _note2 = 10;
            _note3 = 10;
            _note4 = 10;
            _note5 = 10;
            _note6 = 10;
            _note7 = 10;
            _affichage = "";
          }
          break;
      }
    });
  }

  String _affichage = "";
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
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note1");
                        },
                        icon: add),
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note2");
                        },
                        icon: add),
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note3");
                        },
                        icon: add),
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note4");
                        },
                        icon: add),
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note5");
                        },
                        icon: add),
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note6");
                        },
                        icon: add),
                    IconButton(
                        onPressed: () {
                          _incrementThis("_note7");
                        },
                        icon: add)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        _decrementThis("_note1");
                      },
                      icon: remove,
                    ),
                    IconButton(
                        onPressed: () {
                          _decrementThis("_note2");
                        },
                        icon: remove),
                    IconButton(
                        onPressed: () {
                          _decrementThis("_note3");
                        },
                        icon: remove),
                    IconButton(
                        onPressed: () {
                          _decrementThis("_note4");
                        },
                        icon: remove),
                    IconButton(
                        onPressed: () {
                          _decrementThis("_note5");
                        },
                        icon: remove),
                    IconButton(
                        onPressed: () {
                          _decrementThis("_note6");
                        },
                        icon: remove),
                    IconButton(
                        onPressed: () {
                          _decrementThis("_note7");
                        },
                        icon: remove)
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    _affichage,
                    style: const TextStyle(color: Colors.red, fontSize: 40),
                  ),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addThis, backgroundColor: Colors.red, child: add),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
              color: Colors.white,
            ),
            label: 'Calculer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.reset_tv,
              color: Colors.white,
            ),
            label: 'Remettre a 10',
          ),
        ],
        backgroundColor: Colors.red,
        onTap: _itemClique,
        currentIndex: _indexSelectionne,
      ),
      drawer: Drawer(
        child: Column(
          children: const <Widget>[],
        ),
      ),
    );
  }
}
