import 'package:flutter_clean_arch/domain/use_cases/album/get_album_use_case.dart';
import 'package:flutter_clean_arch/infraestructure/driven_adapter/album_api/album_api.dart';

// import 'package:flutter_clean_arch/infraestructure/driven_adapter/album_api/album_api_delay.dart';
class UseCaseConfig {
  GetAlbumUseCase getAlbumUseCase;
  AlbumApi _albumApi;
  UseCaseConfig() {
    _albumApi = AlbumApi();
    getAlbumUseCase = GetAlbumUseCase(_albumApi);
  }
}
