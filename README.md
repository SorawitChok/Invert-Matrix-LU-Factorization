# Matrix Inversion using LU Factorization

This repository contains a MATLAB function to compute the inverse of a matrix using LU factorization. The LU decomposition is a method of decomposing a matrix into a product of a lower triangular matrix (L) and an upper triangular matrix (U), often combined with a permutation matrix (P) to ensure numerical stability. This approach is particularly useful for solving systems of linear equations, computing determinants, and finding matrix inverses.

## Function Overview

### `InvMatLU(A, n)`

- **Purpose**: Computes the inverse of a square matrix `A` using LU factorization.
- **Inputs**:
  - `A`: An `n x n` square matrix that you want to invert.
  - `n`: The size (dimension) of the square matrix `A`.
- **Output**:
  - `v`: The inverse of matrix `A`.

### How It Works

1. **LU Decomposition**: The function first decomposes the input matrix `A` into a lower triangular matrix `L`, an upper triangular matrix `U`, and a permutation matrix `P` using MATLAB's `lu()` function.
2. **Solving for Inverse**: For each column of the identity matrix `I`, the function solves two triangular systems to compute the corresponding column of the inverse matrix:
   - First, it solves `Lw = Pbhat`, where `bhat` is the i-th column of `P*I`.
   - Then, it solves `Ux = w` to find the i-th column of the inverse matrix.
3. **Assembly**: The resulting columns are concatenated to form the inverse matrix `Ainv`.

### Example Usage

```matlab
% Define a 3x3 matrix A
A = [4, 3, 2; 3, 2, 1; 2, 1, 3];

% Compute the inverse of A using LU factorization
Ainv = InvMatLU(A, 3);

% Display the result
disp('The inverse of A is:');
disp(Ainv);
```

## Why Use LU Factorization?
LU factorization is a numerically efficient method for matrix inversion, especially for large matrices. By breaking down the matrix into simpler triangular matrices, it allows for solving linear systems and inverting matrices with fewer computational resources compared to direct methods.

## License
This code is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.


## Author
This function was created by [Sorawit Chokphantavee](https://github.com/SorawitChok).
