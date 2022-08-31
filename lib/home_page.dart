import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _person = false;
  bool _timer = false;
  bool _tel1 = false;
  bool _tel2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
        ),
        height: 136,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 4, right: 45),
              child: Row(
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addTextWithSize("Flutter McFlutter", 22),
                      addTextWithSize("Experienced App Developer", 13),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addPaddingWithText("123 Main Street"),
                addPaddingWithText("(415) 555-0198"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    _person = !_person;
                    setState(() {});
                    final snackBar = SnackBar(
                      content: const Text('Únete a un club con otras personas'),
                    );
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(Icons.accessibility,
                      size: 25,
                      color: _person == true ? Colors.indigo : Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    _timer = !_timer;
                    setState(() {});
                    final snackBar = SnackBar(
                      content: const Text(
                          'Cuenta regresiva para el evento: 31 días'),
                    );
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(Icons.timer,
                      size: 25,
                      color: _timer == true ? Colors.indigo : Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    _tel1 = !_tel1;
                    setState(() {});
                    final snackBar = SnackBar(
                      content: const Text('Llama al número 4155550198'),
                    );
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(Icons.phone_android_rounded,
                      size: 25,
                      color: _tel1 == true ? Colors.indigo : Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    _tel2 = !_tel2;
                    setState(() {});
                    final snackBar = SnackBar(
                      content: const Text('Llama al celular 3317865113'),
                    );
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(Icons.phone_iphone_rounded,
                      size: 25,
                      color: _tel2 == true ? Colors.indigo : Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding addPaddingWithText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 7, bottom: 7, right: 15),
      child: Text(
        text,
        style: TextStyle(fontSize: 13),
      ),
    );
  }

  Text addTextWithSize(String text, double size) {
    return Text(
      text,
      style: TextStyle(fontSize: size),
      textAlign: TextAlign.left,
    );
  }
}
