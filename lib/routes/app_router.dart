import 'package:go_router/go_router.dart';

import '../screens/auth/login_screen.dart';
import '../screens/family/choose_family_screen.dart';
import '../screens/family/create_family_screen.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/family/join_family_screen.dart';
import '../screens/members/members_screen.dart';
import '../screens/members/add_member_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/choose-family',
      builder: (context, state) => const ChooseFamilyScreen(),
    ),
    GoRoute(
      path: '/create-family',
      builder: (context, state) => const CreateFamilyScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/join-family',
      builder: (context, state) => const JoinFamilyScreen(),
    ),
    GoRoute(
      path: '/members',
      builder: (context, state) => const MembersScreen(),
    ),

    GoRoute(
      path: '/add-members',
      builder: (context, state) => const AddMemberScreen(),
    ),
  ],
);