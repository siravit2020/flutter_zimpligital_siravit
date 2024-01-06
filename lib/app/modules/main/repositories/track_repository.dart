import 'package:dio/dio.dart';
import 'package:flutter_zimpligital_siravit/app/modules/main/models/track_response.dart';

import 'package:retrofit/retrofit.dart';

part 'track_repository.g.dart';

@RestApi()
abstract class TrackRepository {
  factory TrackRepository(Dio dio, {String baseUrl}) = _TrackRepository;

  @GET('/chart/0/tracks')
  Future<TrackResponse> getTrackList({
    @Query('index') int? index,
    @Query('limit') int? limit,
  });
}
