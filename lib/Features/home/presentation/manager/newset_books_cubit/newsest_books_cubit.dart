import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newsest_books_state.dart';

class NewsestBooksCubit extends Cubit<NewsestBooksState> {
  NewsestBooksCubit() : super(NewsestBooksInitial());
}
