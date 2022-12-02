pipeline {
    agent {label 'OPENJDK-11' }
    stages {
        stage('To show docker info') {
            steps {
                sh 'dockerfile.sh'
            }
        }
     }
}
