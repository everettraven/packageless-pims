---
title: Create a pims repository
id: create-pim-repo
---

Creating a pims repository is fairly simple, but there are a couple requirements:
1. The repository needs to be accessible via the internet
2. The repository needs to have a URL that will return the raw contents of a file in the repository

Once that is created, you are ready to add pim configuration files! We recommend that you add a **pims** directory to store all your pim configuration files but this isn't necessary.

You can follow the [Creating a pim configuration file](create-pim-config.md) guide to create your first pim configuration file.

Once you have some pim configuration files in your repository you can then set packageless to point to it by changing the `repository_host` value in `~/.packageless/config.hcl` to have the base url that returns the raw contents of a file. This base url should also include the route to the pims directory if it is not the root directory. EX: https://custom.pim-repo.raw/pims/

