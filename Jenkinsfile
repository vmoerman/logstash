pipeline {

    agent any

    stages {
        stage('testconf') {
            steps {
               sh 'cd /etc/logstash'
               sh 'pwd'
               sh 'sudo /usr/share/logstash/bin/logstash -t --path.settings /etc/logstash/'
            }
        }
       stage('bla') {
          steps {
            sh 'echo "pushing conf to UAT"'
          }
       }
    }
}
