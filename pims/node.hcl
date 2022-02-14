pim "node" {
    base_dir = "/node/"

    version "latest" {
        image="packageless/nodejs:latest"
        
        volume {
            mount="/run/"
        }

        port=3000
    }
}