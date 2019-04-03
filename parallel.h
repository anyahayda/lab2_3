#ifndef HW2_PARALLEL_H
#define HW2_PARALLEL_H

unsigned long result(unsigned long from, unsigned long to);

void worker(unsigned long from, unsigned long to, unsigned long *res);

#endif //HW2_PARALLEL_H
