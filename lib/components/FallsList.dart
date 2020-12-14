import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FullsList extends StatefulWidget {
  FullsList({Key key}) : super(key: key);

  @override
  _FullsListState createState() => _FullsListState();
}

class _FullsListState extends State<FullsList> {
  List imgList = [
    "https://unsplash.it/200/200/?random",
    "https://unsplash.it/300/300/?random",
    "https://unsplash.it/300/350/?random",
    "https://unsplash.it/500/400/?random",
    "https://unsplash.it/200/200/?random",
    "https://unsplash.it/300/300/?random",
    "https://unsplash.it/300/350/?random",
    "https://unsplash.it/500/400/?random"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: StaggeredGridView.countBuilder(
      itemCount: imgList.length,
      crossAxisCount: 4,
      itemBuilder: (_, i) {
        return itemWidget(i);
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index == 0 ? 2.5 : 3),
    ));
  }

  Widget itemWidget(int index) {
    String imgPath = imgList[index];
    return Container(
      child: Image.network(imgPath),
    );
  }
}
