% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const n=2.
% Size of half the number of items in a sudoku row, column, and subgrid


sudoku(X, Y, N) :- initial(X, Y, N).
% Add all the initial box items to a sudoku set


{ sudoku(X, Y, N) : N = 1..n*n } = 1 :- X = 1..n*n, Y = 1..n*n.
% Generate all possible box coordinates with one number per box numbers with the initial box items included
:- sudoku(X, Y, N), sudoku(X', Y, N), X != X'.
% Remove box items with the same number in diffrent spots in the same row
:- sudoku(X, Y, N), sudoku(X, Y', N), Y != Y'.
% Remove box items with the same number in diffrent spots in the same column


#show sudoku/3.
