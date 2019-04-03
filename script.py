import sys
import subprocess
import os

prog_name = ["sequential", "parallel"]

for user, dir, files in os.walk('.'):
    if all(i in files for i in prog_name):
        for i in range(len(prog_name)):  # if run on Windows
            if os.name == "nt":
                prog_name[i] = prog_name[i] + ".exe."
                prog_name[i] = user + '\\' + prog_name[i]
            else:
                prog_name[i] = user + '/' + prog_name[i]
        break


def check_results():
    another, res = None, list()
    with open(sys.argv[2], encoding='utf-8', errors='ignore') as file:
        for i in file:
            res.append(i.strip())
    if another is None:
        another = res
    if another != res:
        raise ValueError("Results are different")


if __name__ == "__main__":
    time, time2, times, times2 = 0, 0, list(), list()
    print("The minimum result of each method in microseconds:")
    for amount in range(1, int(sys.argv[1]) + 1):
        sub_run_seq = subprocess.run([prog_name[0], sys.argv[2]], shell=False,
                                     stdout=subprocess.PIPE)

        sub_run_paral = subprocess.run([prog_name[1], sys.argv[3], sys.argv[2]], shell=False,
                                       stdout=subprocess.PIPE)
        time = sub_run_seq.stdout.decode().strip().split('\n')[0]
        time2 = sub_run_paral.stdout.decode().strip().split('\n')[0]

        times.append(time)
        times2.append(time2)
        check_results()
    print("Min time for sequential: {}".format(min(times)))
    print("Min time for parallel: {}".format(min(times2)))
