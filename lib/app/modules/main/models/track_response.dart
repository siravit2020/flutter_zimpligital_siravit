import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_response.freezed.dart';
part 'track_response.g.dart';

@freezed
class TrackResponse with _$TrackResponse {
  const factory TrackResponse({
    required List<TrackData> data,
    required int total,
  }) = _TrackResponse;

  factory TrackResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackResponseFromJson(json);
}

@freezed
class TrackData with _$TrackData {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory TrackData({
    required int id,
    required String title,
    required String preview,
    required Artist artist,
    required Album album,
  }) = _TrackData;

  factory TrackData.fromJson(Map<String, dynamic> json) =>
      _$TrackDataFromJson(json);
}

@freezed
class Album with _$Album {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory Album({
    required int id,
    required String title,
    required String cover,
    required String coverSmall,
    required String coverMedium,
    required String coverBig,
    required String coverXl,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory Artist({
    required int id,
    required String name,
    required String picture,
    required String pictureSmall,
    required String pictureMedium,
    required String pictureBig,
    required String pictureXl,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
