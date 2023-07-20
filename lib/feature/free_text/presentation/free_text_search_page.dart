import 'dart:async';

import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:bdd_isearch/feature/free_text/domain/use_case/get_songs_use_case.dart';
import 'package:bdd_isearch/feature/free_text/presentation/generic_error_dialog.dart';
import 'package:bdd_isearch/feature/free_text/presentation/no_results_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class FreeTextSearchPage extends StatefulWidget {
  const FreeTextSearchPage({super.key});

  @override
  State<FreeTextSearchPage> createState() => _FreeTextSearchPageState();
}

class _FreeTextSearchPageState extends State<FreeTextSearchPage> {
  final List<Song> _songs = [];
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                key: const Key('_search_bar_'),
                onChanged: (text) {
                  setState(() {
                    _searchText = text;
                  });
                },
              ),
              Expanded(
                child: _songs.isNotEmpty
                    ? ListView.builder(
                        itemCount: _songs.length,
                        itemBuilder: (context, index) {
                          final song = _songs[index];
                          return ListTile(
                            title: Text(song.title),
                            subtitle: Text(song.artist),
                          );
                        },
                      )
                    : const NoResultsWidget(),
              ),
              MaterialButton(
                color: Colors.indigo[400],
                disabledColor: Colors.indigo[100],
                textColor: _searchText.isNotEmpty
                    ? Colors.indigo[900]
                    : Colors.indigo[200],
                padding: const EdgeInsets.all(16.0),
                onPressed: _searchText.isNotEmpty ? _searchSongs : null,
                child: const Text('Search'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _searchSongs() async {
    try {
      final songs = await GetIt.instance<GetSongsUseCase>()(
        searchText: _searchText,
      );
      setState(() {
        _songs.clear();
        _songs.addAll(songs);
      });
    } on Exception catch (_) {
      _showError();
    }
  }

  void _showError() {
    unawaited(
      showDialog(
        context: context,
        builder: (_) {
          return const GenericErrorDialog();
        },
      ),
    );
  }
}
