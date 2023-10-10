pipeline {
    agent {
        docker {
            image 'mj0nez/tox-ci:latest'
            // args '-u tox'
        }
    }
    stages {
        stage('Debug') {
            steps {
                sh 'env'
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
