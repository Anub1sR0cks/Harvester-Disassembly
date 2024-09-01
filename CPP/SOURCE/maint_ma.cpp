int talk_to_MAINTENANCE_MAN()
{
    if (check_script_flag("MAINTENANCE_MAN_FOURTH_CONVERSATION")) {
        // "All right, buddy... you axed for it!"
        play_wav(3524, "MAINT_MAN", 2);
    }
    else if (check_script_flag("MAINTENANCE_MAN_THIRD_CONVERSATION")) {
        // "You think just because I'm a janitor I got no pride?  That all I got to do all day is clean up after you rich bastards?  Take a hike before you get hurt!"
        play_wav(3516, "MAINT_MAN", 2);
    }
    else if (check_script_flag("MAINTENANCE_MAN_FIRST_CONVERSATION")) {
        // "Hey, buddy, gimme a break, willya?  Keep off the floor."
        play_wav(3510, "MAINT_MAN", 0);
    }
    else {
        // "Excuse me.  You can't come in right now... I just mopped the floor."
        play_wav(3503, "MAINT_MAN", 1);
    }

    return 0;
}
