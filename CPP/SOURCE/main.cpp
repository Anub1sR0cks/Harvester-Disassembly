#include <cstdio>
#include <cstdlib>

#include "debug.hpp"
#include "mscdex.hpp"
#include "xfile.hpp"

int _argc;
char **_argv;
char **_envp;

int main(int argc, char *argv[], char *envp[])
{
    // D32Lock(0, 0x100000);

    _argc = argc;
    _argv = argv;
    _envp = envp;

    int result;

    if (MSCDEX_installed()) {
        MSCDEX_get_CDROM(&result);

        if (result == -1) { error_report(0, 0x8e, "No CDROM detected!"); }

        MSCDEX_get_version(&result);
    }
    else {
        printf("MSCDEX not detected\n");
    }

    return 0;
}

void initialize()
{

}

void shut_down(int code)
{
    if (!XFILE_shutdown()) { error_report(0, 0x17c, "Could not uninitialize the extended file system."); }

    // union REGS regs;
    // regs.h.ah = 0x00;
    // regs.h.al = 0x03;
    // int86(0x10, &regs, &regs);

    exit(code);
}

void parse_command_line()
{

}

void get_temp_directory()
{

}

int verify_path(const char *path)
{
    return 0;
}

void bogus()
{
    puts("This bites!!!!!");
}
