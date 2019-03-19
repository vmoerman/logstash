pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
            steps {
                sh 'docker run -v /home/victor/logstash/conf.d/:/usr/share/logstash/pipelines/ logstash:6.6.2 -t'
            }
        }
        stage('test new conf in docker') {
            steps {
                sh 'echo "tagged"'
            }
        }
    }
}
