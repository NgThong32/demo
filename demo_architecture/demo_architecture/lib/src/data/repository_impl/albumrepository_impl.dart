import 'package:demo_architecture/src/data/data_source/remote/album_repositories_datasource.dart';
import 'package:demo_architecture/src/data/dtos/album_dto.dart';
import 'package:demo_architecture/src/domain/repositories/album_repositories.dart';

class AlbumRepositoryImpl extends AlbumRepository{
  AlbumRepositoriesDataSource albumRepositoriesDataSource = AlbumRepositoriesDataSource();
  @override
  Future<AlbumDto> fetchAlbum() {
   return  albumRepositoriesDataSource.fetchAlbum();
  }

}