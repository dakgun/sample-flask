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
                
			app.run(["-p 8080:8080"])
		                
	                      
            }
        }
    }
}
  
