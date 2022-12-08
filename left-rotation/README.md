# Left Rotation

A left rotation operation on an array of size $n$ shifts each of the array's elements $1$ unit to the left. Given an integer, $d$, rotate the array that many steps left and return the result.

**Example**

$d = 2$

$arr = [1, 2, 3, 4, 5]$

After $2$ rotations, $arr' = [3, 4, 5, 1, 2]$

**Function Description**

Complete the rotateLeft function in the editor below.

rotateLeft has the following parameters:

* int d: the amount to rotate by
* int arr[n]: the array to rotate

**Returns**

* int[n]: the rotated array

**Input Format**

The first line contains two space-separated integers that denote $n$, the number of integers, and $d$, the number of left rotations to perform.

The second line contains $n$ space-separated integers that describe $arr[]$.

**Constraints**

* $1 \le n \le 10^5$
* $1 \le d \le n$
* $1 \le a[i] \le 10^6$

**Sample Input**

```txt
5 4
1 2 3 4 5
```

**Sample Output**

```txt
5 1 2 3 4
```

**Explanation**

To perform $d = 4$ left rotations, the array undergoes the following sequence of changes:

$$[1, 2, 3, 4, 5] \rightarrow [2, 3, 4, 5, 1] \rightarrow [3, 4, 5, 1, 2] \rightarrow [4, 5, 1, 2, 3] \rightarrow [5, 1, 2, 3, 4]$$


[hackerrank.com/challenges/three-month-preparation-kit-array-left-rotation/](https://www.hackerrank.com/challenges/three-month-preparation-kit-array-left-rotation/)
