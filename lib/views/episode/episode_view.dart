import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/datamodels/season_details_model.dart';
import 'package:the_basics/viewmodels/episodes_view_model.dart';
import 'package:the_basics/widget/episodes_list/episodes_list.dart';
import 'package:the_basics/widget/season_details/season_details.dart';

class EpisodeView extends StatelessWidget {
  const EpisodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodesViewModel>.reactive(
        viewModelBuilder: () => EpisodesViewModel(),
        onModelReady: (model) => model.getEpisodes(),
        builder: (context, model, child) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              SeasonDetails(
                details: SeasonDetailsModel(
                  title: 'SEASON 1',
                  description:
                      'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              model.episodes == null
                  ? const CircularProgressIndicator()
                  : EpisodesList(episodes: model.episodes!),
            ],
          ));
        });
  }
}
