pim "git" {
    base_dir = "/git/"

    version "latest" {
        image="packageless/git:latest"
        
        volume {
            mount="/run/"
        }
    }
}