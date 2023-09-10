import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:tfg_v2/data/datasource/remote/remote_datasource.dart';
import 'package:tfg_v2/domain/model/category.dart';
import 'package:tfg_v2/domain/model/errors.dart';

abstract interface class CategoryRepository {
  Future<Either<AppError, List<Category>>> getCategories();
}

@Injectable(as: CategoryRepository)
class PlanRepositoryImpl implements CategoryRepository {
  final RemoteDatasource _remote;

  PlanRepositoryImpl(this._remote);

  @override
  Future<Either<AppError, List<Category>>> getCategories() {
    return _remote.getCategories();
  }
}
