/*
 * main.cc
 */

#include "matrix.h"
#include "gemm.h"
#include "trsm.h"
#include "chol.h"

int main(int argc, char ** argv) {
  return gemm_main(argc, argv);
  //return trsm_main(argc, argv);
  //return chol_main(argc, argv);
}
