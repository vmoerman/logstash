pipeline {

    agent any

    stages {
        stage('testconf') {
            steps {
               sh 'sudo mv -f conf.d/* /etc/logstash/conf.d/'
               sh 'sudo /usr/share/logstash/bin/logstash -t --path.settings /etc/logstash/'
            }
        }
       stage('tag em') {
          steps {
            sh 'git tag "$BUILD_NUMBER"'
            sh 'sudo git remote -v'
            sh 'sudo git push origin "$BUILD_NUMBER"'
          }
       }
    }
}
