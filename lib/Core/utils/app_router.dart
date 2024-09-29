import 'service_locator.dart';
import '../widget/custom_shimmer_bastseller.dart';
import '../widget/custom_shimmer_featured_book.dart';
import '../../Features/Splash/Presentation/Views/splash_view.dart';
import '../../Features/home/data/model/book_model/book_model.dart';
import '../../Features/home/data/repository/home_repo_impl.dart';
import '../../Features/home/presentation/manager/similar_books_cubit/similer_books_cubit.dart';
import '../../Features/home/presentation/views/book_details_view.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/search/presentation/views/search_view.dart';
import '../../constants.dart';
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
