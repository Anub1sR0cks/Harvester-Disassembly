#include <cstdio>
#include <cstdlib>

#include "debug.hpp"
#include "xfile.hpp"

int _argc;
char **_argv;
char **_envp;

int main(int argc, char *argv[], char *envp[])
{
    _argc = argc;
    _argv = argv;
    _envp = envp;

    return 0;
}

void initialize()
{

}

void shut_down(int code)
{
    if (!XFILE_shutdown()) { error_report(0, 0x17c, "Could not uninitialize the extended file system."); }

    // union REGS regs;
    // regs.x.al = 0x03;
    // int386(0x10, &regs, &regs);

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
