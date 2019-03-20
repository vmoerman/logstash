pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
            steps {
               sh 'docker run -v /home/victor/logstash/conf.d/1/:/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
               sh 'docker run -v /home/victor/logstash/conf.d/2/:/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
               sh 'docker run -v /home/victor/logstash/conf.d/3/:/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
            }
        }
        stage('tag git release') {
            steps {
               sh 'git tag v1.0'
               sh 'git push v1.0'
            }
        }
    }
}
