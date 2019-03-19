pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
            steps {
                sh 'docker run -v /home/victor/logstash/conf.d/:/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
            }
        }
        stage('tag git release') {
            steps {
                sh 'echo "tagged"'
            }
        }
    }
}
