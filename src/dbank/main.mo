import Debug "mo:base/Debug";

actor DBank {
  var currentValue: Nat = 300;
  currentValue := 100;

  let id = 38912389128912;

  // ERRO - Não é possivel alterar o valor de um let
  // id := 93129083123821;

  // Debug.print(debug_show(id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdraw(amount : Nat) {
    let tempValue: Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Amount too large, currentValue less than zero.");
    }
  };

  // topUp();
};
