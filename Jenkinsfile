pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
           environment {
               LASTFILE = (sh 'file=$(ls conf.d/ -t | head -1)')
           }
            steps {
               sh 'docker run -v /home/victor/logstash/conf.d/env.LASTFILE:/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
            }
        }
       stage('bla') {
          steps {
            sh 'echo "pushing conf to UAT"'
          }
       }
    }
}
