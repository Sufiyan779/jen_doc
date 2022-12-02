pipeline{
    agent {label "OPENJDK-11"}

    stages("pull form vcs"){
        stage{
            steps{
                git url: https://github.com/Sufiyan779/jen_doc.git,
                branch: master
            }
        }
        stage("install docker"){
            steps{
                sh """sudo apt update
                sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
                curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
                sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable
                apt-cache policy docker-ce
                sudo apt install docker-ce -y
                sudo systemctl status docker
                sudo usermod -aG docker ${USER}
                docker info"""
            }

        }
    }
}