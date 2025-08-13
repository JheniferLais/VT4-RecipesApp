import 'package:app4_receitas/data/repositories/recipe_repository.dart';
import 'package:app4_receitas/data/services/recipe_service.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:app4_receitas/ui/recipes/recipes_viewmodel.dart';
import 'package:app4_receitas/ui/recipe_detail/recipe_detail_viewmodel.dart';

import '../data/repositories/auth_repository.dart';
import '../data/services/auth_service.dart';
import '../ui/auth/auth_viewmodel.dart';
import '../ui/fav_recipes/fav_recipes_viewmodel.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Supabase
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  // Service
  getIt.registerLazySingleton<RecipeService>(() => RecipeService());
  getIt.registerLazySingleton<AuthService>(() => AuthService());

  // Repository
  getIt.registerLazySingleton<RecipeRepository>(() => RecipeRepository());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());

  // ViewModels
  getIt.registerLazySingleton<RecipesViewModel>(() => RecipesViewModel());
  getIt.registerLazySingleton<RecipeDetailViewModel>(() => RecipeDetailViewModel());
  getIt.registerLazySingleton<FavRecipesViewModel>(() => FavRecipesViewModel());
  getIt.registerLazySingleton<AuthViewModel>(() => AuthViewModel());
}