import 'package:fishflutter/components/BlockNav1.dart';
import 'package:fishflutter/components/BlockNav2.dart';
import 'package:fishflutter/components/HeaderNav.dart';
import 'package:fishflutter/config/config.dart';
import 'package:fishflutter/maps/ImgList.dart';
import 'package:fishflutter/mock/ImgListMock.dart';
import 'package:fishflutter/utils/UISize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FullsList extends StatefulWidget {
  FullsList({Key key}) : super(key: key);

  @override
  _FullsListState createState() => _FullsListState();
}

class _FullsListState extends State<FullsList> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 150),
        child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            controller: _controller,
            slivers: <Widget>[
              SliverToBoxAdapter(child: HeaderNav()),
              SliverToBoxAdapter(child: BlockNav1()),
              SliverToBoxAdapter(child: BlockNav2()),
              SliverToBoxAdapter(
                  child: RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(Duration(seconds: 5));
                      },
                      child: StaggeredGridView.countBuilder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: imgListMock.length,
                        crossAxisCount: 4,
                        mainAxisSpacing: 2.0,
                        crossAxisSpacing: 2.0,
                        itemBuilder: (context, index) {
                          return itemWidget(index);
                        },
                        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                      )))
            ]));
  }

  Widget itemWidget(int index) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(offset: Offset(2, 1), color: Colors.grey, blurRadius: 10)
        ], borderRadius: BorderRadius.circular(20), color: Colors.white),
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(ImgList.fromJson(imgListMock[index]).src,
                      width: 200)),
              Text(ImgList.fromJson(imgListMock[index]).title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "￥" +
                              ImgList.fromJson(imgListMock[index])
                                  .prices
                                  .toString(),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      Text(
                          ImgList.fromJson(imgListMock[index]).like.toString() +
                              "人想要",
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 20,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              ImgList.fromJson(imgListMock[index]).author,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            ImgList.fromJson(imgListMock[index]).name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 8),
                        ImgList.fromJson(imgListMock[index]).zhima
                            ? Image.asset(
                                Config.imagePrefix + 'zhima.png',
                                fit: BoxFit.cover,
                                width: 100,
                              )
                            : SizedBox(
                                child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    left: 3.0, right: 3.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Colors.grey)),
                                child: Text(
                                  "广告",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ))
                      ]))
            ]));
  }
}
