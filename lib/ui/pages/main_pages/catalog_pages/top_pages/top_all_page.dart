import 'package:auto_route/annotations.dart';
import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/assets.gen.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/widgets/widgets.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TopAllPage extends StatelessWidget {
  const TopAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    final s = getIt.get<S>();
    return BlocBuilder<TopAllCubit, DataAnimeState>(
      builder: (context, state) {
        if (state.data.isEmpty) {
          return BlocBuilder<TopAllLoadingCubit, DataLoadingState>(
            bloc: context.read<TopAllLoadingCubit>()..fetch(),
            builder: (context, state) => state.maybeWhen(
              initial: () => const TopListLoading(),
              // TODO: Top error
              error: (message) => CenterError(message),
              orElse: () => Text(s.list_is_empty),
            ),
          );
        }

        return _TopAnimeList(list: state.data);
      },
    );
  }
}

class CenterError extends StatelessWidget {
  const CenterError(
    this.message, {
    this.height = 150,
    super.key,
  });

  final String message;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: .4,
            child: Assets.svg.brujiko.sad.svg(
              height: height,
            ),
          ),
          const SizedBox(height: 20),
          Text(message),
        ],
      ),
    );
  }
}

class _TopAnimeList extends StatelessWidget {
  const _TopAnimeList({required this.list});

  final List<Anime> list;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const EmptyListMessage();
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          TopFirstAnimeCard(list.first),
          const SizedBox(height: 30),
          for (int i = 1; i < list.sublist(1).length; i++)
            TopAnimeCard(list[i], i + 1),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
