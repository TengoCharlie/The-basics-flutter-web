import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:the_basics/datamodels/episode_item_model.dart';

class Api {
  static const String _apiEndPoint = 'http://localhost:3000/episode';
  Future<dynamic> getEpisodes() async {
    var response = await http.get(Uri.parse('$_apiEndPoint'));

    if (response.statusCode == 200) {
      var episodes = (json.decode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();
      return episodes;
    }

    // something wrong happened
    return 'Could Not fetch the episodes at this time';
  }
}
