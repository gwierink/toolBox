%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% File: logistic.m
%
% Description:
% This is a simple logistic function implementation from Prof. Liz Bradley's
% course on nonlinear dynamics.
%
% Here, I use Octave, but most of the Matlab code should be more or less
% compatible.
%
% A function is defined like this: 
%     function [stuff_to_rteurn] = function_name(arguments);
%
%
% Run the function like this:
% >> logistic(0.2,2.6,10)
% ans =
%
%    0.2000   0.4160   0.6317   0.6049   0.6214   0.6117   0.6176   0.6141
%    0.6162   0.6149   0.6157
%
% Date: March 22, 2021
%
%------------------------------------------------------------------------------

function [iterates] = logistic(x0,r,n)
  % Set up an empty vector to store the iterates.
  iterates = [];
  % Create an internal variable to store the current value of x.
  currentX = x0;
  % Crreate a for loop to iterate over the array.
  for index = [0:n]
    % Add the current x-value to the tail end of the iterates array.
    iterates = [iterates, currentX];
    % Compute the nex iterate and store it in the current iterate (currentX)
    % variable.
    currentX = r * currentX * (1- currentX);
  % End the for loop.
  endfor
  % End the function.
  endfunction


% ----------------------------------------------------------------- End-of-file
