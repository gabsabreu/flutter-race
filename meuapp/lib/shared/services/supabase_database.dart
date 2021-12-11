import 'package:flutter/foundation.dart';
import 'package:meuapp/shared/models/user_model.dart';
import 'package:meuapp/shared/services/app_database.dart';
import 'package:supabase/supabase.dart';

class SupabaseDatabase implements AppDatabase {
  late final SupabaseClient client;

  SupabaseDatabase() {
    init();
  }

  @override
  void init() {
    client = SupabaseClient(
      const String.fromEnvironment("SUPABASEURL"),
      const String.fromEnvironment("SUPABASEKEY"),
    );
  }

  @override
  Future<UserModel> createAccount({required String email, required String password, required String name}) async {
    final response = await client.auth.signUp(email, password);
    if (response.error == null) {
      final user = UserModel.fromMap(response.user!.toJson());
      return user;
    } else {
      throw Exception(response.error?.message ?? 'Não foi possível criar conta');
    }
  }

  @override
  Future<UserModel> login({required String email, required String password}) async {
    final response = await client.auth.signIn(email: email, password: password);
    if (response.error == null) {
      final user = UserModel.fromMap(response.user!.toJson());
      return user;
    } else {
      throw Exception(response.error?.message ?? 'Não foi possível realizar login');
    }
  }
}
