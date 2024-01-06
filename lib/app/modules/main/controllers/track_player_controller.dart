import 'dart:async';
import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_controller.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';
import 'package:flutter_zimpligital_siravit/core/utils/my_logger.dart';
import 'package:just_audio/just_audio.dart';
import 'package:get/get.dart';

class TrackPlayerController extends GetxController {
  static TrackPlayerController get to => Get.find();

  TrackPlayerController({
    required this.trackController,
  });

  final TrackController trackController;

  final Rxn<int> currentIndex = Rxn<int>();
  final RxBool loadingTrack = false.obs;
  final RxBool playing = false.obs;
  final AudioPlayer player = AudioPlayer();

  TrackData? get currentTrack => currentIndex.value != null &&
          trackController.pagingController.itemList != null
      ? trackController.pagingController.itemList![currentIndex.value!]
      : null;

  @override
  Future<void> onInit() async {
    player.playbackEventStream.listen((event) {
      if (event.processingState == ProcessingState.completed) {
        nextTrack();
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    player.dispose();
    super.onClose();
  }

  Future<void> selectTrack(int index) async {
    try {
      loadingTrack.value = true;
      playing.value = true;
      currentIndex.value = index;
      final track = trackController.pagingController.itemList![index];
      await player.setUrl(track.preview);
      player.play();
      loadingTrack.value = false;
    } catch (error) {
      logger.e(error);
    } finally {
      loadingTrack.value = false;
    }
  }

  Future<void> playTrack() async {
    if (player.playing) {
      player.pause();
    } else {
      player.play();
    }
    playing.value = player.playing;
  }

  Future<void> nextTrack() async {
    await player.stop();
    final index = currentIndex.value! + 1;
    if (index >= trackController.pagingController.itemList!.length) {
      currentIndex.value = null;
    } else {
      selectTrack(index);
    }
  }
}
