#include <cstdio>
#include <cstdlib>

char log_buffer[256];
char debug_malloc_buffer[4];

void error_report(int id1, int id2, const char *message)
{
    set_super_VGA_video_mode(3);

    if (!message) { message = "no error message."; }

    char buffer[256];
    sprintf(buffer, "\nERROR! [id:04%x] - \"%s\"\n", id1 + id2, buffer);

    puts(buffer);
    puts("\nIf you are encountering difficulties running or playing \"Harvester\"(TM),\nplease refer to the manual, technical addendum, or contact technical support.\n");

    exit(1);
}
