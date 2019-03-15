pipeline {
    agent any

    stages {
        stage('Maven Build') {
            steps {
                sh 'echo "building maven artifact"'
            }
        }
        stage('push to nexus') {
            steps {
                sh 'echo "pushed and tagged"'
            }
        }
        stage('start LS docker') {
            steps {
                sh 'echo "starting docker container..."'
            }
        }
    }
}
