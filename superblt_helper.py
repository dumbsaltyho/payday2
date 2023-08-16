# superblt mod.txt helper
# author: stel (discord: @stel, https://github.com/dumbsaltyho)
import json

mod_is_building_hooks: bool = True
mod_name: str = input("mod name: ") or "test"
mod_description: str = input("mod description: ") or "add later"
mod_author: str = input("mod author: ") or "stel"
mod_contact: str = input("mod contact: ") or "discord: @stel"
mod_image: str = input("mod image: ") or "stel.png"
mod_color: str = input("mod color (default: 105 65 143): ") or "105 65 143"
mod_version: str = input("mod version (default: 1): ") or "1"
mod_priority: str = input("mod priority (default: 10): ") or "10"

mod_txt_json: dict = {
	"name" : mod_name,
	"description" : mod_description,
	"author" : mod_author,
	"contact" : mod_contact,
	"image" : mod_image,
	"color" : mod_color,  
	"version" : mod_version,
	"priority" : mod_priority,
	"blt_version" : "2"
}
if (input("do you need hooks? (y/n): ") == "y"):
	mod_txt_json["hooks"]:list  = []
	while mod_is_building_hooks:
		add_mod_hook_id: str = input("hook id, when you're finished adding hooks just press enter:\n")
		if (add_mod_hook_id == "") or (add_mod_hook_id == None):
			break
		else:
			add_mod_script_path: str = input("lua script path:\n")

		add_mod_hook_info: dict = {
			"hook_id" : f"{add_mod_hook_id}",
			"script_path" : f"{add_mod_script_path}"
		}
		mod_txt_json["hooks"].append(add_mod_hook_info)
else: pass

if (input("do you need keybinds? (y/n): ") == "y"):
	mod_txt_json["keybinds"]: list = []
	while mod_is_building_hooks:
		add_mod_keybind_id: str = input("keybind id, when you're finished adding keybinds just press enter:\n")
		if (add_mod_keybind_id == "") or (add_mod_keybind_id == None):
			break
		else:
			add_mod_keybind_name: str = input("keybind name (can be the same as the keybind id): ")
			add_mod_keybind_desc: str = input("keybind desription: ")
			add_mod_keybind_script_path: str = input("keybind script path: ")
			add_mod_keybind_run_in_menu: str = input("run in menu (true / false, default: true)?: ") or "true"
			add_mod_keybind_run_in_game: str = input("run in game (true / false, default: true)?: ") or "true"
			add_mod_keybind_localized: str = input("localized (true / false, default: false)?") or "false"

		add_mod_keybind_info: dict = {
			"keybind_id" : add_mod_keybind_id,
			"name" : add_mod_keybind_name,
			"description" : add_mod_keybind_desc,
			"script_path" : add_mod_keybind_script_path,
			"run_in_menu" : add_mod_keybind_run_in_menu,
			"run_in_game" : add_mod_keybind_run_in_game,
			"localized" : add_mod_keybind_localized,
		}
		mod_txt_json["keybinds"].append(add_mod_keybind_info)
else: pass

if (input("do you need pre-hooks? (y/n): ") == "y"):
	mod_txt_json["pre_hooks"]:list  = []
	while mod_is_building_hooks:
		add_mod_prehook_id: str = input("pre-hook id, when you're finished adding prehooks just press enter:\n")
		if (add_mod_prehook_id == "") or (add_mod_prehook_id == None):
			break
		else:
			add_mod_prehook_script_path: str = input("lua script path:\n")

		add_mod_prehook_info: dict = {
			"hook_id" : f"{add_mod_prehook_id}",
			"script_path" : f"{add_mod_prehook_script_path}"
		}
		mod_txt_json["hooks"].append(add_mod_prehook_info)
else: pass

if (input("do you need persist scripts? (y/n): ") == "y"):
	mod_txt_json["persist_scripts"]:list  = []
	while mod_is_building_hooks:
		add_mod_persist_global: str = input("persist script global, when you're finished adding persist scripts just press enter:\n")
		if (add_mod_persist_global == "") or (add_mod_persist_global == None):
			break
		else:
			add_mod_persist_script_path: str = input("lua script path:\n")

		add_mod_persist_info: dict = {
			"global" : f"{add_mod_persist_global}",
			"script_path" : f"{add_mod_persist_script_path}"
		}
		mod_txt_json["persist_scripts"].append(add_mod_hook_info)
else: pass

print("written to mod.txt:")
print(json.dumps(mod_txt_json, indent=4))
with open("mod.txt", "w") as mod_txt_outfile:
	mod_txt_outfile.write(json.dumps(mod_txt_json, indent=4))