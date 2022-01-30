---
title: Creating a pim configuration file
id: create-pim-config
---

When creating a new pim configuration file you should take into consideration the following information:
1. packageless pim configuration files **MUST** be in HCL and packageless expects the files to have the extension `.hcl`
2. When installing a pim, packageless will try to find a suitable pim configuration file by looking for a file with the pattern: `{pimName}.hcl` where *{pimName}* is the name of the pim being installed. For example, if I ran `packageless install python` it would look for *python.hcl*

## Create the pim configuration file
Create a new file with the name following the format: `{pimName}.hcl` where *{pimName}* should be replaced with the name of the pim you are creating.

## Add the configuration
Here is a basic template for a pim configuration file that includes all the required values:
```hcl
pim "name" {
    base_dir = "/base/"

    version "latest" {
        image="image/image:latest"

        port=3000
    }
}
```
This configuration defines a pim named "name" that creates a directory called "base" where it will expect all of its files to be. It also defines a version "latest", which is required for a pim to define at least one version named "latest". packageless will default to using the "latest" version if a user does not specify a specific version. Inside the version block, the image associated with the version is given. This is the image that will be pulled from the container registry packageless is pointed to. Also inside the version block we specify a port value, currently this field is required and can be any port value.

Optional blocks that can be added within the version block are:
`volume`:

```hcl
volume {
    path="/path/on/host"
    mount="/path/in/container"
}
```
this block declares that the pim should be run with a volume where the path value is mounted to the container path given as the mount value.

```hcl
volume {
    mount="/path/in/container"
}
```
this block declares that the pim should be run with a volume where the current working directory is mounted to the container path given as the mount value.

`copy`:
```hcl
copy {
    source="/path/in/container"
    dest="/path/on/host"
}
```
this block declares that we need to copy the files/directories from within the container using the path specified in the source value to the host filesystem using the path specified in the dest value.

Modify the pim configuration template to suite your needs and you are good to go!