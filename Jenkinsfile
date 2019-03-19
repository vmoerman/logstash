pipeline {
   
    agent {
      docker {
          image 'logstash:6.6.2'
      }
    }
    stages {
        stage('testconf') {
            steps {
                sh 'mvn -B'
            }
        }
        stage('test new conf in docker') {
            steps {
                sh 'echo "tagged"'
            }
        }
    }
}
