pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
            steps {
               sh 'lastfile=$(ls conf.d/ -t | head -1'
               sh 'docker run -v /home/victor/logstash/conf.d/(($lastfile)):/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
            }
        }
       stage('bla') {
          steps {
            sh 'echo "pushing conf to UAT"'
          }
       }
    }
}
