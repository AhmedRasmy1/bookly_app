// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newsest_books_state.dart';

class NewsestBooksCubit extends Cubit<NewsestBooksState> {
  NewsestBooksCubit(
    this.homeRepo,
  ) : super(NewsestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchNewestBooks() async {
    emit(NewsestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(
        NewsestBooksFailure(failure.errmessage),
      );
    }, (books) {
      emit(
        NewsestBooksSuccess(books),
      );
    });
  }
}
