pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
            steps {
                sh 'docker run -v /home/victor/logstash/conf.d/:/usr/share/logstash/pipeline/ logstash:6.6.2'
            }
        }
        stage('test new conf in docker') {
            steps {
                sh 'echo "tagged"'
            }
        }
    }
}
