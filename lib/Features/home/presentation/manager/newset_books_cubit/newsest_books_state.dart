part of 'newsest_books_cubit.dart';

sealed class NewsestBooksState extends Equatable {
  const NewsestBooksState();

  @override
  List<Object> get props => [];
}

final class NewsestBooksInitial extends NewsestBooksState {}

final class NewsestBooksLoading extends NewsestBooksState {}

final class NewsestBooksSuccess extends NewsestBooksState {
  final List<BookModel> books;
  const NewsestBooksSuccess(this.books);
}

final class NewsestBooksFailure extends NewsestBooksState {
  final String errMessage;
  const NewsestBooksFailure(this.errMessage);
}
