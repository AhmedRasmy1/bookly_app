import 'package:bookly_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/constants.dart';
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
          return const BooksDetailsView();
        },
      )
    ],
  );
}
