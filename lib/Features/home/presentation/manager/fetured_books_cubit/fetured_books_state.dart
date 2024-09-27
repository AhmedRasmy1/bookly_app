part of 'fetured_books_cubit.dart';

sealed class FeturedBooksState extends Equatable {
  const FeturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeturedBooksInitial extends FeturedBooksState {}

final class FeturedBooksLoading extends FeturedBooksState {}

final class FeturedBooksSuccess extends FeturedBooksState {
  final List<BookModel> books;

  const FeturedBooksSuccess(this.books);
}

final class FeturedBooksFailure extends FeturedBooksState {
  final String errMessage;

  const FeturedBooksFailure(this.errMessage);
}
