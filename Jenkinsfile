pipeline {
    agent any

    stages {
        stage('Build') {
         agent {
                        docker {
                           image  'maven:3.8.1-openjdk-17-slim'
                           reuseNode true
                        }
                    }
            steps {
             sh '''
               ls -la
               mvn clean package -DskipTests
               ls -la
             '''
            }
        }
    }
    post {
      success {
        archiveArtifacts artifacts: 'target/*.jar'
           }
        }
}
