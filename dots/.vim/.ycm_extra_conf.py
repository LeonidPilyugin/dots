def Settings(**kwargs):
    """
    YCM settings
    """
    lang = kwargs["language"]

    if lang == "cfamily":
        return {
                "flags": [ "-x", "c", "-std=c99", "-Wall", "-Wextra", "-Werror", "-I", "include", "-I."],
        }
    elif lang == "python":
        import shutil

        return {
            "interpreter_path": shutil.which("python"),
        }
