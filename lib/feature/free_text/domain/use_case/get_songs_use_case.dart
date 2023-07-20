import 'package:bdd_isearch/feature/free_text/data/repository/songs_repository.dart';
import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSongsUseCase {
  const GetSongsUseCase(this._songsRepository);

  final SongsRepository _songsRepository;

  Future<List<Song>> call({required String searchText}) async {
    final songs = await _songsRepository.getSongs();
    return List.unmodifiable(songs.where((song) {
      final title = song.title.toLowerCase();
      final artist = song.artist.toLowerCase();
      final query = searchText.toLowerCase();
      return title.contains(query) || artist.contains(query);
    }));
  }
}
