import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_mvvm/app/presentation/ViewModel.dart';
import 'package:template_flutter_mvvm/di/repository.dart';
import 'package:template_flutter_mvvm/di/usecase.dart';

final viewModelProvider = ChangeNotifierProvider((ref) =>
    ViewModel(ref.read(getModelUseCaseProvider), ref.read(repositoryProvider)));
