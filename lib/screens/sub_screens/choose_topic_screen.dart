import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({Key? key}) : super(key: key);

  @override
  _ChooseTopicScreenState createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'What Brings you\n',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 26)),
                TextSpan(
                    text: 'to Silent Moon',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 26))
              ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'choose a topic to focus on: ',
              style: TextStyle(color: Color(0xFFA1A4B2)),
            ),
          ),
          _buildTopic(context)
        ],
      ),
    );
  }
  Widget _buildTopic(BuildContext context){
    return Expanded(
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            itemCount: 50,
            itemBuilder: (context, index) => _buildGridImage(index),
            staggeredTileBuilder: (index) =>
                StaggeredTile.count(1, index.isEven ? 2 : 1)));
  }

  Widget _buildGridImage(int index) {
    return Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index',
                fit: BoxFit.cover,
              )),
        ));
  }
}
