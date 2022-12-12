import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 38912389128912;

  // ERRO - Não é possivel alterar o valor de um let
  // id := 93129083123821;

  Debug.print(debug_show(id));
};
