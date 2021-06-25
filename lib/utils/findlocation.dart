import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:seller_app/data/model/suggestion_model.dart';
import 'package:seller_app/logic/bloc/location/findloc/findloc_bloc.dart';

class FindLocation {
  static final String androidKey = 'AIzaSyBPv-PhyiNbVibrJGDdsL_v2dlrcQqtg9g';
  static final String iosKey = 'AIzaSyDWeHbvQmX7UoUNanOLHKOUsdZCA1GMyZ8';
  final apiKey = Platform.isAndroid ? androidKey : iosKey;

  Future<List<SuggestionModel>> findLocation(BuildContext context,
      {required String query, required String sessionToken}) async {
    final client = Client();
    var encoded = Uri.encodeComponent(query);
    List<SuggestionModel> _suggestion = [];
    String request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$encoded&language=ID_id&components=country:id&key=$apiKey&sessiontoken=$sessionToken';

    final response = await client.get(Uri.parse(request));

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      if (result['status'] == 'OK') {
        var suggestionlist = result['predictions']
            .map<SuggestionModel>((p) => SuggestionModel(
                p['place_id'],
                p['description'],
                p['structured_formatting']['main_text'],
                p['structured_formatting']['secondary_text']))
            .toList();

        _suggestion.addAll(suggestionlist);

        if (query.length <= 3) {
          _suggestion.clear();
        }
        // BlocProvider.of<FindlocBloc>(context)
        //     .add(FindlocEvent.eLocFind(_suggestion));
        context.read<FindlocBloc>().add(FindlocEvent.eLocFind(_suggestion));
        // .add(LocationFindEvent(suggestion: _suggestion));
        return _suggestion;
      }
      if (result['status'] == 'ZERO_RESULTS') {
        _suggestion.clear();

        context.read<FindlocBloc>().add(FindlocEvent.eLocFind(_suggestion));
        // BlocProvider.of<FindlocBloc>(context)
        //     .add(FindlocEvent.eLocFind(_suggestion));
        // BlocProvider.of<FindlocBloc>(context)
        //     .add(LocationFindEvent(suggestion: _suggestion));
        return [];
      }
      _suggestion.clear();
      context.read<FindlocBloc>().add(FindlocEvent.eLocFind(_suggestion));
      // BlocProvider.of<FindlocBloc>(context)
      //     .add(LocationFindEvent(suggestion: _suggestion));
      return [];
    } else {
      _suggestion.clear();
      context.read<FindlocBloc>().add(FindlocEvent.eLocFind(_suggestion));
      // BlocProvider.of<FindlocBloc>(context)
      //     .add(LocationFindEvent(suggestion: _suggestion));
      return [];
    }
  }
}
