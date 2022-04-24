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
      title: 'posttest4_1915016019_intankomalasari',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffe Shop"),
        backgroundColor: Color.fromARGB(255, 254, 197, 117),
      ),
      backgroundColor: Color.fromARGB(255, 243, 199, 138),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 192,
                height: 243,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image 2.png"),
                  ),
                ),
              ),
              Text(
                "Buy 1 Get 1",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E4A),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(isActive: true, size: "☕"),
                  SizeContainer(size: "❤️"),
                  SizeContainer(isActive: true, size: "☕"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  "Pesan Sekarang",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 40, 36, 29),
                  ),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return ThirdPage();
                      },
                    ),
                  );
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith((states) {
                    return const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 8);
                  }),
                  backgroundColor: MaterialStateColor.resolveWith((states) {
                    return const Color.fromARGB(255, 254, 89, 29);
                  }),
                  shape: MaterialStateProperty.resolveWith((states) {
                    return StadiumBorder();
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return SecondPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Main Menu',
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 180, 94),
              ),
              child: Text("Menu"),
            ),
            ListTile(
              leading: Icon(Icons.nat),
              title: Text("Varian"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return SecondPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isActive ? Color.fromARGB(255, 188, 105, 11) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 188, 105, 11),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color.fromARGB(255, 188, 105, 11),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 45,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
        onPressed: () {},
        child: Text(
          "Pesan Sekarang",
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  static final List<Widget> tabBar = [
    Tab(text: "Hot Coffee"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBar.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Variant Coffee"),
          backgroundColor: Color.fromARGB(255, 254, 197, 117),
          bottom: TabBar(tabs: tabBar),
        ),
        backgroundColor: Color.fromARGB(255, 254, 197, 117),
        body: new Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                width: 100,
                height: 200,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image 1.png"),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 200,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image 3.png"),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 200,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image 4.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

enum Ukg { unknown, tall, grande, venti }

class _ThirdPageState extends State<ThirdPage> {
  int _index = 1;
  final namaDepanCtrl = TextEditingController();
  final namaBelakangCtrl = TextEditingController();
  Ukg ukg = Ukg.unknown;

  bool isBrewedcoffee = false;
  bool isEspressobeverages = false;
  String namaDepan = "", namaBelakang = '';
  List<Widget> pages = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaDepanCtrl.dispose();
    namaBelakangCtrl.dispose();
    super.dispose();
  }

  String getUkg(Ukg? value) {
    if (value == Ukg.tall) {
      return "Tall";
    } else if (value == Ukg.grande) {
      return "Grande";
    } else if (value == Ukg.venti) {
      return "Venti";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemesanan"),
        backgroundColor: Color.fromARGB(255, 236, 165, 66),
      ),
      backgroundColor: Color.fromARGB(255, 244, 182, 95),
      body: ListView(
        children: [
          Container(
            width: 192,
            height: 243,
            margin: EdgeInsets.only(top: 61),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image 2.png"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Nama Pemesan $namaDepan $namaBelakang'),
              Text('Ukuran Gelas ${getUkg(ukg)} '),
              Text(
                  'Menu ${isBrewedcoffee ? "Brewedcoffee" : "Espressobeverages"}'),
              const SizedBox(height: 20), // Margin Bohongan
              TextField(
                maxLines: 4,
                controller: namaDepanCtrl,
                decoration: new InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(2.0)),
                  icon: Icon(Icons.people),
                  labelText: "Nama Depan",
                  hintText: 'Nama Depan',
                ),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 2,
                controller: namaBelakangCtrl,
                decoration: new InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(2.0)),
                    icon: Icon(Icons.people),
                    hintText: 'Nama Belakang',
                    labelText: "Nama Belakang"),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text("Tall (354 ml)"),
                      leading: Radio(
                        groupValue: ukg,
                        value: Ukg.tall,
                        onChanged: (Ukg? value) {
                          setState(() {
                            ukg = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("Grande (473 ml)"),
                      leading: Radio(
                        groupValue: ukg,
                        value: Ukg.grande,
                        onChanged: (Ukg? value) {
                          setState(() {
                            ukg = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("Venti (591 ml)"),
                      leading: Radio(
                        groupValue: ukg,
                        value: Ukg.venti,
                        onChanged: (Ukg? value) {
                          setState(() {
                            ukg = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: const Text("Brewedcoffee?"),
                leading: Checkbox(
                  value: isBrewedcoffee,
                  onChanged: (bool? value) {
                    setState(() {
                      isBrewedcoffee = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Espressobeverages?"),
                leading: Checkbox(
                  value: isEspressobeverages,
                  onChanged: (bool? value) {
                    setState(() {
                      isEspressobeverages = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.resolveWith((states) {
                return const EdgeInsets.symmetric(horizontal: 18, vertical: 8);
              }),
              backgroundColor: MaterialStateColor.resolveWith((states) {
                return const Color.fromARGB(255, 254, 89, 29);
              }),
              shape: MaterialStateProperty.resolveWith((states) {
                return StadiumBorder();
              }),
            ),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Pesanan Diproses (Intan Komalasari)'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                namaDepan = namaDepanCtrl.text;
                namaBelakang = namaBelakangCtrl.text;
              });
            },
            child: Text(
              'Pesan !',
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
