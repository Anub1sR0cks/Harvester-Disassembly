#include "convutil.hpp"
#include "dialog.hpp"

int talk_to_CURATOR()
{
    // "Welcome to the Harvest Moon Art Gallery, sir.  I'm the Curator of this place.  So delighted you could come."
    play_wav(1061, "CURATOR", 1);

    GetDlgFileString(74);

    switch (get_response()) {
        // 1. I expect it'll be an engaging experience.
        case 1:
            // "That it will, I'm afraid.  Art often forces engagement, doesn't it?"
            play_wav(1072, "CURATOR", 3);

            break;
        // 2. Can't wait to see what passes for art in this hell hole.
        case 2:
            // "That's always the dilemma, sir.  What are the boundaries of art?  Only you can answer that and only for yourself."
            play_wav(1077, "CURATOR", 0);

            break;
    }

    // "Lovely works, pastoral scenes, noble sculptures... these are easy on the eye and mind.  But when confronted with a work of hideous form, you're forced to deal with it, even if only to dismiss it as trash.  Sadly, the most extreme works are the hardest to dismiss."
    play_wav(1082, "CURATOR", 0);
    // "Grotesqueries amid works of beauty are necessary.  That should be taken for granted; nevertheless, it's important that each individual determine his own sense of aesthetics.  For that reason, I give you permission to obliterate that which forces you to linger too long in the gallery."
    play_wav(1083, "CURATOR", 0);
    // "I'm just passing through."
    play_wav(1095, "PC", 0);
    // "If only it were that simple."
    play_wav(1099, "CURATOR", 3);

    return 0;
}
