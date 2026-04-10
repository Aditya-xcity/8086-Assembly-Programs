# 8086 Assembly Language Programs

A curated collection of 8086 assembly language programs written for practice and lab work.

## Programs Included

1. `addTwo16BitNumbersWithCarry.asm`
	- Adds two 16-bit numbers and stores result + carry.

2. `multiplyTwo16BitNumbers.asm`
	- Multiplies two 16-bit numbers and stores 32-bit result.

3. `divideTwo16BitNumbers.asm`
	- Divides two 16-bit numbers and stores quotient + remainder.

4. `subtractTwo16BitNumbersWithBorrow.asm`
	- Subtracts two 16-bit numbers and stores result + borrow.

5. `addTwo32BitNumbers.asm`
	- Adds two 32-bit numbers (word-wise) and stores final carry.

6. `subtractTwo32BitNumbers.asm`
	- Subtracts two 32-bit numbers (word-wise) and stores final borrow.

7. `findLargestOfTwo16BitNumbers.asm`
	- Compares two 16-bit numbers and stores the larger one.

8. `swapTwo16BitNumbers.asm`
	- Swaps two 16-bit numbers in memory.

## Notes

- Most programs assume data is preloaded at memory locations around `1200H`.
- Result locations are documented in each file's comments.
- Programs use `ORG 2000H` and end with `HLT`.

## Author

Aditya Bhardwaj
