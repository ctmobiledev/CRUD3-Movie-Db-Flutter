// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/edit_movie_viewmodel.dart';
import '../util/constants.dart';
import '../models/main_repository.dart';

import 'edit_movie_page_args.dart';

class EditMovieWidget extends StatefulWidget {
  const EditMovieWidget({super.key});

  // ***** REQUIRED tag used by Navigator: see MaterialApp's 'routes' property for use *****
  static const routeName = '/edit_movie_args';

  @override
  State<EditMovieWidget> createState() => EditMovieWidgetState();
}

// Had to change this from private (_) to public in order to allow
// the static text controllers to be visible from the viewModel.

class EditMovieWidgetState extends State<EditMovieWidget> {
  //
  // One of these is needed for each text field, and the dispose() method
  // is needed to do cleanup per each object.
  //
  // NOTE: These had to be marked 'static' because the compiler complained.
  // There just was no other way to pass these in to the VM.

  static var txtMovieTitle = TextEditingController();
  static var txtMovieScore = TextEditingController();

  //static var txtMovieGenre = TextEditingController();   // replaced with dropdown box

  // This is exactly what I wound up doing in the MovieListGenreWidget file. I had used 'static final'
  // but the ChangeNotifier class complained the viewModel class had already been disposed of.

  EditMovieViewModel editMovieVM = EditMovieViewModel();

  int gEventInx = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Text controllers were being disposed of here, but for the viewModel
    // object, they had to be made 'static'. Attempting to dispose of them
    // on their second, third, etc., uses resulted in an exception. So now
    // they're left alone.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as EditMovieArgs;

    gEventInx = args.id;

    // args.eventInx = if negative, new (insert); if positive int, edit (update)
    // deletes: do after exited screen
    String title = (args.id == -1) ? "New Movie" : "Edit Movie";

    // get previously defined event
    if (args.id > 0) {
      var movieModelValues = MainRepository.realmMovies
          .firstWhere((element) => element.id == args.id);

      print(">>> entry found with id = ${args.id}");

      // Fill the text controllers
      txtMovieTitle.text = movieModelValues.movieTitle.toString();
      txtMovieScore.text = movieModelValues.movieScore.toString();

      // And set the dropdown
      //editMovieVM.strMovieGenreSelected =
      //    movieModelValues.movieGenre.toString();

      //
      // And set the dropdown, BUT...
      // If the previously selected movie genre has disappeared or been previously deleted,
      // this resets the dropdown value for this column to the default.
      //
      if (EditMovieViewModel.movieGenres
              .contains(movieModelValues.movieGenre) ==
          false) {
        print(
            ">>> Genre ${movieModelValues.movieGenre} was deleted, replacing with default");
        // first in the list, MUST have 1 or more!
        editMovieVM.strMovieGenreSelected = EditMovieViewModel.movieGenres[0];
        //editMovieVM.strMovieGenreSelected = Constants.noDropdownValueSelected;
      } else {
        editMovieVM.strMovieGenreSelected =
            movieModelValues.movieGenre.toString(); // for the drop-down button
      }

      //
    } else {
      // no index found (id == -1); start with blank fields
      editMovieVM.clearInputFields();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            // be sure to make the Title a local property
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ChangeNotifierProvider(
          // This viewModel reference must be defined at the top of the class
          create: (context) => editMovieVM,
          child: Center(
            child: Consumer<EditMovieViewModel>(
                // builder has three arguments - what does the second one actually do?
                // changing the name doesn't affect anything, it seems, and yet
                // the print message below returns an actual instance of the viewModel.
                // Changed the name to 'consumerVM' to distinguish from the 'real' one
                // at the top (since it's a parm name anyway).
                builder: (context, consumerVM, _) {
              //
              // IMPORTANT: MUST RETURN THE *WHOLE* LAYOUT HERE, AFTER 'return'
              // LET THE 'OUTER' WIDGET FROM THE LAYOUT IMMEDIATELY FOLLOW 'return'
              //
              print(">>> Consumer builder: consumerVM = $consumerVM");
              return Container(
                margin: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Text(args.eventInx.toString()),
                            Center(
                                child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Movie Title',
                                    style: Constants.defaultTextStyle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20.0),
                                  child: TextField(
                                    textCapitalization:
                                        TextCapitalization.words,
                                    controller: txtMovieTitle,
                                    decoration: Constants.inputDecoration,
                                    cursorColor: Constants.inputCursorColor,
                                    style: Constants.blackTextStyle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Genre',
                                    style: Constants.defaultTextStyle,
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  margin: const EdgeInsets.only(bottom: 20.0),
                                  child: StatefulBuilder(
                                      builder: (context, setState) {
                                    return Container(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0, top: 4.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.none,
                                            width: 2.00),
                                      ),
                                      child: DropdownButton(
                                          // declared above, was dropdownValue
                                          underline: Container(
                                              height: 0, color: Colors.white),
                                          dropdownColor: Colors.white,
                                          focusColor: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5.0)),
                                          isExpanded: true,
                                          value:
                                              editMovieVM.strMovieGenreSelected,
                                          // 'value': what the dropdown control assigns selected value to
                                          items: EditMovieViewModel.movieGenres
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            print(
                                                ">>> DropdownMenuItem before return: ${value.toString()}");
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? value) {
                                            //
                                            // Flaw with Flutter: handling drop-down controls like this.
                                            // Should be simple but even with a ChangeNotifier in the VM,
                                            // setState() is still needed here to "hear" a new value for
                                            // a drop-down selection and update the visual state of the
                                            // control.
                                            //
                                            editMovieVM.strMovieGenreSelected =
                                                value!;
                                            print(
                                                ">>> new value is ${editMovieVM.strMovieGenreSelected}");
                                            setState(() {
                                              editMovieVM.updateGenreDropdown(
                                                  editMovieVM
                                                      .strMovieGenreSelected);
                                            });
                                          }),
                                    );
                                  }),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Score',
                                    style: Constants.defaultTextStyle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: txtMovieScore,
                                    decoration: Constants.inputDecoration,
                                    cursorColor: Constants.inputCursorColor,
                                    style: Constants.blackTextStyle,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20.0),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: Constants.greenButtonStyle,
                                onPressed: () async {
                                  if (args.id == -1) {
                                    var success = await editMovieVM
                                        .createNewMovie(context);
                                    print(">>> Save/New - success = $success");
                                    if (success) {
                                      Navigator.pop(context);
                                    }
                                  } else {
                                    print(">>> running update and popping");
                                    var success = await editMovieVM
                                        .updateExistingMovie(args.id, context);
                                    print(
                                        ">>> Save/Update - success = $success");
                                    if (success) {
                                      Navigator.pop(context);
                                    }
                                  }
                                },
                                child: Text('Save',
                                    style: Constants.buttonTextStyle),
                              ),
                              ElevatedButton(
                                style: Constants.closeButtonStyle,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel',
                                    style: Constants.buttonTextStyle),
                              ),
                              ElevatedButton(
                                style: (args.id == -1)
                                    ? Constants.redButtonDisabledStyle
                                    : Constants.redButtonStyle,
                                onPressed: () {
                                  print(">>> Delete button pressed");
                                  if (args.id > -1) {
                                    editMovieVM.showDeleteDialog(
                                        "Are you sure you mean to delete this entry?",
                                        args.id,
                                        context);
                                  }
                                },
                                child: Text('Delete',
                                    style: Constants.buttonTextStyle),
                              ),
                            ]),
                      ),
                    ]),
              );
            }),
          ),
        ));
  }
}
