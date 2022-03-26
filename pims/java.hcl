pim "java" {
    base_dir = "/java/"

    version "latest" {
        image="packageless/java:latest"
        
        volume {
            mount="/run/"
        }

        port=3000
    }
}