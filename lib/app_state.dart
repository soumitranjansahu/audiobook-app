import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _numberphone = '';
  String get numberphone => _numberphone;
  set numberphone(String value) {
    _numberphone = value;
  }

  List<String> _BOOKLIKE = ['Hello World'];
  List<String> get BOOKLIKE => _BOOKLIKE;
  set BOOKLIKE(List<String> value) {
    _BOOKLIKE = value;
  }

  void addToBOOKLIKE(String value) {
    BOOKLIKE.add(value);
  }

  void removeFromBOOKLIKE(String value) {
    BOOKLIKE.remove(value);
  }

  void removeAtIndexFromBOOKLIKE(int index) {
    BOOKLIKE.removeAt(index);
  }

  void updateBOOKLIKEAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    BOOKLIKE[index] = updateFn(_BOOKLIKE[index]);
  }

  void insertAtIndexInBOOKLIKE(int index, String value) {
    BOOKLIKE.insert(index, value);
  }

  String _LIKE = '';
  String get LIKE => _LIKE;
  set LIKE(String value) {
    _LIKE = value;
  }

  String _PLAYAUDIO = '';
  String get PLAYAUDIO => _PLAYAUDIO;
  set PLAYAUDIO(String value) {
    _PLAYAUDIO = value;
  }

  List<String> _search = [];
  List<String> get search => _search;
  set search(List<String> value) {
    _search = value;
  }

  void addToSearch(String value) {
    search.add(value);
  }

  void removeFromSearch(String value) {
    search.remove(value);
  }

  void removeAtIndexFromSearch(int index) {
    search.removeAt(index);
  }

  void updateSearchAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    search[index] = updateFn(_search[index]);
  }

  void insertAtIndexInSearch(int index, String value) {
    search.insert(index, value);
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }
}
