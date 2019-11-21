using Documenter, PiCamera

makedocs(
    modules = [PiCamera],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "yakir12",
    sitename = "PiCamera.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/yakir12/PiCamera.jl.git",
)
