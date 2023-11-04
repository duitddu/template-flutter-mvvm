import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_mvvm/app/domain/usecase/GetModelUseCase.dart';
import 'package:template_flutter_mvvm/di/repository.dart';

final getModelUseCaseProvider = Provider<GetModelUseCase>(
    (ref) => GetModelUseCase(ref.read(repositoryProvider)));
