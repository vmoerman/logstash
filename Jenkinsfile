pipeline {
   
    agent {
      docker {
         image 'logstash:6.6.2'
         args '-v /home/victor/logstash/conf.d/:/usr/share/logstash/pipeline/'
         args '--config.reload.automatic'
      }
    }
    stages {
        stage('testconf') {
            steps {
                sh ''
            }
        }
        stage('test new conf in docker') {
            steps {
                sh 'echo "tagged"'
            }
        }
    }
}
