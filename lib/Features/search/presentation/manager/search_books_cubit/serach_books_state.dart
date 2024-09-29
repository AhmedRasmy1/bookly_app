part of 'serach_books_cubit.dart';

sealed class SerachBooksState extends Equatable {
  const SerachBooksState();

  @override
  List<Object> get props => [];
}

final class SerachBooksInitial extends SerachBooksState {}

final class SerachBooksLoading extends SerachBooksState {}

final class SerachBooksSuccess extends SerachBooksState {
  final List<BookModel> books;
  const SerachBooksSuccess(this.books);
}

final class SerachBooksFailure extends SerachBooksState {}
