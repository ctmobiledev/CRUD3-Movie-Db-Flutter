/*

         
         db.execSQL("CREATE TABLE tblVehicles ("
               + "_id           integer primary key autoincrement, "
               + "year     text, "
               + "color     text, "
               + "make     text, "
               + "model     text, "
               + "licplate     text, "
               + "licstate     text, "
               + "mileage     integer, "
               + "remarks     text, "
               + "buydate     text, "
               + "selldate     text, "
               + "regismonth     integer, "
               + "inspmonth     integer, "
               + "annmileage     integer, "
               + "insurdate     text, "
               + "lastupdate     text, "
               + "message       text"
         + ")" ) ;			// 17 columns

         db.execSQL("CREATE TABLE tblMaint ("
               + "_id           integer primary key autoincrement, "
               + "vehid     integer, "
               + "timestamp     text, "
               + "maintdate     text, "
               + "mainttime     text, "
               + "mileage     integer, "
               + "svcid     integer, "
               + "svctype     text, "
               + "servicerid     integer, "
               + "servicer     text, "
               + "estimatedcost     real, "
               + "finalcost     real, "
               + "remarks     text"
         + ")" ) ;

         db.execSQL("CREATE TABLE tblServiceTypes ("
               + "_id           integer primary key autoincrement, "
               + "svcid     integer, "
               + "svctype     text"
         + ")" ) ;

         db.execSQL("CREATE TABLE tblServicers ("
               + "_id           integer primary key autoincrement, "
               + "servicerid     integer, "
               + "servicer     text, "
               + "phone     text, "
               + "address     text, "
               + "remarks     text"
         + ")" ) ;

         db.execSQL("CREATE TABLE tblIncidents ("
               + "_id           integer primary key autoincrement, "
               + "timestamp      string, "
               + "vehid     integer, "
               + "incidentid     integer, "
               + "incidenttype     text, "
               + "idate     text, "
               + "itime     text, "
               + "mileage     integer, "
               + "location     text, "
               + "claimnumber1     text, "
               + "claimstatus1     text, "
               + "claimnumber2     text, "
               + "claimstatus2     text, "
               + "claimnumber3     text, "
               + "claimstatus3     text, "
               + "finalresult     text, "
               + "cost     real, "
               + "remarks     text"
         + ")" ) ;    // 18 columns

         // Because we couldn't do it as an array
         db.execSQL("CREATE TABLE tblModels ("
                 + "_id           integer primary key autoincrement, "
                 + "make      text, "
                 + "model     text "
                 + ")" ) ;
         
         seedModelsTable(db);

         // Because we couldn't do it as an array
         db.execSQL("CREATE TABLE tblLastTimeRpt ("
                 + "_id           integer primary key autoincrement, "
                 + "svctype       text, "
                 + "timestamp     text "
                 + ")" ) ;


*/