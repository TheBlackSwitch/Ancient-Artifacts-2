# -------------------
#  Custom temp item
# -------------------

$execute unless items entity @s armor.head * run return run item replace entity @s armor.head with poisonous_potato[item_model="minecraft:air",tooltip_display={hide_tooltip:true},equippable={equip_sound:"minecraft:intentionally_empty",slot:head,asset_id:"armadillo_scute",camera_overlay:"$(texture)"},custom_data={"tbs.has_overlay": true,"tbs.clear_when_dropped":true,"tbs.temp_overlay":true}]

# ----------------
#  Modify Helmet
# ----------------


$item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
		} \
	} \
}


$execute if items entity @s armor.head leather_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:leather" \
		} \
	} \
}

$execute if items entity @s armor.head golden_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:gold" \
		} \
	} \
}

$execute if items entity @s armor.head chainmail_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:chainmail" \
		} \
	} \
}

$execute if items entity @s armor.head iron_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:iron" \
		} \
	} \
}

$execute if items entity @s armor.head diamond_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:diamond" \
		} \
	} \
}

$execute if items entity @s armor.head netherite_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:netherite" \
		} \
	} \
}

$execute if items entity @s armor.head turtle_helmet run item modify entity @s armor.head { \
    "function": "minecraft:set_components", \
	"components": { \
		"minecraft:equippable": { \
			"slot": "head", \
			"equip_sound": "minecraft:intentionally_empty", \
			"camera_overlay": "$(texture)", \
            "asset_id": "minecraft:turtle_scute" \
		} \
	} \
}

item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{"tbs.has_overlay":true}}