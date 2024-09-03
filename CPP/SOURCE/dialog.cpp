#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "debug.hpp"

char *common_string;

struct function_table_t {
    const char name[32];
    int (*function)();
};

extern int talk_to_LODGE_CHEF();
extern int talk_to_CHESSMASTER();
extern int talk_to_CURATOR();
extern int talk_to_MAINTENANCE_MAN();
extern int talk_to_MR_PASTORELLI();

function_table_t function_table[] {
    { "LODGE_CHEF", talk_to_LODGE_CHEF },
    { "CHESSMASTER", talk_to_CHESSMASTER },
    { "CURATOR", talk_to_CURATOR },
    { "MAINT_MAN", talk_to_MAINTENANCE_MAN },
    { "PASTORELLI", talk_to_MR_PASTORELLI },
    { "", NULL }
};

int talk_to(const char *name)
{
    sprintf(log_buffer, "talk_to(%s)", name);

    for (int i = 0; i < sizeof(function_table); ++i) {
        function_table_t *ft = &function_table[i];

        if (stricmp(ft->name, "") == 0) { break; }

        else if (strcmp(ft->name, name) == 0) {
            ft->function();

            return 1;
        }
    }

    return 0;
}

void check_dialog_flag()
{

}

void set_dialog_flag()
{

}

void initialize_dialog_flags()
{

}

void FindHead()
{

}

void GetDlgFileString(int id)
{
    static int first_time = 1;

    if (first_time) {
        first_time = 0;

        common_string = (char*)malloc(5000);
        if (common_string == NULL) {
            error_report(0, 0x155, "Memory allocation error");
        }
    }

    FILE *handle = fopen("dialog.rsp", "rt");
    if (handle == NULL) {
        error_report(0, 0x15B, "unable to open file: dialog.rsp");
    }

    for (int i = 0; i <= id; ++i) {
        fgets(common_string, 5000, handle);
    }

    fclose(handle);

    size_t length = strlen(common_string);
    if (length > 0) {
        common_string[length - 1] = '\0';
    }
}
