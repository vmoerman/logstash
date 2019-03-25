pipeline {

    agent any
    environment {
        SAUCE_ACCESS = credentials('b26beb60-3b99-46b1-806a-d1d4d01b5a6c')
    }

    stages {
        stage('testconf') {
            steps {
               sh 'sudo mv -f conf.d/* /etc/logstash/conf.d/'
               sh 'sudo /usr/share/logstash/bin/logstash -t --path.settings /etc/logstash/'
            }
        }
       stage('tag em') {
          steps {
            sh 'git remote set-url origin "https://"$SAUCE_ACCESS"@github.com/vmoerman/logstash"'
            sh 'git tag "$BUILD_NUMBER"'
            sh 'sudo git push origin --tags'
          }
       }
    }
}
