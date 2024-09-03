#include <cstdio>
#include <cstring>

#include "debug.hpp"
#include "scrpties.hpp"

void play_wav(int id, const char *name, int face)
{

}

int get_response()
{
    return 0;
}

int check_script_flag(const char *name)
{
    if (name) {
        flag_list_t *fl = flag_list;
        if (fl) {
            while (fl) {
                if (strcmp(fl->name, name) == 0) { return fl->flag; }
                fl = fl->next;
            }
            sprintf(log_buffer, "SCRIPT WARNING: flag %s not found", name);
        }
    }

    return 0;
}

void set_script_flag(const char *name, int flag)
{
    if (name) {
        flag_list_t *fl = flag_list;
        if (fl) {
            while (fl) {
                if (strcmp(fl->name, name)) {
                    fl->flag = flag;
                    return;
                }
                fl = fl->next;
            }
            sprintf(log_buffer, "SCRIPT WARNING: flag %s not found", name);
        }
    }
}

void KillNpc(const char *name, const char *type)
{

}

void ExecuteCommand(const char *command)
{
    if (command != NULL) { execute_command(command); }
}
