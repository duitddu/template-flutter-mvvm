import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_mvvm/app/data/repository/RepositoryImpl.dart';
import 'package:template_flutter_mvvm/app/domain/repository/Repository.dart';
import 'datasource.dart';

final repositoryProvider = Provider<Repository>(
    (ref) => RepositoryImpl(ref.read(modelSourceProvider)));
