import 'package:flutter/material.dart';
import 'package:sky_stacked/ui/widgets/user_card.dart';
import 'package:stacked/stacked.dart';

import 'user_viewmodel.dart';

class UserView extends StackedView<UserViewModel> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UserViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: FutureBuilder(
          future: viewModel.users,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return userCard(snapshot.data![index],
                      idAndName: viewModel.rowOneInfo(snapshot.data![index]),
                      address: viewModel.rowTwoInfo(snapshot.data![index]),
                      email: viewModel.email(snapshot.data![index]),
                      phoneNumber:
                          viewModel.phoneNumber(snapshot.data![index]));
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
              // throw Exception(snapshot.error);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  UserViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UserViewModel();
}
