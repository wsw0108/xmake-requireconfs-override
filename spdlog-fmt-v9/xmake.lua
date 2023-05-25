add_rules("mode.debug", "mode.release")

add_requireconfs("*", {build = true})

add_requires("fmt ~9", {system = false})
add_requires("spdlog", {configs = {fmt_external = true, header_only = false}})
add_requireconfs("spdlog.fmt", {override = true, version = "~9"})

target("spdlog-fmt-v9")
    set_kind("binary")
    add_files("src/*.cpp")
    add_packages("fmt", "spdlog")
