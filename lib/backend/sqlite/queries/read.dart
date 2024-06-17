import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LISTARPRODUTOS
Future<List<ListarProdutosRow>> performListarProdutos(
  Database database,
) {
  const query = '''
SELECT * FROM PRODUTOS
''';
  return _readQuery(database, query, (d) => ListarProdutosRow(d));
}

class ListarProdutosRow extends SqliteRow {
  ListarProdutosRow(super.data);

  int get id => data['id'] as int;
  String get nome => data['nome'] as String;
  double get valor => data['valor'] as double;
}

/// END LISTARPRODUTOS
