import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit(this.homeRepo) : super(FeturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchFuturedBooks() async {
    emit(FeturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(
        FeturedBooksFailure(failure.errmessage),
      );
    }, (books) {
      emit(
        FeturedBooksSuccess(books),
      );
    });
  }
}
