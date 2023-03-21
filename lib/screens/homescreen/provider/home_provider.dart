import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';

class HomeProvider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer = AssetsAudioPlayer();
  bool play = false;
  int i=0;
  int tabindex=0;
  Duration totalduration=Duration(seconds: 0);
  List img=[
    'assets/images/letmedown.jpg',
    'assets/images/letmeloveyou.jpg',
    'assets/images/lovemelikeyoudo.jpg',
  ];

  List musiclist = ['assets/music/let.mp3',
    'assets/music/Letmeloveyou.mp3',
    'assets/music/Lovemelikeyoudo.mp3',
  ];

  void Add(int value)
  {
    tabindex=value;
    notifyListeners();
  }
  void stopsong()
  {
    assetsAudioPlayer!.pause();
  }
  void initAudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(Audio(musiclist[i]),
    autoStart: true, showNotification: true);
    totaldurationAudio();
  }

  Future<void> start() async {
    await assetsAudioPlayer!.playOrPause();
    play = !play;
    notifyListeners();
  }

  Future<void> stop() async {
    await assetsAudioPlayer!.pause();
    notifyListeners();
  }
  Future<void> next()
  async {
   await assetsAudioPlayer!.next();
  }
  void totaldurationAudio()
  {
    assetsAudioPlayer!.current.listen((event) {
      totalduration=event!.audio.duration;
      notifyListeners();
    });
  }
}
