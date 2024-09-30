import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/search/repository/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String searchKey}) async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=subject:$searchKey&key=AIzaSyDgwPXfGBhgP3hFHMT4fjL9mFgT5OxG9_8',
      );

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left((ServerFailure.fromDioError(e)));
      }

      return left(ServerFailure(errmessage: e.toString()));
    }
  }
}
