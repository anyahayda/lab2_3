#include <iostream>
#include <iomanip>
#include <thread>
#include <vector>
#include "parallel.h"
#include <cmath>
#include <fstream>


inline std::chrono::high_resolution_clock::time_point get_current_time_fenced() {
    std::atomic_thread_fence(std::memory_order_seq_cst);
    auto res_time = std::chrono::high_resolution_clock::now();
    std::atomic_thread_fence(std::memory_order_seq_cst);
    return res_time;
}

template<class D>
inline long long to_us(const D &d) {
    return std::chrono::duration_cast<std::chrono::microseconds>(d).count();
}

unsigned long result(unsigned long from, unsigned long to) {
    int result = 0;
    int n = 500;
    for (int x = from; x <= to; x++) {
        for (int y = 1; y <= n * n * 2; y++) {
            if (((x * y) / (x + y)) > n) {
                break;
            }
            if ((x * y) % (x + y) == 0 && (x * y) / (x + y) == n) {
                result++;
            }
        }
    }
    return result;
}

void worker(unsigned long from, unsigned long to, unsigned long *res) {
    *res = result(from, to);
}

int main(int argc, char *argv[]) {
    try {
        char *p;
        int number = (int) strtol(argv[1], &p, 10);
        unsigned long max_number = 500000;
        unsigned long sum = 0;
        unsigned long from = 1;
        unsigned long to = max_number / number;
        std::ofstream out_file("result.txt");

        std::vector<std::thread> threads;
        std::vector<unsigned long> found(number);

        auto stage1_start_time = get_current_time_fenced();
        for (int i = 0; i <= number; ++i) {
            threads.emplace_back(std::thread(
                    worker, from, to, &found[i]));
            from = to + 1;
            to = from + max_number / number - 1;
        }

        for (auto &each_thread : threads) { each_thread.join(); }
        for (auto each : found) { sum += each; }

        auto stage2_start_time = get_current_time_fenced();
        auto stage1_time = stage2_start_time - stage1_start_time;

        std::cout << to_us(stage1_time) << '\n' << sum;
        out_file << sum;
    }
    catch (std::exception &i) {
        std::cout << "Exception: " << i.what() << std::endl;
    }

    return 0;

}

