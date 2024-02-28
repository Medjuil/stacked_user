import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FutureBuilder(
                //     future: viewModel.fetchUsers(),
                //     builder: (context, snapshot) {
                //       if (snapshot.hasData) {
                //         return ListView.builder(
                //             itemCount: snapshot.data!.length,
                //             itemBuilder: (context, index) {
                //               String name = snapshot.data![index];
                //               ListTile(
                //                 title: Text('sdsd'),
                //               );
                //             });
                //         // return ListView.builder(itemBuilder: (context, index) {});
                //       } else if (snapshot.hasError) {
                //         return Text('Error: ${snapshot.error}');
                //       } else {
                //         return const Center(
                //           child: CircularProgressIndicator(),
                //         );
                //       }
                //     }),
                //
                // Text('${viewModel.users[1]}'),
                ElevatedButton(
                  onPressed: () => viewModel.viewUsers(),
                  child: const Row(
                    children: [Icon(Icons.arrow_back), Text('Go to user')],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
