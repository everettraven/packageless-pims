pim "dotnet" {
    base_dir = "/dotnet/"

    version "latest" {
        image = "packageless/dotnet:latest"

        volume {
            mount = "/run/"
        }

        port = 3000
    }

    version "5.0" {
        image = "packageless/dotnet:5.0"

        volume {
            mount = "/run/"
        }

        port = 3000
    }

    version "3.1" {
        image = "packageless/dotnet:3.1"

        volume {
            mount = "/run/"
        }

        port = 3000
    }
}