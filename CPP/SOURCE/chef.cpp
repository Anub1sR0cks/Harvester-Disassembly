#include "dialog.hpp"

int talk_to_LODGE_CHEF()
{
    // "Well, I hope you're proud of yourself, killing my clientele..."
    play_wav(6928, "LODGE_CHEF", 2);
    // "Ever since the monsters invaded this level, the members have taken to dining with the Grand Poobah upstairs."
    play_wav(6937, "LODGE_CHEF", 0);
    // "Actually, I have to admit, my last few meals haven't been up to snuff.  The problem is the freshness of the corpses... or lack thereof.  See, the supply has dried up."
    play_wav(6938, "LODGE_CHEF", 3);
    // "The Sergeant at Arms always used to insist that bodies killed in the Lodge be disposed of without trace, and so the members would bring me their business for preparation and dissemination."
    play_wav(6939, "LODGE_CHEF", 0);

    GetDlgFileString(33);

    switch (get_response()) {
        // 1. What's behind all this killing?
        case 1:
            // "Oh, dear.  You're not a member, are you?  You're an initiate.  Forgive me.  I can't say another word about it."
            play_wav(6956, "LODGE_CHEF", 3);

            break;
        // 2. Tell me... do you know about a girl named Stephanie?
        case 2:
            // "Sorry, you'd need to talk to the Membership Director up on two."
            play_wav(6961, "LODGE_CHEF", 0);

            break;
    }

    // "Can you tell me anything that might help me?
    play_wav(6966, "PC", 0);
    // "Not really..."
    play_wav(6970, "LODGE_CHEF", 3);

    return 0;
}
