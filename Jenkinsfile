pipeline {
    agent {
        docker {
            // image '31z4/tox:latest'
            image 'mj0nez/tox-ci:latest'
            // args '- /.cache'
        }
    }
    stages {
        stage('Debug') {
            steps {
                sh 'env'
                sh 'echo "${UID}"'
                sh 'pwd'
            }
        }

        stage('Test') {
            steps {
                sh 'tox --version'
                sh 'tox'
            }
        }
    }
}
