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
        
        port=3000
    }
}