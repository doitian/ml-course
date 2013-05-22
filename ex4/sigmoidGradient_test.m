%!test source "sigmoidGradient_test.m"

function test_sample()
  g = sigmoidGradient([0]);
  assert(g, 0.25, 0.01);
endfunction
%!test test_sample()
