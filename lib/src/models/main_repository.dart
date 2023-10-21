// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// "Outer" Object For Backups (All Objects)
import 'all_data_model_json.dart';

// Models (in pairs, one a RealmObject, the other a JSON cognate)
import 'incident_model.dart';
import 'incident_type_model.dart';
import 'last_time_report_model.dart';
import 'maint_model.dart';
import 'makeandmodel_model.dart';
import 'movie_genre_model_json.dart';
import 'movie_genre_model.dart';
import 'movie_model_json.dart';
import 'movie_model.dart';
import 'service_type_model.dart';
import 'servicer_model.dart';
import 'vehicle_model.dart';

// Realm support
import 'package:realm/realm.dart';

//
class MainRepository {
  //**************************************************************
  // BASE SECTION - LISTS AND COLLECTIONS
  //**************************************************************
  // Realm declarations - set from main
  LocalConfiguration? config;

  // Set by main
  static late BuildContext context;

  // One instance only
  static late Realm realm;

  // RealmResults collections
  static late RealmResults<MovieModel> realmMovies;
  static late RealmResults<MovieGenreModel> realmMovieGenres;
  static late RealmResults<IncidentModel> realmIncidents;
  static late RealmResults<IncidentTypeModel> realmIncidentTypes;
  static late RealmResults<LastTimeReportModel> realmLastTimeReports;
  static late RealmResults<MakeAndModelModel> realmMakeAndModels;
  static late RealmResults<MaintModel> realmMaints;
  static late RealmResults<ServiceTypeModel> realmServiceTypes;
  static late RealmResults<ServicerModel> realmServicers;
  static late RealmResults<VehicleModel> realmVehicles;

  // Entries DB
  static List<Map<String, dynamic>> movieEntries = [];
  static List<Map<String, dynamic>> incidentEntries = [];
  static List<Map<String, dynamic>> incidentTypeEntries = [];
  static List<Map<String, dynamic>> lastTimeReportEntries = [];
  static List<Map<String, dynamic>> makeAndModelEntries = [];
  static List<Map<String, dynamic>> maintEntries = [];
  static List<Map<String, dynamic>> serviceTypeEntries = [];
  static List<Map<String, dynamic>> servicerEntries = [];
  static List<Map<String, dynamic>> vehicleEntries = [];

  // JSON Lists
  // Same entries but for JSON backup/restore (only filled when used)
  // Be sure to define all lists before invoking them in AllDataModelJson
  static List<MovieModelJson> movieJsonEntries = [];
  static List<MovieGenreModelJson> movieGenreJsonEntries = [];
  static List<MovieModelJson> incidentJsonEntries = [];
  static List<MovieModelJson> incidentTypeJsonEntries = [];
  static List<MovieModelJson> lastTimeReportJsonEntries = [];
  static List<MovieModelJson> maintJsonEntries = [];
  static List<MovieModelJson> makeAndModelJsonEntries = [];
  static List<MovieModelJson> serviceTypeJsonEntries = [];
  static List<MovieModelJson> serviceJsonEntries = [];
  static List<MovieModelJson> vehicleJsonEntries = [];

  // pass all these entries to the big one
  static AllDataModelJson allDataModelJson =
      AllDataModelJson(movieJsonEntries, movieGenreJsonEntries);

  // Output string for JSON
  static StringBuffer sbJSON = StringBuffer("");

  MainRepository() {
    print(">>> MovieRepository constructor() fired");
    // may not need these
    realmMovies = realm.all<MovieModel>();
    realmMovieGenres = realm.all<MovieGenreModel>();
    realmIncidents = realm.all<IncidentModel>();
    realmIncidentTypes = realm.all<IncidentTypeModel>();
    realmLastTimeReports = realm.all<LastTimeReportModel>();
    realmMaints = realm.all<MaintModel>();
    realmMakeAndModels = realm.all<MakeAndModelModel>();
    realmServiceTypes = realm.all<ServiceTypeModel>();
    realmServicers = realm.all<ServicerModel>();
    realmVehicles = realm.all<VehicleModel>();
    //print(">>> realmMovieGenres count: ${realmMovieGenres.length}");
  }

  static RealmResults<MovieModel> getMovies() {
    // consider a try/on at some point
    realmMovies = realm.all<MovieModel>();
    return realmMovies;
  }

  static RealmResults<MovieGenreModel> getMovieGenres() {
    // consider a try/on at some point
    realmMovieGenres =
        realm.query<MovieGenreModel>('TRUEPREDICATE SORT(movieGenreName ASC)');
    return realmMovieGenres;
  }

  // RESUME HERE

  //
  //
}
