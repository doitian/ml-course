%!test source "computeCost_test.m"

function test_perfect_match()
  X = [1 1];
  theta = [0; 1];
  y = [1];

  assert(computeCost(X, y, theta), 0)
endfunction
%!test test_perfect_match()

function test_positive_distance()
  X = [1 1];
  theta = [0; 1];
  y = [0];

  assert(computeCost(X, y, theta), 0.5, 0.01)
endfunction
%!test test_positive_distance()

function test_negative_distance()
  X = [1 1];
  theta = [0; 1];
  y = [2];

  assert(computeCost(X, y, theta), 0.5, 0.01)
endfunction
%!test test_negative_distance()

function test_multiple_examples()
  X = [1 1; 1 2];
  theta = [0; 1];
  y = [0; 3];

  assert(computeCost(X, y, theta), 0.5, 0.01)
endfunction
%!test test_multiple_examples()

function test_multiple_features()
  X = [1 1 2; 1 2 3];
  theta = [0; 1; 2];
  y = [0; 3];

  assert(computeCostMulti(X, y, theta), 22.25, 0.01)
endfunction
%!test test_multiple_examples()
