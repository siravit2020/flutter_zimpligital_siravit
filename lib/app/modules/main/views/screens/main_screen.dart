import 'package:flutter/material.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_controller.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_player_controller.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/views/widgets/track_player.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/views/widgets/track_item.dart';
import 'package:flutter_zimpligital_siravit/core/constants/constants.dart';
import 'package:flutter_zimpligital_siravit/core/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TrackController trackController = Get.find<TrackController>();
    final TrackPlayerController trackPlayerController =
        Get.find<TrackPlayerController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Chart',
        ),
        centerTitle: false,
        titleTextStyle: TextStyleSet.headline700,
        elevation: 0,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        children: [
          PagedListView<int, TrackData>(
            pagingController: trackController.pagingController,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(
              bottom: Spacing.spacing16 + Get.mediaQuery.padding.bottom,
              top: Spacing.spacing04,
            ),
            builderDelegate: PagedChildBuilderDelegate<TrackData>(
              itemBuilder: (context, item, index) {
                return TrackItem(
                  index: index,
                  data: item,
                );
              },
              animateTransitions: true,
              transitionDuration: const Duration(milliseconds: 150),
              firstPageProgressIndicatorBuilder: (BuildContext context) {
                return Center(
                  child: Assets.lotties.loading.lottie(
                    alignment: Alignment.center,
                    height: 100,
                  ),
                );
              },
              newPageProgressIndicatorBuilder: (BuildContext context) {
                return Center(
                  child: Assets.lotties.loading.lottie(
                    alignment: Alignment.center,
                    height: 50,
                  ),
                );
              },
            ),
          ),
          Obx(() {
            if (trackPlayerController.loadingTrack.value) {
              return Positioned.fill(
                child: Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Assets.lotties.loading.lottie(
                      alignment: Alignment.center,
                      height: 120,
                    ),
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          })
        ],
      ),
      bottomNavigationBar: Obx(
        () {
          if (trackPlayerController.currentTrack == null) {
            return const SizedBox.shrink();
          }
          return TrackPlayer(data: trackPlayerController.currentTrack!);
        },
      ),
    );
  }
}
