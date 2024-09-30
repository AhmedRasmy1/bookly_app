import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/search/repository/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'serach_books_state.dart';

class SerachBooksCubit extends Cubit<SerachBooksState> {
  SerachBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String searchKey}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchBooks(searchKey: searchKey);
    result.fold(
      (failure) => emit(SearchBooksFailure(errMessage: failure.errmessage)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
