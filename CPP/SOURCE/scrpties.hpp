#pragma once

struct flag_list_t {
    const char *name;
    int flag;
    struct flag_list_t *next;
};

extern flag_list_t *flag_list;
