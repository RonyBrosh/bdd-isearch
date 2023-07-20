import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';

class FreeTextTestData {
  static final FreeTextTestData instance = FreeTextTestData._internal();

  FreeTextTestData._internal();

  final _catalogue = List<Song>.empty(growable: true);

  void reset() {
    _catalogue.clear();
  }

  void addSong(Song song) => _catalogue.add(song);

  List<Song> getSongs() => List.unmodifiable(_catalogue);
}
