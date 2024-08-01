pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                 script {
		                    app=docker.build ("akgundyg/sample-flask:latest")
		                
	                      }
            }
        }
        stage('Container') {
            steps {
                
		sh """
   				docker stop \$(docker ps | grep 'Up'| cut -f1 -d ' ' ) 2 > /dev/null
       				sleep 5
       			"""

                    }
	}
       
	stage('Docker run') {
            steps {
			sh "docker run -itd -p 8080:8080 akgundyg/exercise:latest"

                    }
	                      
            }
        }
    }
  
