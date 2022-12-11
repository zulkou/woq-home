import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  final String barcode_id;
  const Dialog({required this.barcode_id});


  @override
  _DialogState createState() => _DialogState();
}

class _DialogState extends State<Dialog> {


  @override
  void initState() {
    super.initState();  
  }
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: () {
               
            },
          ),
          title: const Text('....',
              style: TextStyle(color: Colors.black,
                  fontSize: 18)),
          backgroundColor: Colors.white,
        ),
      body: SingleChildScrollView(
           
        )
    );
  }

  ///pop up win
  Future<void> _dialogWin() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('You Win!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Congratulations on understanding about Surah Al-Fatihah!"),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {  },
              child: const Text('Oke'),
            ),
          ],
        );
      },
    );
  }

  ///pop up lose
  Future<void> _dialogLose() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('You Lose!!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Sorry you don't understand about Surah Al-Fatihah!"),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {  },
              child: const Text('Oke'),
            ),
          ],
        );
      },
    );
  }
 
}

