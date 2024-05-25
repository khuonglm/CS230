# Sample Lab: Linked list in C Programming

## Due: No due date (You do NOT need to submit your code)

This sample lab assignment is aimed to give you a hands-on experience on the low‑level semantics of the C programming language that you will be using throughout this course. Future labs will use the C programming language intensively. Thus, please use this sample lab as an opportunity to hone your skills on the C programming language.

Also notice that the solution is provided for you for reference.

Again, your work from this sample lab will neither be submitted nor graded.

## Fork & Clone instructions

**First make sure you fork the CS230/sample_lab repository to your private namespace!** If you don't you won't be able to submit your work. Go to [https://git-casys.kaist.ac.kr/cs230/sample-lab](https://git-casys.kaist.ac.kr/cs230/sample-lab) and fork to your private repo.

Once you have your private repo, you may clone your private repo. Also, **make sure you have added your SSH key to the GitLab Web UI** (refer to the KLMS announcement).

```sh
$ git clone https://git-casys.kaist.ac.kr/cs[your_student_id]/sample-lab.git
```

## 1. Introduction

In this lab, your task is to fill in the skeleton code and implement the doubly linked list. You must only fill in the skeleton code in the`list.c` file. You may modify the `test.c` file and add the `iterate_print_keys()` function to help with your debugging, however you must make sure your tests work with the original `test.c ` file.

## 2. Doubly Linked List

For this lab, you will need to implement a doubly linked list, where there are two nodes, `head` and the `tail` node that are reference nodes. They do not hold any meaningful `key` values, just `-1` as a key. The `head` and `tail` nodes represent the beginning and the end of the list. Also the invariant of the `head` and `tail` node is that, the `tail`'s next node is the `head`, and the `head`'s previous node is the `tail`. This provides the advantage of being able to find the `tail` of the list, when given the `head`, with ease. Once you have the `head` and the `tail`, you can set your iteration to begin at the head, and end at the tail.

The functions that need to be implemented are provided in the `list.c` file. The requirements of each skeleton function are described in the block comment above the skeleton function.

## 3. Memory Management

You will need to dynamically allocate memory for new nodes using the `malloc()` function, and free any deleted nodes using the `free()` function.
You can access the reference for the two functions using the following commands:

```sh
$ man malloc
$ man free
```

## 4. Test cases must be met

All the test cases implemented in the `test.c` file must be met. As of this writing, there are eight test cases. Make sure to satisfy all of the test cases. You can test your `list.c` implementation using the following command

```sh
$ make test
```

There are three test failures that have been identified (there may be more).
1. Segmentation Fault: there is a pointer dereference in your code that is to an incorrect memory address!
2. Test Failure: some of the test cases are not being satisfied.
3. Timeout: your code is not finishing up in time. Perhaps you have a infinite loop in your code?

Once you fix all the problems, and your `make test` results in a `You successfully passed all the tests` output, then you are good to go. Make sure your tests pass with the original `test.c` file.

## 5. Hand in Instructions

You do NOT need to submit this lab.
