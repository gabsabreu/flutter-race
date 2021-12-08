void main() async {
  final a = MinhaClass('Gabe Dev');

  print(a.nome);
}

class MinhaClass {
  final String nome;
  MinhaClass(this.nome);
}

Future<Map<String, String>> meuPrint() async {
  await Future.delayed(Duration(seconds: 1));
  return {
    'a': 'Gabe',
    'b': 'Lale',
  };
}
