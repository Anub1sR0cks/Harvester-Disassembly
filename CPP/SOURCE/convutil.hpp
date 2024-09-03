#pragma once

void play_wav(int id, const char *name, int face);

int get_response();

int check_script_flag(const char *name);
void set_script_flag(const char *name, int flag);

void KillNpc(const char *name, const char *type);

void ExecuteCommand(const char *command);
