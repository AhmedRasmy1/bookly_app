import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Core/widget/custom_shimmer_bastseller.dart';
import 'package:bookly_app/Core/widget/custom_shimmer_featured_book.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repository/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similer_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplachRouteBath,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeRouteBath,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsRouteBath,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SimilerBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BooksDetailsView(
              bookModel: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSerachBooksRouteBath,
        builder: (context, state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: kShimmerPageRouteBath,
        builder: (context, state) {
          return const CustomShimmer();
        },
      ),
      GoRoute(
        path: kShimmerDetailsRouteBath,
        builder: (context, state) {
          return const ShimmerPlaceholder();
        },
      )
    ],
  );
}
