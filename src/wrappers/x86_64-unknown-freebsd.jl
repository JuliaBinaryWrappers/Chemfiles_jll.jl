# Autogenerated wrapper script for Chemfiles_jll for x86_64-unknown-freebsd
export libchemfiles

JLLWrappers.@generate_wrapper_header("Chemfiles")
JLLWrappers.@declare_library_product(libchemfiles, "libchemfiles.so.0.10.0")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libchemfiles,
        "lib/libchemfiles.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
