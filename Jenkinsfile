pipeline {
    agent {label 'OPENJDK-11' }
    stages {
        stage('To show docker info') {
            steps {
                sh """sudo apt update
                curl -fsSL https://get.docker.com -o get-docker.sh
                sh get-docker.sh -y
                sudo systemctl startd docker
                sudo systemctl enable docker
                sudo usermode -aG docker ubuntu
                sudo systemctl restart docker
                sudo docker info"""
            }
        }
     }
}
