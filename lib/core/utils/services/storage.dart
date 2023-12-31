import 'dart:convert';

import 'package:get_storage/get_storage.dart';

class Storage {
  Storage() {
    storage = GetStorage();
  }
  static const String _refreshToken = 'refreshToken';
  static const _jwtToken = 'jwtToken';
  static const String _isLoggedIn = 'isLoggedIn';
  static const String _locale = 'locale';
  static const _fcmToken = 'fcmToken';
  static const _onBoardingVisible = 'onBoardingVisible';
  static const _userType = 'userType';
  static const _phoneNumber = 'phoneNumber';
  static const _firstName = 'firstName';
  static const _lastName = 'lastName';
  static const _userId = 'userId';
  static const _avatar = 'avatar';
  static const _firebaseId = 'firebaseId';
  static const _email = 'email';
  static const _type = 'type';
  static const _teamId = 'team_id';
  static const _teamDocument = 'teamDocument';
  static const _customerId = 'customerId';
  static const _notification = 'notification';
  static const _latitude = 'latitude';
  static const _longitude = 'longitude';

  late GetStorage storage;

  void remove(String key) {
    storage.remove(key);
  }

  void write(String key, dynamic value) {
    storage.write(key, value);
  }

  T? read<T>(String key) {
    return storage.read<T>(key);
  }

  void erase() {
    storage.erase();
  }

  bool get isLoggedIn => storage.read<bool>(_isLoggedIn) ?? false;

  set isLoggedIn(bool newValue) => storage.write(_isLoggedIn, newValue);

  String? get fcmToken => storage.read<String>(_fcmToken);
  set fcmToken(String? newValue) => storage.write(_fcmToken, newValue);

  String? get jwtToken => storage.read<String>(_jwtToken);
  set jwtToken(String? newValue) => storage.write(_jwtToken, newValue);
  String? get firebaseUID => storage.read<String>(_firebaseId);
  set firebaseUID(String? newValue) => storage.write(_firebaseId, newValue);
  String? get locale => storage.read<String>(_locale);
  set locale(String? newValue) => storage.write(_locale, newValue);

  String? get phoneNumber => storage.read<String>(_phoneNumber);
  set phoneNumber(String? newValue) => storage.write(_phoneNumber, newValue);
  String? get refreshToken => storage.read<String>(_refreshToken);
  set refreshToken(String? newValue) => storage.write(_refreshToken, newValue);

  String? get customerId => storage.read<String>(_customerId);
  set customerId(String? newValue) => storage.write(_customerId, newValue);

  String? get fistName => storage.read<String>(_firstName);
  set fistName(String? newValue) => storage.write(_firstName, newValue);

  String? get lastName => storage.read<String>(_lastName);
  set lastName(String? newValue) => storage.write(_lastName, newValue);

  String? get userId => storage.read<String>(_userId);
  set userId(String? newValue) => storage.write(_userId, newValue);
  String? get email => storage.read<String>(_email);
  set email(String? newValue) => storage.write(_email, newValue);
  String? get avatar => storage.read<String>(_avatar);
  set avatar(String? newValue) => storage.write(_avatar, newValue);
  bool get onBoardingVisible => storage.read<bool>(_onBoardingVisible) ?? false;
  String? get type => storage.read<String>(_type);
  set type(String? newValue) => storage.write(_type, newValue);
  String? get teamDocument => storage.read<String>(_teamDocument);
  set teamDocument(String? newValue) => storage.write(_teamDocument, newValue);
  String? get latitude => storage.read<String>(_latitude);
  set latitude(String? newValue) => storage.write(_latitude, newValue);
  String? get longitude => storage.read<String>(_longitude);
  set teamId(String? newValue) => storage.write(_teamId, newValue);
  String? get teamId => storage.read<String>(_teamId);
  set longitude(String? newValue) => storage.write(_longitude, newValue);
  set onBoardingVisible(bool newValue) => storage.write(_onBoardingVisible, newValue);
  List<dynamic>? get notification => storage.read<List<dynamic>>(_notification);
  set notification(List<dynamic>? newValue) =>
      storage.write(_notification, jsonEncode(newValue));
}
