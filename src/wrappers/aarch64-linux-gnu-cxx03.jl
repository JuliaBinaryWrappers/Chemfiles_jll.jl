# Autogenerated wrapper script for Chemfiles_jll for aarch64-linux-gnu-cxx03
export libchemfiles

JLLWrappers.@generate_wrapper_header("Chemfiles")
JLLWrappers.@declare_library_product(libchemfiles, "libchemfiles.so.0.10")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libchemfiles,
        "lib/libchemfiles.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
