import 'package:auto_route/auto_route_annotations.dart';

import '../core/bottom_navigation_manager.dart';
import '../features/auth/presentation/sign_in/pages/sign_in_page.dart';
import '../features/auth/presentation/sign_up/pages/sign_up_screen.dart';
import '../features/auth/presentation/splash/splash_page.dart';
import '../features/search/presentation/search_page.dart';
import '../features/statistics/presentation/statistics_page.dart';
import '../features/walkthrough/presentation/walkthrough_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_exercises/choose_exercises_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_routine/choose_routine_page.dart';
import '../features/workout/presentation/create_workout/pages/choose_title/choose_title_page.dart';
import '../features/workout/presentation/create_workout/pages/exercise/exercise_page.dart';
import '../features/workout/presentation/create_workout/pages/filter/filter_page.dart';
import '../features/workout/presentation/create_workout/pages/loading/loading_page.dart';
import '../features/workout/presentation/create_workout/pages/selected_exercises/selected_exercises_page.dart';
import '../features/workout/presentation/workout_overview/pages/workout_overview_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: WalkthroughPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: BottomNavigationManager),
    MaterialRoute(page: WorkoutOverviewPage),
    MaterialRoute(page: ChooseTitlePage),
    MaterialRoute(page: ChooseExercisesPage),
    MaterialRoute(page: StatisticsPage),
    MaterialRoute(page: SearchPage),
    MaterialRoute(page: ExercisePage),
    MaterialRoute(page: SelectedExercisesPage),
    MaterialRoute(page: ChooseRoutinePage),
    MaterialRoute(page: FilterPage),
    MaterialRoute(page: LoadingPage),
  ],
)
class $Router {}
