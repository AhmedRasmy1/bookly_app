import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/search/repository/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'serach_books_state.dart';

class SerachBooksCubit extends Cubit<SerachBooksState> {
  SerachBooksCubit(this.searchRepo) : super(SerachBooksInitial());

  final SearchRepo searchRepo;

  Future<void> featchSearchBooks({required String searchKey}) async {
    emit(SerachBooksLoading());
    var result = await searchRepo.fetchSearchBooks(searchKey: searchKey);
    result.fold((failure) {
      emit(
        SerachBooksFailure(),
      );
    }, (books) {
      emit(
        SerachBooksSuccess(books),
      );
    });
  }
}
