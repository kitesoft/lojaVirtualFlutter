import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loja_virtual/common/util/snackbar.dart';
import 'package:loja_virtual/infrastructure/navigation/routes.dart';
import 'package:loja_virtual/infrastructure/repository/user_manager.repository.dart';

class LoginController extends GetxController {
  final RepositoryUserManage repository;

  LoginController({@required this.repository}) : assert(repository != null) {
    repository.getCurrentUser();
  }

  final isLoading = false.obs;

  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();

  void showErro(String message) {
    SnackbarUtil.showError(message);
  }

  void onSucess() {
    repository.getCurrentUser();
    Get.offAllNamed(Routes.HOME);
  }
}
