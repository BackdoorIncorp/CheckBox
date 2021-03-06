import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  bool value1 = false;
  bool value2 = false;

  void value1changed(bool value) => setState(() => value1 = value);
  void value2changed(bool value) => setState(() => value2 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new CheckboxListTile(value: value2,
                  title: new Text("Youre Title"),
                  activeColor: Color.lerp(Colors.redAccent, Colors.lightBlue, 20),
                  subtitle: new Text("Youre Subtitle"),
                  dense: true,
                  isThreeLine: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: value2changed
              )
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}