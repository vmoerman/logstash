pipeline {

    agent any

    stages {
        stage('testconf') {
            steps {
               sh 'sudo mv -f conf.d/* /etc/logstash/conf.d/'
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
