import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'songs_api.g.dart';

@injectable
@RestApi()
abstract class SongsApi {
  @factoryMethod
  factory SongsApi(Dio dio) = _SongsApi;

  @GET("/catalogue")
  Future<List<Song>> getSongs();
}
