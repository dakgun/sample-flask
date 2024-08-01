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
    }
   stages {
        stage('Container') {
            steps {
                 script {
		                    app.run(["-p 8080:8080"])
		                
	                      }
            }
        }
    }
}
  
