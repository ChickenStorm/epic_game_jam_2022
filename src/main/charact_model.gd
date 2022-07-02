extends MeshInstance

export var texture_back : Texture
export var texture_front : Texture

func _ready():
	get("material/0").next_pass.set_texture(SpatialMaterial.TEXTURE_ALBEDO, texture_back)
	get("material/0").set_texture(SpatialMaterial.TEXTURE_ALBEDO, texture_front)
	set("material/0", get("material/0").duplicate(true))
