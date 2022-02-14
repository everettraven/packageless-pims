pim "node" {
    base_dir = "/node/"

    version "latest" {
        image="packageless/node:latest"
        
        volume {
            mount="/run/"
        }

        port=3000
    }
}