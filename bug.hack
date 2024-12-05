function foo(x: ?int): int {
  if (x === null) {
    return 0;
  } else {
    return x + 1;
  }
}

function bar(): void {
  var x = null;
  var y = foo(x);
  echo y;
}

//This code will raise a runtime error if x is null because the + operator cannot be used with null value in Hack.
//The correct way to handle null values is to use the ?? operator which returns a default value if the left operand is null