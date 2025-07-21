pipeline {
    agent any

    stages {
        stage('Agent Info') {
            steps {
                echo "Node name: ${env.NODE_NAME}"
                echo "Workspace: ${env.WORKSPACE}"
                echo "Executor number: ${env.EXECUTOR_NUMBER}"
                echo "Computer name: ${env.COMPUTER_NAME ?: 'Unknown'}"
            }
        }
    }
}
