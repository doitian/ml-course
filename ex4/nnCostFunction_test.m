%!test source "nnCostFunction_test.m"

function test_cost_function()
  load("ex4data1.mat")
  load('ex4weights.mat')
  input_layer_size  = 400;  % 20x20 Input Images of Digits
  hidden_layer_size = 25;   % 25 hidden units
  num_labels = 10;          % 10 labels, from 1 to 10   
                            % (note that we have mapped "0" to label 10)
  nn_params = [Theta1(:) ; Theta2(:)];
  lambda = 0;

  J = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, ...
                     num_labels, X, y, lambda);

  assert(J, 0.287629, 0.000001)
endfunction
%!test test_cost_function()
