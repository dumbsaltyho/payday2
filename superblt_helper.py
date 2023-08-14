# superblt mod.txt helper
import json

mod_building_hooks: bool = True
mod_name: str = input("mod name: ")
mod_description: str = input("mod description: ")
mod_author: str = input("mod author: ")
mod_contact: str = input("mod contact: ")
mod_image: str = input("mod image: ")
mod_color: str = input("mod color (default: 105 65 143): ") or "105 65 143"
mod_version: str = input("mod version (default: 1) :") or "1"
mod_priority: str = input("mod priority (default: 10): ") or "10"
mod_hook_ids: list = []
mod_script_paths: list = []

while mod_building_hooks:
	add_mod_hook_id: str = input("hook id, when you're finished adding hooks just press enter:\n")
	if (add_mod_hook_id == "") or (add_mod_hook_id == None):
		break
	else:
		add_mod_script_path: str = input("lua script path:\n")

	mod_hook_ids.append(add_mod_hook_id)
	mod_script_paths.append(add_mod_script_path)

mod_txt_json: dict = {
	"name" : f"{mod_name}",
	"description" : f"{mod_description}",
	"author" : f"{mod_author}",
	"contact" : f"{mod_contact}",
	"image" : f"{mod_image}",
	"color" : f"{mod_color}",  
	"version" : f"{mod_version}",
	"priority" : f"{mod_priority}",
	"blt_version" : "2",
	"hooks" : [
	]
}

for idx, item in enumerate(mod_hook_ids):
	add_hook_id_and_script_path: dict = {
		"hook_id" : f"{mod_hook_ids[idx]}",
		"script_path" : f"{mod_script_paths[idx]}"
	}
	mod_txt_json["hooks"].append(add_hook_id_and_script_path)

print("written to mod.txt:")
print(json.dumps(mod_txt_json, indent=4))
with open("mod.txt", "w") as mod_txt_outfile:
	mod_txt_outfile.write(json.dumps(mod_txt_json, indent=4))