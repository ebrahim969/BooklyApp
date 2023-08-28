import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static const kHomeRoute = '/homeView';
  static const kBookDetails = '/bookDetails';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),

    GoRoute(
      path: kHomeRoute,
      builder: (context, state) => const HomeView(),
    ),

    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookDetails(),
    ),
  ],
);
}