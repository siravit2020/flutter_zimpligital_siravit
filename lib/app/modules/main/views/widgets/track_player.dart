import 'package:flutter/material.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_player_controller.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';
import 'package:flutter_zimpligital_siravit/app/widgets/image_from_network.dart';
import 'package:flutter_zimpligital_siravit/core/constants/constants.dart';
import 'package:get/get.dart';

class TrackPlayer extends GetView<TrackPlayerController> {
  final TrackData data;
  const TrackPlayer({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<Duration>(
          stream: controller.player.positionStream,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.inMilliseconds > 0) {
              return LinearProgressIndicator(
                value: snapshot.data!.inMilliseconds /
                    controller.player.bufferedPosition.inMilliseconds,
                minHeight: 2,
                backgroundColor: ColorPalette.grey,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  ColorPalette.colorPrimary,
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
        Container(
          padding: const EdgeInsets.all(
            Spacing.spacing12,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: ColorPalette.grey,
                blurRadius: 8,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    BorderRadiusSet.radius08,
                  ),
                  child: ImageFromNetwork(
                    imageUrl: data.album.coverMedium,
                    width: 46,
                    height: 46,
                  ),
                ),
                const SizedBox(
                  width: Spacing.spacing12,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        data.title,
                        style: TextStyleSet.paragraph200.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        data.artist.name,
                        style: TextStyleSet.paragraph100.copyWith(
                          color: ColorPalette.textSecondary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.playTrack();
                  },
                  icon: Obx(
                    () => Icon(
                      controller.playing.value
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
