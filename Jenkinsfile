pipeline {
   
    agent any
   
    stages {
        stage('testconf') {
            steps {
               sh 'file=$(ls conf.d/ -t | head -1)'
               sh 'echo $file'
               sh 'docker run -v /home/victor/logstash/conf.d/$file/:/usr/share/logstash/pipeline/ logstash:6.6.2 -t'
            }
        }
       stage('bla') {
          steps {
            sh 'echo "pushing conf to UAT"'
          }
       }
    }
}
