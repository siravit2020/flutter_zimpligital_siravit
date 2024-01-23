// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackResponseImpl _$$TrackResponseImplFromJson(Map<String, dynamic> json) =>
    _$TrackResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TrackData.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
    );

Map<String, dynamic> _$$TrackResponseImplToJson(_$TrackResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };

_$TrackDataImpl _$$TrackDataImplFromJson(Map<String, dynamic> json) =>
    _$TrackDataImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      preview: json['preview'] as String,
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrackDataImplToJson(_$TrackDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'preview': instance.preview,
      'artist': instance.artist,
      'album': instance.album,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      cover: json['cover'] as String?,
      coverSmall: json['cover_small'] as String?,
      coverMedium: json['cover_medium'] as String?,
      coverBig: json['cover_big'] as String?,
      coverXl: json['cover_xl'] as String?,
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
      'cover_small': instance.coverSmall,
      'cover_medium': instance.coverMedium,
      'cover_big': instance.coverBig,
      'cover_xl': instance.coverXl,
    };

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      picture: json['picture'] as String?,
      pictureSmall: json['picture_small'] as String?,
      pictureMedium: json['picture_medium'] as String?,
      pictureBig: json['picture_big'] as String?,
      pictureXl: json['picture_xl'] as String?,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture': instance.picture,
      'picture_small': instance.pictureSmall,
      'picture_medium': instance.pictureMedium,
      'picture_big': instance.pictureBig,
      'picture_xl': instance.pictureXl,
    };
