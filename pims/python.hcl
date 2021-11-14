pim "python" {
    base_dir="/python/"
   
    version "latest" {
        image="packageless/python"
        
        volume {
            path="/python/latest/packages/"
            mount="/usr/local/lib/python3.10/site-packages/"
        }

        volume {
            mount="/run/"
        }

        copy {
            source="/usr/local/lib/python3.10/site-packages/"
            dest="/python/latest/packages/"
        }

        port="3000"
    }

    version "3.9" {
        image="packageless/python:3.9"
        
        volume {
            path="/python/3.9/packages/"
            mount="/usr/local/lib/python3.9/site-packages/"
        }

        volume {
            mount="/run/"
        }

        copy {
            source="/usr/local/lib/python3.9/site-packages/"
            dest="/python/3.9/packages/"
        }

        port="3000"
    }
    
    version "3.8" {
        image="packageless/python:3.8"
        
        volume {
            path="/python/3.8/packages/"
            mount="/usr/local/lib/python3.8/site-packages/"
        }

        volume {
            mount="/run/"
        }

        copy {
            source="/usr/local/lib/python3.8/site-packages/"
            dest="/python/3.8/packages/"
        }

        port="3000"
    }

    version "3.7" {
        image="packageless/python:3.7"
        
        volume {
            path="/python/3.7/packages/"
            mount="/usr/local/lib/python3.7/site-packages/"
        }

        volume {
            mount="/run/"
        }

        copy {
            source="/usr/local/lib/python3.7/site-packages/"
            dest="/python/3.7/packages/"
        }

        port="3000"
    }

    version "3.6" {
        image="packageless/python:3.6"
        
        volume {
            path="/python/3.6/packages/"
            mount="/usr/local/lib/python3.6/site-packages/"
        }

        volume {
            mount="/run/"
        }

        copy {
            source="/usr/local/lib/python3.6/site-packages/"
            dest="/python/3.6/packages/"
        }

        port="3000"
    }

    version "2" {
        image="packageless/python:2"
        
        volume {
            path="/python/2/packages/"
            mount="/usr/local/lib/python2.7/site-packages/"
        }

        volume {
            mount="/run/"
        }

        copy {
            source="/usr/local/lib/python2.7/site-packages/"
            dest="/python/2/packages/"
        }

        port="3000"
    }
}