import 'package:flutter/material.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_player_controller.dart';
import 'package:flutter_zimpligital_siravit/app/widgets/image_from_network.dart';
import 'package:get/get.dart';
import 'package:flutter_zimpligital_siravit/core/constants/constants.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';

class TrackItem extends GetView<TrackPlayerController> {
  final int index;
  final TrackData data;
  const TrackItem({
    super.key,
    required this.index,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await controller.selectTrack(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 16,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                BorderRadiusSet.radius08,
              ),
              child: ImageFromNetwork(
                imageUrl: data.album.coverMedium,
                width: 64,
                height: 64,
              ),
            ),
            const SizedBox(
              width: Spacing.spacing12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    data.title,
                    style: TextStyleSet.paragraph300.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    data.artist.name,
                    style: TextStyleSet.paragraph200.copyWith(
                      color: ColorPalette.textSecondary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
