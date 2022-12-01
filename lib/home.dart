import 'package:challenge_2/sheet.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: [
          Icon(
            Icons.check,
            size: 40.0,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 100,
              maxWidth: 100,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/flutter.png"),
            ),
          ),
          const Center(
            child: Text('FLUTTER'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: SizedBox(
              width: 150,
              child: Text('First'),
            ),
          ),
          const Center(
            child: SizedBox(
              width: 150,
              child: Text(
                'Second',
                style: TextStyle(
                  color: Color.fromARGB(126, 0, 0, 0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        elevation: 50,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                          side: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        content: Container(
                            height: 300,
                            padding: EdgeInsets.only(top: 100),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 80.0,
                                ),
                                Text("Hello"),
                              ],
                            )),
                      );
                    },
                  );
                },
                child: const Text("Show Pop-up"),
              ),
              Sheet(),
            ],
          ),
        ],
      ),
    );
  }
}
