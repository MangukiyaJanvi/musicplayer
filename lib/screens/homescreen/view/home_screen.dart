import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/screens/homescreen/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).initAudio();
  }

  HomeProvider? ht;
  HomeProvider? hf;

  @override
  Widget build(BuildContext context) {
    ht = Provider.of<HomeProvider>(context, listen: true);
    hf = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: PageView.builder(
          itemCount: hf!.musiclist.length,
          onPageChanged: (value) {
            hf!.stopsong();
            hf!.i++;
            hf!.initAudio();
          },
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      ht!.img[index],
                      height: 716,
                      width: 360,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black12,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PlayerBuilder.currentPosition(
                      player: hf!.assetsAudioPlayer!,
                      builder: (context, position) => Column(
                        children: [
                          Slider(
                            value: position.inSeconds.toDouble(),
                            onChanged: (value) {
                              hf!.assetsAudioPlayer!.seek(
                                Duration(
                                  seconds: value.toInt(),
                                ),
                              );
                            },
                            max: ht!.totalduration.inSeconds.toDouble(),
                            activeColor: Colors.white38,
                            inactiveColor: Colors.white24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${position.inMinutes.toDouble()}:${position.inSeconds.toDouble()}',
                                  style: TextStyle(color: Colors.white38),
                                ),
                                Text(
                                  '${ht!.totalduration.inMinutes}:${ht!.totalduration.inSeconds}',
                                  style: TextStyle(color: Colors.white38),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.white38,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            hf!.start();
                          },
                          icon: Icon(
                            ht!.play ? Icons.play_circle : Icons.pause_circle,
                            color: Colors.white38,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            hf!.next();
                          },
                          icon: Icon(
                            Icons.skip_next,
                            color: Colors.white38,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
