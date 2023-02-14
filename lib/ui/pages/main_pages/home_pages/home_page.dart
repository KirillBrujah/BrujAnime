import 'package:brujanime/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => TopAiringBloc()
          ..add(
            TopAiringEvent.load(),
          ),
        child: BlocBuilder<TopAiringBloc, TopAiringState>(
          builder: (context, state) => state.when(
            initial: () => CircularProgressIndicator(),
            data: (data) => Text('${data.length}'),
            error: (message) => Text(message),
          ),
        ),
      ),
    );
  }
}
