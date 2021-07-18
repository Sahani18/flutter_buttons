import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String value = 'one';
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Buttons'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text('Elevated Button :'),
                Padding(padding: EdgeInsets.only(left: 80)),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Text('Elevated Button')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text('Text Button :'),
                Padding(padding: EdgeInsets.only(left: 100)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Text Button',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text('Icon Button :'),
                Padding(padding: EdgeInsets.only(left: 100)),
                IconButton(
                    icon: Icon(Icons.access_alarm),
                    tooltip: 'Alarm setup',
                    onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text('Outlined  Button :'),
                Padding(padding: EdgeInsets.only(left: 80)),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Outlined Button',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Popup Menu Button',
                  style: TextStyle(color: Colors.black),
                ),
                Padding(padding: EdgeInsets.only(left: 60)),
                PopupMenuButton(
                  child: Icon(Icons.more_vert_outlined),
                  itemBuilder: (BuildContext context) {
                    return List.generate(
                        3,
                        (index) =>
                            PopupMenuItem(child: Text('Button $index')));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Drop Down Button',
                  style: TextStyle(color: Colors.black),
                ),
                Padding(padding: EdgeInsets.only(left: 80)),
                DropdownButton<String>(
                  items: <String>[
                    'one',
                    'two',
                    'three',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text('item $value'),

                    );
                  }).toList(),
                  value: value,
                  icon: Icon(Icons.arrow_drop_down),

                  onChanged: (String newValue) {
                    // setState((){
                    //   value=newValue;
                    // });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
