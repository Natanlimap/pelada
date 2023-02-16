import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pelada/features/team_list/widgets/team_list.dart';
import 'package:pelada/widgets/virilha_card.dart';

class TeamListPage extends StatefulWidget {
  const TeamListPage({super.key});

  @override
  State<TeamListPage> createState() => _TeamListPageState();
}

class _TeamListPageState extends State<TeamListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.family_restroom), label: 'Times'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow), label: 'Partida'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Configurações'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Stack(
          children: const [
            VirilhaCard(),
            Padding(
              padding: EdgeInsets.only(top: 220, left: 16, right: 16),
              child: Card(
                margin: EdgeInsets.zero,
                child: TeamList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
