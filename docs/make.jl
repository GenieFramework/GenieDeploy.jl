using Documenter

push!(LOAD_PATH,  "../../src")

using GenieDeploy

makedocs(
    sitename = "GenieDeploy - Deploying Genie Apps to cloud",
    format = Documenter.HTML(prettyurls = false),
    pages = [
        "Home" => "index.md",
        "GenieDeploy API" => [
          "GenieDeploy" => "API/geniedeploy.md",
        ]
    ],
)

deploydocs(
  repo = "github.com/GenieFramework/GenieDeploy.jl.git",
)
