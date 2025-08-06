import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sukun/features/home/presentation/views/home_view.dart';
import 'package:sukun/features/message/presentation/views/message_view.dart';
import 'package:sukun/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/HomeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/MessageView',
        builder: (BuildContext context, GoRouterState state) {
          return ReadingView(title: state.extra as String);
        },
      ),
    ],
  );
}
