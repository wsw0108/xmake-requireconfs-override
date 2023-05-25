add_rules("mode.debug", "mode.release")

add_requires("fmt", {system = false})
add_requires("spdlog", {configs = {fmt_external = true, header_only = false}})

target("spdlog-fmt-v10")
    set_kind("binary")
    add_files("src/*.cpp")
    add_packages("fmt", "spdlog")
