import 'package:template_flutter_mvvm/app/data/source/ModelSource.dart';
import 'package:template_flutter_mvvm/app/domain/model/Model.dart';
import 'package:template_flutter_mvvm/app/domain/repository/Repository.dart';

class RepositoryImpl extends Repository {
  final ModelSource modelSource;

  RepositoryImpl(this.modelSource);

  @override
  Future<Model> getModel(String id) async {
    return modelSource.getModel(id);
  }
}