import 'package:flutter_application_1/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/counter-bloc',
      builder: (context, state) => const CounterBlocScreen(),
    ),
  ],
);
