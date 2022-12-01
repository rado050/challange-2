import 'package:challenge_2/switch.dart';
import 'package:flutter/material.dart';

class Sheet extends StatefulWidget {
  const Sheet({Key? key}) : super(key: key);

  @override
  _DdState createState() => _DdState();
}

class _DdState extends State<Sheet> {
  bool sw1 = false;
  bool sw2 = false;
  bool sw3 = false;
  bool sw4 = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: () {
        showBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
            side: BorderSide(
              color: Colors.blue,
              width: 3,
            ),
          ),
          context: context,
          builder: (context) => Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'setting :',
                      style: TextStyle(fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('set1'),
                    BottomSheetSwitch(
                      switchValue: sw1,
                      valueChanged: (value) {
                        sw1 = value;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('set2'),
                    BottomSheetSwitch(
                      switchValue: sw2,
                      valueChanged: (value) {
                        sw2 = value;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('set3'),
                    BottomSheetSwitch(
                      switchValue: sw3,
                      valueChanged: (value) {
                        sw3 = value;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('set4'),
                    BottomSheetSwitch(
                      switchValue: sw4,
                      valueChanged: (value) {
                        sw4 = value;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      child: const Text("Show bottom sheet"),
    );
  }
}
