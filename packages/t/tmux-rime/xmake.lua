package("tmux-rime")
do
    set_homepage("https://github.com/rimeinn/tmux-rime")
    set_description("Rime input method integration for tmux (static lib)")
    set_license("MIT")

    add_urls("https://github.com/rimeinn/tmux-rime/archive/refs/tags/$(version).tar.gz")
    add_versions("0.0.6", "fc800c931f0b63baa738a68829c6255d1af55fe34ca646ef30d03dce0a1f7cce")

    on_install(function(package)
        import("package.tools.xmake").install(package)
    end)
end
