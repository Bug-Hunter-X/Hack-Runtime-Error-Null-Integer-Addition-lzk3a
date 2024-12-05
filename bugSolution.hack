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

//The correct way to handle null values is to use the ?? operator which returns a default value if the left operand is null.
function fooCorrected(x: ?int): int {
  return (x ?? 0) + 1; //Use null coalescing operator
}

function barCorrected(): void {
  var x = null;
  var y = fooCorrected(x);
  echo y; //This will output 1
}
