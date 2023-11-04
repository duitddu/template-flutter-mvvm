import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
import '../domain/model/Model.dart';
import '../domain/repository/Repository.dart';
import '../domain/usecase/GetModelUseCase.dart';

sealed class ViewState {}
class Idle extends ViewState {}
class Success extends ViewState {
  final Model model;

  Success(this.model);
}

class Error extends ViewState {}

class ViewModel extends ChangeNotifier {
  final GetModelUseCase getModelUseCase;
  final Repository repository;

  ViewState _viewState = Idle();
  ViewState get viewState => _viewState;

  ViewModel(this.getModelUseCase, this.repository) : super() {
    updateState();
  }

  void updateState() async {
    _viewState = Idle();
    notifyListeners();

    Model model = await getModelUseCase.invoke(generateRandomString(5));

    _viewState = Success(model);
    notifyListeners();
  }

  String generateRandomString(int len) {
    var r = Random();
    return String.fromCharCodes(List.generate(len, (index) => r.nextInt(33) + 89));
  }
}