import 'package:demo_architecture/src/data/dtos/album_dto.dart';
import 'package:demo_architecture/src/domain/entities/album.dart';

abstract class AlbumData{
  Future<AlbumDto> fetchAlbum();
}
abstract class AlbumRepository extends AlbumData{

}