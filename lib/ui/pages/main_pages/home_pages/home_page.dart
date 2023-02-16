import 'dart:math';

import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/api_models/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            _Recommendations(),
            SizedBox(height: 30),
            _TopAiring(),
          ],
        ),
      ),
    );
  }
}

class _Recommendations extends StatelessWidget {
  const _Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeRecommendationsBloc, AnimeRecommendationsState>(
      bloc: context.read<AnimeRecommendationsBloc>()
        ..add(const AnimeRecommendationsEvent.fetch()),
      builder: (context, state) => state.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Text(message),
        data: (data, _) => _RecommendationsView(list: data),
      ),
    );
  }
}

class _RecommendationsView extends StatelessWidget {
  const _RecommendationsView({Key? key, required this.list}) : super(key: key);

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        enlargeFactor: 1,
        viewportFraction: 1,
      ),
      items: list
          .where((anime) => anime.images?.maxSizeImage != null)
          .map(
            // (_) => Placeholder(),
            (anime) => SizedBox(
              width: double.infinity,
              child: Image(
                fit: BoxFit.fitHeight,
                image: NetworkImage(anime.images!.maxSizeImage!),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _TopAiring extends StatelessWidget {
  const _TopAiring({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAiringBloc, TopAiringState>(
      bloc: context.read<TopAiringBloc>()..add(const TopAiringEvent.fetch()),
      builder: (context, state) => state.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        data: (data, _) => _TopAiringHorizontalScroll(
          list: data.sublist(
            0,
            min(10, data.length),
          ),
        ),
        error: (message) => Text(message),
      ),
    );
  }
}

class _TopAiringHorizontalScroll extends StatelessWidget {
  const _TopAiringHorizontalScroll({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (Anime anime in list)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                child: Text(anime.simpleTitle),
              ),
            ),
          //
        ],
      ),
    );
  }
}
