pipeline {
    agent {
        docker {
            image '31z4/tox:latest'
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
