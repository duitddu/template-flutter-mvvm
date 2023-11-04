
import 'package:template_flutter_mvvm/app/domain/repository/Repository.dart';

import '../model/Model.dart';

class GetModelUseCase {
  final Repository repository;

  GetModelUseCase(this.repository);

  Future<Model> invoke(String id) async {
    return repository.getModel(id);
  }
}