# Metamix - A multiple project manager for Elixir

Metamix is a tool to update and build multiple projects. Why would you want
this? Well it's really handy to get a local copy of the documentation of many
projects with a single command.

The basic idea behind metamix is that you tell it you want to have the most
recent version of dynamo and the 0.1 release of ecto and it goes and fetches the
git repositories for dynamo and ecto and then checks out the master branch of
dynamo and the 0.1 tag for ecto and builds those using mix (hence the name
"metamix", it's a layer above mix).

## Configuring metamix

Metamix needs to be told which projects there are. This is easy to do, for
example for dynamo just create a file named "dynamo.metamix" with the following
content:

```json
{ "name": "dynamo",
  "description": "A web framework for Elixir",
  "git": "https://github.com/elixir-lang/dynamo"
}
```

The name has to be consistent with the filename. Metamix work with unique names
for each project. This is a design choice to encourage people not to have
projects with clashing names. For forks it's easy to create a separate metamix
file for the fork (for example I could name my own fork of `ex_doc`
`ex_doc-pminten`).

The description is optional, but it allows metamix to print a list of available
projects and what they are for and also comes in handy when generating the big
list of documentation.

The git field should contain something you can pass to `git clone`. Typically
this will be `https://github.com/USER/REPO`.

Make sure the directory containing the metamix file is in the `METAMIX_PATH`
environment variable. It's possible for a repository managed by metamix to be in
the `METAMIX_PATH`. In fact this is an excellent way to implement a global list
of projects.
