#include "library.h"
#include <iterator>
#include <vector>

FastQueue::FastQueue(int size) {
    this->_size = size;
}

FastQueue::~FastQueue() = default;

void FastQueue::append(char *time, float bid_pr[], float ask_pr[], float bid_vol[], float ask_vol[]) {
    row r;
    int yy, month, dd, hh, mm, ss;
    struct tm timBuf;
    sscanf(time, "%d-%d-%dT%d:%d:%d", &yy, &month, &dd, &hh, &mm, &ss);
    timBuf.tm_year = yy - 1900;
    timBuf.tm_mon = month - 1;
    timBuf.tm_mday = dd;
    timBuf.tm_hour = hh;
    timBuf.tm_min = mm;
    timBuf.tm_sec = ss;
    timBuf.tm_isdst = -1;
    r._time = mktime(&timBuf);
    r._bid_price.assign(bid_pr, bid_pr + this->_size);
    r._ask_price.assign(ask_pr, ask_pr + this->_size);
    r._bid_volume.assign(bid_vol, bid_vol + this->_size);
    r._ask_volume.assign(ask_vol, ask_vol + this->_size);
    if(this->_queue.size() == this->_size){
        this->_queue.pop_front();
    }
    this->_queue.push_back(r);
}

struct row FastQueue::peek(char *time) {
    time_t t;
    int yy, month, dd, hh, mm, ss;
    struct tm timBuf{};
    sscanf(time, "%d-%d-%dT%d:%d:%d", &yy, &month, &dd, &hh, &mm, &ss);
    timBuf.tm_year = yy - 1900;
    timBuf.tm_mon = month - 1;
    timBuf.tm_mday = dd;
    timBuf.tm_hour = hh;
    timBuf.tm_min = mm;
    timBuf.tm_sec = ss;
    timBuf.tm_isdst = -1;
    t = mktime(&timBuf);
    struct row _row{};
    for(auto it = this->_queue.begin(); it < this->_queue.end(); ++it){
        if(((struct row)*it)._time == t){
            return _row = ((struct row)*it);
        }
    }
    return _row;
}

struct row FastQueue::getItem(int index) {
    struct row _row{};
    if(index < this->_size && index >= 0){
        return this->_queue.at(index);
    }
    return _row;
}

int FastQueue::len() {
    return this->_queue.size();
}

extern "C" {
    FastQueue* fastQueue_new(int size){ return new FastQueue(size);}
    int fastQueue_len(FastQueue* fastQueue){ return fastQueue->len();}
    struct row fastQueue_getItem(FastQueue* fastQueue, int index){ return fastQueue->getItem(index);}
    struct row fastQueue_peek(FastQueue* fastQueue, char *time){ return fastQueue->peek(time);}
    void fastQueue_append(FastQueue* fastQueue,char *time, float bid_pr[], float ask_pr[], float bid_vol[],
            float ask_vol[]){fastQueue->append(time, bid_pr, ask_pr, bid_vol, ask_vol);}
}