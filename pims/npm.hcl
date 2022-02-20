pim "npm" {
    base_dir = "/npm/"

    version "latest" {
        image="packageless/npm:latest"
        
        volume {
            mount="/run/"
        }

        # Copy node modules over
        copy {
            source="/usr/local/lib/node_modules/"
            dest="/npm/node_modules"
        }

        # Mount where the global installed node modules will go
        volume {
            path="/npm/node_modules/"
            mount="/usr/local/lib/node_modules/"
        }

        # Copy the config file over
        copy {
            source="/usr/local/lib/node_modules/npm/.npmrc"
            dest="/npm/"
        }

        # Mount the volume for the config file
        volume {
            path="/npm/.npmrc"
            mount="/usr/local/lib/node_modules/npm/.npmrc"
        }

        port=3000
    }
}