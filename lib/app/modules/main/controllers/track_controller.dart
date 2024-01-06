import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/repositories/track_repository.dart';
import 'package:flutter_zimpligital_siravit/core/utils/my_logger.dart';
import 'package:get/get.dart';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TrackController extends GetxController {
  static TrackController get to => Get.find();

  TrackController({
    required this.trackRepository,
    required this.pagingController,
  });

  final TrackRepository trackRepository;
  final PagingController<int, TrackData> pagingController;

  final int limit = 20;

  @override
  Future<void> onInit() async {
    pagingController.addPageRequestListener((int pageKey) {
      _fetchPage(pageKey);
    });
    super.onInit();
  }

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await trackRepository.getTrackList(
        index: pageKey,
        limit: limit,
      );
      final isLastPage = response.total < limit;
      if (isLastPage) {
        pagingController.appendLastPage(response.data);
      } else {
        final nextPageKey = pageKey + response.total;
        pagingController.appendPage(response.data, nextPageKey);
      }
    } catch (error) {
      logger.e(error);
      pagingController.error = error;
    }
  }
}
