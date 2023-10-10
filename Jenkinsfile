pipeline {
    agent {
        docker {
            image 'mj0nez/tox-ci:latest'
            // args '-u tox'
        }
    }
    // environment {
    //     PRE_COMMIT_HOME=
    // }
    stages {
        stage('Debug') {
            steps {
                sh 'env'
                sh 'whoami'
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
