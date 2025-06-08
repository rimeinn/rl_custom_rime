-- luacheck: ignore 111 113
---@diagnostic disable: undefined-global
includes("packages/t/tmux-rime")
add_rules("mode.debug", "mode.release")
add_requires("readline", "tmux-rime")

target("rl_custom_rime")
do
    set_kind("shared")
    add_files("src/*.c")
    add_undefines("_XOPEN_SOURCE")
    add_packages("readline", "tmux-rime")
end
