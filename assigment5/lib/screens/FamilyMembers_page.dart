import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Family Members'),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_grandfather.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Ojīsan', style: TextStyle(fontSize: 18)),
                      Text('grandfather', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(
                        AssetSource('sounds/family_members/grandfather.wav'),
                      );
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_grandmother.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('O bāchan', style: TextStyle(fontSize: 18)),
                      Text('grandmother', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(
                          AssetSource('sounds/family_members/grandmother.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_father.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Chichioya', style: TextStyle(fontSize: 18)),
                      Text('father', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(
                          AssetSource('sounds/family_members/father.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_mother.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Hahaoya', style: TextStyle(fontSize: 18)),
                      Text('mother', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(
                          AssetSource('sounds/family_members/mother.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_son.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Musuko', style: TextStyle(fontSize: 18)),
                      Text('son', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(AssetSource('sounds/family_members/son.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_daughter.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Musume', style: TextStyle(fontSize: 18)),
                      Text('daughter', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(
                          AssetSource('sounds/family_members/daughter.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_older_brother.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Ani', style: TextStyle(fontSize: 18)),
                      Text('older brother', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(AssetSource(
                          'sounds/family_members/olderbrother.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_older_sister.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Ane', style: TextStyle(fontSize: 18)),
                      Text('Old sister', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(
                          AssetSource('sounds/family_members/oldersister.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_younger_brother.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Otōto', style: TextStyle(fontSize: 18)),
                      Text('younger brother', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(AssetSource(
                          'sounds/family_members/youngerbrother.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                      'assets/images/family_members/family_younger_sister.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Imōto', style: TextStyle(fontSize: 18)),
                      Text('younger sister', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      player.play(AssetSource(
                          'sounds/family_members/youngersister.wav'));
                    },
                    child: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
