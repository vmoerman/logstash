pipeline {
    agent any

    stages {
        stage('stop filebeat') {
            steps {
               sh 'sudo systemctl stop filebeat'
               sh 'sudo systemctl stop logstash'
            }
        }
        stage('update filebeat') {
            steps {
                sh 'sudo yum update -y filebeat'
                sh 'sudo yum update -y logstash-6.5*'
            }
        }
        stage('start filebeat') {
            steps {
                sh 'sudo systemctl start filebeat'
                sh 'sudo systemctl start logstash'
            }
        }
    }
}
