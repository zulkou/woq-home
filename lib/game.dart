import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Al-Fatihah',
        ),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                debugPrint('back');
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: const TTSLayout(),
            ),
          ),
          Expanded(
            flex: 3,
            child: QuestionPage(),
          ),
          Expanded(
            flex: 1,
            child: TextButton(onPressed: (){}, child: Text('Submit')),
          ),
        ],
      ),
      backgroundColor: Colors.blue[800],
    );
  }
}

class TTSLayout extends StatelessWidget {
  const TTSLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> lvone = [
      3,
      4,
      5,
      6,
      7,
      13,
      22,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      40
    ];
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
      shrinkWrap: true,
      itemCount: 45,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 9,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return lvone.contains(index)
            ? const InputContainer()
            : const NullContainer();
      },
    );
  }
}

class InputContainer extends StatefulWidget {
  const InputContainer({super.key});

  @override
  State<InputContainer> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x50000000),
            blurRadius: 5.0,
            offset: Offset(5.0, 5.0),
          )
        ],
      ),
      child: TextField(
        textAlign: TextAlign.center,
        // inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("A-Z"))],
        enableInteractiveSelection: false,
        textCapitalization: TextCapitalization.characters,
        maxLength: 1,
        style: TextStyle(fontSize: 25),
        showCursor: false,
        decoration: InputDecoration(counterText: ''),
      ),
    );
  }
}

class NullContainer extends StatelessWidget {
  const NullContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
    );
  }
}

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      height: 180,
      width: MediaQuery.of(context).size.width - 24,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Text(
            "1. Surah Al-Fatihah terdiri dari ...ayat.\n 2.Surah Al-Fatihah dinamakan ...    Qur’an (induk Al-Qur’an) atau ... Kitab (induk Al-Kitab).\n 3.Surah Al-Fatihah memiliki arti ...",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
