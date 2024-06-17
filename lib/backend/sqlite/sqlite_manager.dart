import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'pedidos',
      'pedidos.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ListarProdutosRow>> listarProdutos() => performListarProdutos(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addProduto({
    String? nomeprd,
    double? valorPrd,
  }) =>
      performAddProduto(
        _database,
        nomeprd: nomeprd,
        valorPrd: valorPrd,
      );

  Future atzproduto({
    int? id,
    String? nome,
    double? valor,
  }) =>
      performAtzproduto(
        _database,
        id: id,
        nome: nome,
        valor: valor,
      );

  Future deleteProduto({
    int? id,
  }) =>
      performDeleteProduto(
        _database,
        id: id,
      );

  /// END UPDATE QUERY CALLS
}
