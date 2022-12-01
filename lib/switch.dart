import 'package:flutter/material.dart';

class BottomSheetSwitch extends StatefulWidget {
  BottomSheetSwitch({required this.switchValue, required this.valueChanged});

  final bool switchValue;
  final ValueChanged valueChanged;

  @override
  _BottomSheetSwitch createState() => _BottomSheetSwitch();
}

class _BottomSheetSwitch extends State<BottomSheetSwitch> {
  bool switchValue = false;

  @override
  void initState() {
    switchValue = widget.switchValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
          value: switchValue,
          onChanged: (bool value) {
            setState(() {
              switchValue = value;
              widget.valueChanged(value);
            });
          }),
    );
  }
}