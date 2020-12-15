// import 'package:awsome_video_player/awsome_video_player.dart';
// import 'package:fishflutter/config/config.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  MessagesState createState() => MessagesState();
}

class MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("消息"),
      // child: AwsomeVideoPlayer(
      //   Config.freeM3u8,
      //   playOptions: VideoPlayOptions(
      //       seekSeconds: 30,
      //       aspectRatio: 16 / 9,
      //       loop: true,
      //       autoplay: true,
      //       allowScrubbing: true,
      //       startPosition: Duration(seconds: 0)),
      // ),
    );
  }
}
