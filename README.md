# Minimal Java project to test workflows webhooks

To build run `mvn compile`, or `mvn package` to create `.jar`.

# Workflows

The project contains three different jobs:

- `release`
- `run-tests`
- `build-windows`

`release` is run automatically whenever a tag that starts with `v` is pushed, like `v0.1.0`.
`run-tests` is launched manually when running `trigger-workflow.sh <MY_GH_TOKEN> run-tests`.
`build-windows` is launched manually when running `trigger-workflow.sh <MY_GH_TOKEN> build-windows`.


`<MY_GH_TOKEN>` must be substituted with a personal access token that has the `repo` scope.

See [this][dispatch-event-doc] for more information about dispatch events and [this][personal-access-token] for more info on personal access tokens.

[dispatch-event-doc]: https://developer.github.com/v3/repos/#create-a-repository-dispatch-event
[personal-access-token]: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line
