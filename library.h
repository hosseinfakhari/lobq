#ifndef LOBQ_LIBRARY_H
#define LOBQ_LIBRARY_H

#include <queue>
#include <vector>
#include <ctime>

struct row {
    time_t _time;
    std::vector<float> _bid_price;
    std::vector<float> _ask_price;
    std::vector<float> _bid_volume;
    std::vector<float> _ask_volume;
};

class FastQueue {
private:
    int _size;
    std::deque<row> _queue;
public:
    FastQueue(int size);
    ~FastQueue();
    void append(char *time, float bid_pr[], float ask_pr[], float bid_vol[], float ask_vol[]);
    struct row peek(char *time);
    row getItem(int index);
    unsigned long len();
    row dequeue(void);
};

#endif //LOBQ_LIBRARY_H