part of 'serach_books_cubit.dart';

sealed class SerachBooksState extends Equatable {
  const SerachBooksState();

  @override
  List<Object> get props => [];
}

class SearchBooksInitial extends SerachBooksState {}

class SearchBooksLoading extends SerachBooksState {}

class SearchBooksSuccess extends SerachBooksState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}

class SearchBooksFailure extends SerachBooksState {
  final String errMessage;

  const SearchBooksFailure({this.errMessage = 'An unknown error occurred'});
}
