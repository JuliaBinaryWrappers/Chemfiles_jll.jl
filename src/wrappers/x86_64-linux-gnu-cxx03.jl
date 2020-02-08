# Autogenerated wrapper script for Chemfiles_jll for x86_64-linux-gnu-cxx03
export libchemfiles

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libchemfiles`
const libchemfiles_splitpath = ["lib", "libchemfiles.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libchemfiles_path = ""

# libchemfiles-specific global declaration
# This will be filled out by __init__()
libchemfiles_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libchemfiles = "libchemfiles.so.0.9.3"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Chemfiles")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libchemfiles_path = normpath(joinpath(artifact_dir, libchemfiles_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libchemfiles_handle = dlopen(libchemfiles_path)
    push!(LIBPATH_list, dirname(libchemfiles_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

