
import 'package:demo_architecture/src/data/dtos/album_dto.dart';
import 'package:demo_architecture/src/data/repository_impl/albumrepository_impl.dart';
import 'package:rxdart/rxdart.dart';


class HomeBloc{
 final albumRepository= AlbumRepositoryImpl();
 final albumFetchData = PublishSubject<AlbumDto>();
 Stream<AlbumDto> get fetchAlbum => albumFetchData.stream;

 getAlbum() async {
   AlbumDto albumDto = await albumRepository.fetchAlbum();
   albumFetchData.sink.add(albumDto);
 }

 dispose() {
   albumFetchData.close();
 }
}

final bloc = HomeBloc();
