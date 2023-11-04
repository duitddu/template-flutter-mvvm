import '../../domain/model/Model.dart';

// Implement data source (rest api, local db)
class ModelSource {
  Future<Model> getModel(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return Model(id);
  }
}