import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String searchKey});
}
