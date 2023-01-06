import 'dart:convert';
import 'package:demo_architecture/src/ultils/constant.dart';
import '../../../domain/repositories/album_repositories.dart';
import '../../dtos/album_dto.dart';
import 'package:http/http.dart' as http;

class AlbumRepositoriesDataSource implements AlbumData {
  @override
  Future<AlbumDto> fetchAlbum() async {
      final response = await http.get(Uri.parse('${Constant.baseUrl}/albums/3')).timeout(const Duration(seconds: 60));
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        print(result);
        return AlbumDto.fromJson(result);
      } else {
        throw Exception('Error Code: ${response.statusCode}');
      }
  }
}

