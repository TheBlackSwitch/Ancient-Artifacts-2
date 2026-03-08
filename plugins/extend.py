from beet import Context, JsonFile


def beet_default(ctx: Context):
    ctx.assets.extend_namespace_extra["versions.json"] = JsonFile