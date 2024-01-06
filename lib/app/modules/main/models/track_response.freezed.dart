// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackResponse _$TrackResponseFromJson(Map<String, dynamic> json) {
  return _TrackResponse.fromJson(json);
}

/// @nodoc
mixin _$TrackResponse {
  List<TrackData> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackResponseCopyWith<TrackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackResponseCopyWith<$Res> {
  factory $TrackResponseCopyWith(
          TrackResponse value, $Res Function(TrackResponse) then) =
      _$TrackResponseCopyWithImpl<$Res, TrackResponse>;
  @useResult
  $Res call({List<TrackData> data, int total});
}

/// @nodoc
class _$TrackResponseCopyWithImpl<$Res, $Val extends TrackResponse>
    implements $TrackResponseCopyWith<$Res> {
  _$TrackResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TrackData>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackResponseImplCopyWith<$Res>
    implements $TrackResponseCopyWith<$Res> {
  factory _$$TrackResponseImplCopyWith(
          _$TrackResponseImpl value, $Res Function(_$TrackResponseImpl) then) =
      __$$TrackResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrackData> data, int total});
}

/// @nodoc
class __$$TrackResponseImplCopyWithImpl<$Res>
    extends _$TrackResponseCopyWithImpl<$Res, _$TrackResponseImpl>
    implements _$$TrackResponseImplCopyWith<$Res> {
  __$$TrackResponseImplCopyWithImpl(
      _$TrackResponseImpl _value, $Res Function(_$TrackResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
  }) {
    return _then(_$TrackResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TrackData>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackResponseImpl implements _TrackResponse {
  const _$TrackResponseImpl(
      {required final List<TrackData> data, required this.total})
      : _data = data;

  factory _$TrackResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackResponseImplFromJson(json);

  final List<TrackData> _data;
  @override
  List<TrackData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'TrackResponse(data: $data, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackResponseImplCopyWith<_$TrackResponseImpl> get copyWith =>
      __$$TrackResponseImplCopyWithImpl<_$TrackResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackResponseImplToJson(
      this,
    );
  }
}

abstract class _TrackResponse implements TrackResponse {
  const factory _TrackResponse(
      {required final List<TrackData> data,
      required final int total}) = _$TrackResponseImpl;

  factory _TrackResponse.fromJson(Map<String, dynamic> json) =
      _$TrackResponseImpl.fromJson;

  @override
  List<TrackData> get data;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$TrackResponseImplCopyWith<_$TrackResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackData _$TrackDataFromJson(Map<String, dynamic> json) {
  return _TrackData.fromJson(json);
}

/// @nodoc
mixin _$TrackData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get preview => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;
  Album get album => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackDataCopyWith<TrackData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackDataCopyWith<$Res> {
  factory $TrackDataCopyWith(TrackData value, $Res Function(TrackData) then) =
      _$TrackDataCopyWithImpl<$Res, TrackData>;
  @useResult
  $Res call({int id, String title, String preview, Artist artist, Album album});

  $ArtistCopyWith<$Res> get artist;
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$TrackDataCopyWithImpl<$Res, $Val extends TrackData>
    implements $TrackDataCopyWith<$Res> {
  _$TrackDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? preview = null,
    Object? artist = null,
    Object? album = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackDataImplCopyWith<$Res>
    implements $TrackDataCopyWith<$Res> {
  factory _$$TrackDataImplCopyWith(
          _$TrackDataImpl value, $Res Function(_$TrackDataImpl) then) =
      __$$TrackDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String preview, Artist artist, Album album});

  @override
  $ArtistCopyWith<$Res> get artist;
  @override
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$TrackDataImplCopyWithImpl<$Res>
    extends _$TrackDataCopyWithImpl<$Res, _$TrackDataImpl>
    implements _$$TrackDataImplCopyWith<$Res> {
  __$$TrackDataImplCopyWithImpl(
      _$TrackDataImpl _value, $Res Function(_$TrackDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? preview = null,
    Object? artist = null,
    Object? album = null,
  }) {
    return _then(_$TrackDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TrackDataImpl implements _TrackData {
  const _$TrackDataImpl(
      {required this.id,
      required this.title,
      required this.preview,
      required this.artist,
      required this.album});

  factory _$TrackDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackDataImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String preview;
  @override
  final Artist artist;
  @override
  final Album album;

  @override
  String toString() {
    return 'TrackData(id: $id, title: $title, preview: $preview, artist: $artist, album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.album, album) || other.album == album));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, preview, artist, album);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackDataImplCopyWith<_$TrackDataImpl> get copyWith =>
      __$$TrackDataImplCopyWithImpl<_$TrackDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackDataImplToJson(
      this,
    );
  }
}

abstract class _TrackData implements TrackData {
  const factory _TrackData(
      {required final int id,
      required final String title,
      required final String preview,
      required final Artist artist,
      required final Album album}) = _$TrackDataImpl;

  factory _TrackData.fromJson(Map<String, dynamic> json) =
      _$TrackDataImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get preview;
  @override
  Artist get artist;
  @override
  Album get album;
  @override
  @JsonKey(ignore: true)
  _$$TrackDataImplCopyWith<_$TrackDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get coverSmall => throw _privateConstructorUsedError;
  String get coverMedium => throw _privateConstructorUsedError;
  String get coverBig => throw _privateConstructorUsedError;
  String get coverXl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {int id,
      String title,
      String cover,
      String coverSmall,
      String coverMedium,
      String coverBig,
      String coverXl});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cover = null,
    Object? coverSmall = null,
    Object? coverMedium = null,
    Object? coverBig = null,
    Object? coverXl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      coverSmall: null == coverSmall
          ? _value.coverSmall
          : coverSmall // ignore: cast_nullable_to_non_nullable
              as String,
      coverMedium: null == coverMedium
          ? _value.coverMedium
          : coverMedium // ignore: cast_nullable_to_non_nullable
              as String,
      coverBig: null == coverBig
          ? _value.coverBig
          : coverBig // ignore: cast_nullable_to_non_nullable
              as String,
      coverXl: null == coverXl
          ? _value.coverXl
          : coverXl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String cover,
      String coverSmall,
      String coverMedium,
      String coverBig,
      String coverXl});
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cover = null,
    Object? coverSmall = null,
    Object? coverMedium = null,
    Object? coverBig = null,
    Object? coverXl = null,
  }) {
    return _then(_$AlbumImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      coverSmall: null == coverSmall
          ? _value.coverSmall
          : coverSmall // ignore: cast_nullable_to_non_nullable
              as String,
      coverMedium: null == coverMedium
          ? _value.coverMedium
          : coverMedium // ignore: cast_nullable_to_non_nullable
              as String,
      coverBig: null == coverBig
          ? _value.coverBig
          : coverBig // ignore: cast_nullable_to_non_nullable
              as String,
      coverXl: null == coverXl
          ? _value.coverXl
          : coverXl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      {required this.id,
      required this.title,
      required this.cover,
      required this.coverSmall,
      required this.coverMedium,
      required this.coverBig,
      required this.coverXl});

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String cover;
  @override
  final String coverSmall;
  @override
  final String coverMedium;
  @override
  final String coverBig;
  @override
  final String coverXl;

  @override
  String toString() {
    return 'Album(id: $id, title: $title, cover: $cover, coverSmall: $coverSmall, coverMedium: $coverMedium, coverBig: $coverBig, coverXl: $coverXl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.coverSmall, coverSmall) ||
                other.coverSmall == coverSmall) &&
            (identical(other.coverMedium, coverMedium) ||
                other.coverMedium == coverMedium) &&
            (identical(other.coverBig, coverBig) ||
                other.coverBig == coverBig) &&
            (identical(other.coverXl, coverXl) || other.coverXl == coverXl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, cover, coverSmall,
      coverMedium, coverBig, coverXl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {required final int id,
      required final String title,
      required final String cover,
      required final String coverSmall,
      required final String coverMedium,
      required final String coverBig,
      required final String coverXl}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get cover;
  @override
  String get coverSmall;
  @override
  String get coverMedium;
  @override
  String get coverBig;
  @override
  String get coverXl;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get pictureSmall => throw _privateConstructorUsedError;
  String get pictureMedium => throw _privateConstructorUsedError;
  String get pictureBig => throw _privateConstructorUsedError;
  String get pictureXl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {int id,
      String name,
      String picture,
      String pictureSmall,
      String pictureMedium,
      String pictureBig,
      String pictureXl});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? picture = null,
    Object? pictureSmall = null,
    Object? pictureMedium = null,
    Object? pictureBig = null,
    Object? pictureXl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      pictureSmall: null == pictureSmall
          ? _value.pictureSmall
          : pictureSmall // ignore: cast_nullable_to_non_nullable
              as String,
      pictureMedium: null == pictureMedium
          ? _value.pictureMedium
          : pictureMedium // ignore: cast_nullable_to_non_nullable
              as String,
      pictureBig: null == pictureBig
          ? _value.pictureBig
          : pictureBig // ignore: cast_nullable_to_non_nullable
              as String,
      pictureXl: null == pictureXl
          ? _value.pictureXl
          : pictureXl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String picture,
      String pictureSmall,
      String pictureMedium,
      String pictureBig,
      String pictureXl});
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? picture = null,
    Object? pictureSmall = null,
    Object? pictureMedium = null,
    Object? pictureBig = null,
    Object? pictureXl = null,
  }) {
    return _then(_$ArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      pictureSmall: null == pictureSmall
          ? _value.pictureSmall
          : pictureSmall // ignore: cast_nullable_to_non_nullable
              as String,
      pictureMedium: null == pictureMedium
          ? _value.pictureMedium
          : pictureMedium // ignore: cast_nullable_to_non_nullable
              as String,
      pictureBig: null == pictureBig
          ? _value.pictureBig
          : pictureBig // ignore: cast_nullable_to_non_nullable
              as String,
      pictureXl: null == pictureXl
          ? _value.pictureXl
          : pictureXl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {required this.id,
      required this.name,
      required this.picture,
      required this.pictureSmall,
      required this.pictureMedium,
      required this.pictureBig,
      required this.pictureXl});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String picture;
  @override
  final String pictureSmall;
  @override
  final String pictureMedium;
  @override
  final String pictureBig;
  @override
  final String pictureXl;

  @override
  String toString() {
    return 'Artist(id: $id, name: $name, picture: $picture, pictureSmall: $pictureSmall, pictureMedium: $pictureMedium, pictureBig: $pictureBig, pictureXl: $pictureXl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.pictureSmall, pictureSmall) ||
                other.pictureSmall == pictureSmall) &&
            (identical(other.pictureMedium, pictureMedium) ||
                other.pictureMedium == pictureMedium) &&
            (identical(other.pictureBig, pictureBig) ||
                other.pictureBig == pictureBig) &&
            (identical(other.pictureXl, pictureXl) ||
                other.pictureXl == pictureXl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, picture, pictureSmall,
      pictureMedium, pictureBig, pictureXl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {required final int id,
      required final String name,
      required final String picture,
      required final String pictureSmall,
      required final String pictureMedium,
      required final String pictureBig,
      required final String pictureXl}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get picture;
  @override
  String get pictureSmall;
  @override
  String get pictureMedium;
  @override
  String get pictureBig;
  @override
  String get pictureXl;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
