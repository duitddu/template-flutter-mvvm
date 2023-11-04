import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_mvvm/app/presentation/ViewModel.dart';
import 'package:template_flutter_mvvm/di/viewmodel.dart';

class MyView extends ConsumerWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(viewModelProvider);

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: contentView(viewModel)
      ),
    );
  }

  Widget contentView(ViewModel viewModel) {
    ViewState state = viewModel.viewState;

    if (state is Success) {
      return Column(
        children: [
          Text(state.model.id),
          TextButton(
            onPressed: () => { viewModel.updateState() },
            child: const Text("Update"),
          )
        ],
      );
    }

    if (state is Error) {
      return errorView();
    }

    return const CircularProgressIndicator();
  }

  Widget successView(Success state) {
    return Text(state.model.id);
  }

  Widget errorView() {
    return const Text("Error!!");
  }
}

