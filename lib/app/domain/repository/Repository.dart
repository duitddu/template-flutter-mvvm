
import '../model/Model.dart';

abstract class Repository {
  Future<Model> getModel(String id);
}