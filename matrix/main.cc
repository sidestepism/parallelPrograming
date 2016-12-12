/*
 * main.cc
 */

#include "matrix.h"
#include "gemm.h"
#include "trsm.h"
#include "chol.h"

int main(int argc, char ** argv) {
  return chol_main(argc, argv);
}
