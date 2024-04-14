import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/ui/theme/theme.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:brujanime/utils/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// Data Loading Blocs
        BlocProvider(
          create: (_) => TopUpcomingLoadingCubit(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          /// Anime Blocs
          BlocProvider(create: (_) => TopAiringBloc()),
          BlocProvider(create: (_) => AnimeRecommendationsBloc()),
          BlocProvider(create: (_) => SeasonNowBloc()),
          BlocProvider(
            create: (context) => TopUpcomingCubit(
              loadingCubit: context.read<TopUpcomingLoadingCubit>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'BrujAnime',
          theme: kDarkTheme,
        ),
      ),
    );
  }
}
