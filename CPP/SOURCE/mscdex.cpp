#include <cstring>

// union REGS regs;

int MSCDEX_installed()
{
    // regs.x.ax = 0x1100;
    // int86(0x2f, &regs, &regs);

    // return regs.h.al == 0x01 ? 0 : 1;

    return 1;
}

void MSCDEX_get_CDROM(int *result)
{
    // regs.x.ax = 0x1500;
    // int86(0x2f, &regs, &regs);

    // *result = regs.x.cx;

    *result = 3;
}

void MSCDEX_get_version(int *result)
{
    // regs.x.ax = 0x150c;
    // int86(0x2f, &regs, &regs);

    // *result = regs.x.bx;

    *result = 217;
}
