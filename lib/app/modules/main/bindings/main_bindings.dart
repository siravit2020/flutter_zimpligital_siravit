import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_player_controller.dart';
import 'package:flutter_zimpligital_siravit/core/services/api_service.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/controllers/track_controller.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/repositories/track_repository.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    final trackController = TrackController(
      trackRepository: TrackRepository(
        ApiService.dio,
      ),
      pagingController: PagingController<int, TrackData>(
        firstPageKey: 0,
      ),
    );
    Get.put(
      trackController,
    );
    Get.put(
      TrackPlayerController(
        trackController: trackController,
      ),
    );
  }
}
