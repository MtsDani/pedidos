import 'package:sqflite/sqflite.dart';

/// BEGIN ADDPRODUTO
Future performAddProduto(
  Database database, {
  String? nomeprd,
  double? valorPrd,
}) {
  final query = '''
INSERT INTO produtos(nome, valor) VALUES ('$nomeprd,' $valorPrd)
''';
  return database.rawQuery(query);
}

/// END ADDPRODUTO

/// BEGIN ATZPRODUTO
Future performAtzproduto(
  Database database, {
  int? id,
  String? nome,
  double? valor,
}) {
  final query = '''
UPDATE Produtos
SET
nome = '$nome',
valor = $valor
WHERE ID = $id;
''';
  return database.rawQuery(query);
}

/// END ATZPRODUTO

/// BEGIN DELETEPRODUTO
Future performDeleteProduto(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM produtos WHERE ID = $id
''';
  return database.rawQuery(query);
}

/// END DELETEPRODUTO
