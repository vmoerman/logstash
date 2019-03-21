pipeline {
   
    agent any
   
    stages {
        stage('test configuration in logstash') {
            steps {
               sh 'sudo /usr/share/logstash/bin/logstash -t --path.settings /etc/logstash/'
            }
        }
       stage('tag the new configuration') {
          steps {
            sh 'echo "pushing conf to UAT"'
          }
       }
    }
}
