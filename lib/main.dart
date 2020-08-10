import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Pages
// import './about.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CardioApp'),
        // backgroundColor: Colors.black87,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Juan Pablo Quiroga'),
              accountEmail: new Text('test@test.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              leading: Icon(Icons.person),
              title: new Text('Mis Datos'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              leading: Icon(Icons.event),
              title: new Text('Mis Turnos'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyShift()));
              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              leading: Icon(Icons.build),
              title: new Text('Configuración'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Configuration(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String name = 'Juan Pablo Quiroga';
  String yearOld = '50';
  String home = 'Corrientes 3023, CABA';

  _setName(String aName) {
    name = aName;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Mis Datos'),
      ),
      body: ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('Nombre: ' + name),
          ),
          new ListTile(
            title: new Text('Edad: ' + yearOld),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new MyShift()));
            },
          ),
          new ListTile(
            title: new Text('Domicilio: ' + home),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new Configuration(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class MyShift extends StatefulWidget {
  @override
  _MyShiftState createState() => new _MyShiftState();
}

class _MyShiftState extends State<MyShift> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Mis Turnos'),
      ),
    );
  }
}

class Configuration extends StatefulWidget {
  @override
  _ConfigurationState createState() => new _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Configuracion'),
      ),
    );
  }
}
