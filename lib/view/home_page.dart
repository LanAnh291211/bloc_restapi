import 'package:flutter/material.dart';

import '../blocs/bloc_export.dart';
import '../repository/user_repository.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(RepositoryProvider.of<UserRepository>(context))..add(UserLoadEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User'),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if( state is UserLoadingState ) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if( state is UserLoadedState ) {
              return Column(
                children: [
                  Text(state.user.name!),
                  Text(state.user.salary.toString()),
                  Text(state.user.married.toString()),
                ],
              );
            }
            return const Center(
              child: Text('Error'),
            );
          },
        ),
      ),
    );
  }
}
