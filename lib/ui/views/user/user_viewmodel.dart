import 'dart:async';

import 'package:sky_stacked/app/app.locator.dart';
import 'package:sky_stacked/models/user.dart';
import 'package:sky_stacked/services/users_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UserViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final _userService = locator<UsersService>();

  late Future<List<User>> _users;

  Future<List<User>> get users => _users;

  UserViewModel() {
    fetchUsers();
  }

  void fetchUsers() async {
    _users = _userService.getUsers();
    rebuildUi();
  }

  void navigateBack() {
    _navigation.back();
  }

  String rowOneInfo(User user) {
    return 'ID: ${user.id}, Name: ${user.name}';
  }

  String rowTwoInfo(User user) {
    return 'Address: ${user.address.suite}, ${user.address.street}, ${user.address.city}, ${user.address.zipcode}';
  }

  String email(User user) {
    return user.email;
  }

  String phoneNumber(User user) {
    return user.phone;
  }
}
