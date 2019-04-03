#include "sequential.h"
#include <iostream>
#include <atomic>
#include <chrono>
#include "fstream"

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

void find_solution_interval_sequential() {
    int result = 0;
    int n = 500;
    std::ofstream out_file("result.txt");
    auto stage1_start_time = get_current_time_fenced();
    for (int x = 1; x <= n * n * 2; x++) {
        for (int y = 1; y <= n * n * 2; y++) {
            if (((x * y) / (x + y)) > n) {
                break;
            }
            if ((x * y) % (x + y) == 0 && (x * y) / (x + y) == n) {
                result++;
            }
        }
    }
    auto stage2_start_time = get_current_time_fenced();
    auto stage1_time = stage2_start_time - stage1_start_time;
    std::cout << to_us(stage1_time) << '\n' << result;
    to_us(stage1_time);
}

int main(int argc, char *argv[]){
    find_solution_interval_sequential();
    return 0;
}