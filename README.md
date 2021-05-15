# Hello Release (Maven)

This is a sample project to experiment with the release process for Java/Maven projects.

## Intention

The intention and goal of this project is to ease the release process with automation of repetitive and manual tasks that need to be performed whenever a new version is released, i.e.:

- creating a release branch
- setting the release version
- creating a release tag
- incrementing the develop version to the next snapshot
- updating the main branch after the release

## Scripts for Convenient Execution

There are two utility scripts provided in the [`scripts/` directory](./scripts) to ease the release process:

- [`release-start.sh`](./scripts/release-start.sh)
- [`release-finish.sh`](./scripts/release-finish.sh)

Both of them rely on the [gitflow-maven-plugin](https://github.com/aleksandr-m/gitflow-maven-plugin) that takes already care of the steps mentioned above.

This plugin is configured with customized commit messages during the release process so that the scripts have to be exuecuted with the ticket ID of a release handling ticket:

```shell
$ ./scripts/release-[start|finish].sh ABC-123
```

The scripts have to be executed from the repository root.
