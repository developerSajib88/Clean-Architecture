import 'package:clean_architecture/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class SearchProductUseCase extends UseCase<Either,String>{

  @override
  Future<Either> call({String? params}) async {
    // TODO: implement call
    throw UnimplementedError();
  }
}