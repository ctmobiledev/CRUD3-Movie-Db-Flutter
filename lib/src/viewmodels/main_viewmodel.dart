// ignore_for_file: avoid_print

import 'package:car_genius_app/src/models/movie_db.dart';
import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import '../models/main_repository.dart';

import '../util/constants.dart';
import '../util/dialog_helpers.dart';

class MainViewModel extends ChangeNotifier {
  MovieModel movieModel = MovieModel();

  // notifyListeners() calls = setState() calls

  Future<void> refreshMovies(BuildContext context) async {
    print(">>> refreshMovies() fired");
    print(
        ">>>===================================================================");

    MainRepository.realmMovies = MainRepository.getMovies();
    notifyListeners();

    showMessageIfNoEntries(context);
  }

  void showMessageIfNoEntries(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 1), () => checkForEmptyList(context));
  }

  void checkForEmptyList(BuildContext context) {
    if (MainRepository.realmMovies.isEmpty) {
      DialogHelpers.showAlertDialog("No movies entered.", context);
    }
  }

  Future<void> showConfirmDeleteDialog(
      String msgText, BuildContext buildContext) async {
    showDialog<String>(
      // <String> is the data type returned
      context: buildContext,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          Constants.dialogAppTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text(msgText),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'Y');
            },
            child: const Text('Yes, Delete All'),
          ),
          TextButton(
            onPressed: () {
              // Stay
              Navigator.pop(context, 'N');
            },
            child: const Text('No, Cancel'),
          ),
        ],
      ),
      // don't really use the 'value' passed next to context at this point
    ).then((value) {
      print(">>> value is $value");
      if (value == 'Y') {
        MovieDatabase.deleteAllMovies();
        notifyListeners();
        showMessageIfNoEntries(buildContext);
      }
    });
  }

  Future<void> generateTestData() async {
    print(">>> generateTestData() fired");
    // a few rows
    MovieDatabase.createMovie("Big", 10, "Comedy");
    MovieDatabase.createMovie("Moonstruck", 10, "Comedy");
    MovieDatabase.createMovie("Broadcast News", 8, "Drama");
    MovieDatabase.createMovie("Ordinary People", 8, "Drama");
    MovieDatabase.createMovie("The Last Word", 7, "Documentary");
  }
}
