import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter_clean_arch/domain/models/album/album.dart';
import 'package:flutter_clean_arch/domain/models/album/gateway/alubm_gateway.dart';
import 'package:flutter_clean_arch/infraestructure/helpers/maps/album/album_mapper.dart';

class AlbumApi extends AlbumGateway {
  AlbumMapper _albumMapper = AlbumMapper();
  @override
  Future<List<Album>> getAll() async {
    throw Exception('No se ha implementado este método ');
  }

  @override
  Future<Album> getByID(String id) async {
    final albumUrl =
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$id');
    final response = await http.get(albumUrl);
    if (response.statusCode == 200) {
      return _albumMapper.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }
}
