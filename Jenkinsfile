pipeline {
    agent {label 'OPENJDK-11' }
    stages {
        stage('create image') 
        {
            steps {
                sh 'docker image build -t spring:1.0 .'
            }
        }
        stage('list image') 
        {
            steps {
                sh 'docker image ls'
            }
        }
    }
}
