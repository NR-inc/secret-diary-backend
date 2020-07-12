import 'package:postgres/postgres.dart';

class SDDataBase {
  PostgreSQLConnection _connection;

  SDDataBase(this._connection) {
    _connection.open().then((_) {
      print('DataBase connected');
    }).catchError((error){
      print('DataBase connected error: $error');
    });
  }

  PostgreSQLConnection get connection => _connection;
}
