pipeline {
    agent {label 'OPENJDK-11' }
    stages {
        stage('To show docker info') {
            steps {
                sh 'dockerfile.sh'
            }
        }
         stage('pull alpine') {
            steps {
                sh 'docker pull alpine'
            }
        }
        stage('list image') {
            steps {
                sh 'docker image ls'
                }
           }
     }
}
