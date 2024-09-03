#include "convutil.hpp"
#include "dialog.hpp"
#include "harvester.hpp"
#include "puzzles.hpp"
#include "scrpties.hpp"

int talk_to_CHESSMASTER()
{
    // "I am the Chessmaster.  Any initiate who wishes to pass this way must do so over my dead body.  Being a civilized man, I offer my opponents a choice - solve my problem, or fight me to the death.  Do you know how to play chess?"
    play_wav(16661, "CHESSMASTER", 0);

    GetDlgFileString(34);

    switch (get_response()) {
        // 1. Yes!
        case 1:
            // "In that case, mate me and you may pass.""
            play_wav(16674, "CHESSMASTER", 1);

            if (chessgame() != 2) {
                set_script_flag("CHESS_SOLVED", 1);

                play_fvi("graphic\\fst\\c125.fst", 0);

                KillNpc("CHESSMASTER", "SLASH");

                break;
            }

        // 2. No...
        case 2:
            // "Chess is a civilized game.  How sad that we must now resort to a less civilized form of conflict."
            play_wav(16678, "CHESSMASTER", 2);

            execute_command("ADD_CHESS_KING_MONSTER");

            play_fvi("graphic\\fst\\kinggrow.fst", 0);
    }

    return 0;
}
