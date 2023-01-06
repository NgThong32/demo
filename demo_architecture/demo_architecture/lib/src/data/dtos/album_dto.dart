import 'package:demo_architecture/src/domain/entities/album.dart';
import 'package:json_annotation/json_annotation.dart';
part 'album_dto.g.dart';

@JsonSerializable()
class AlbumDto extends AlbumEntities {
  AlbumDto(this.userId,this.id,this.title);
  factory AlbumDto.fromJson(Map<String, dynamic> json) => _$AlbumDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumDtoToJson(this);
  @override
  int? id;

  @override
  String? title;

  @override
  int? userId;
}