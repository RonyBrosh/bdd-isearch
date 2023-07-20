import 'package:bdd_isearch/feature/free_text/data/repository/songs_repository.dart';
import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSongsUseCase {
  const GetSongsUseCase(this._songsRepository);

  final SongsRepository _songsRepository;

  Future<List<Song>> call({required String searchText}) =>
      _songsRepository.getSongs(searchText: searchText);
}
