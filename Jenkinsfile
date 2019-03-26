pipeline {

    agent any
    environment {
        SRC = credentials('github')
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
            sh 'git remote set-url origin "https://"$SRC_USR":"$SRC_PSW"@github.com/vmoerman/logstash"'
            sh 'git tag "$BUILD_NUMBER"'
            sh 'sudo git push origin --tags'
          }
       }
        stage('SCP files to UAT') {
            steps {
             sh 'echo "scp conf.d/* to <URL>/etc/logstash/conf.d/"'
            }
        }
        stage('SCP files to PROD') {
            steps {
             sh 'echo "scp conf.d/* to <URL>/etc/logstash/conf.d/"'
            }
        }
    }
}
