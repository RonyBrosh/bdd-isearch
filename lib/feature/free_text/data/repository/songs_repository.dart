import 'package:bdd_isearch/feature/free_text/data/api/songs_api.dart';
import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:injectable/injectable.dart';

@injectable
class SongsRepository {
  const SongsRepository(this._songsApi);

  final SongsApi _songsApi;

  Future<List<Song>> getSongs() => _songsApi.getSongs();
}
