pipeline {
    agent any

    stages {
        stage('Get User Input') {
            steps {
                script {
                    def username = input(message: "Enter your username (UPPERCASE, no spaces):", parameters: [string(name: 'USERNAME')])
                    if (username ==~ /^[A-Z]+$/) {
                        echo "Valid username: ${username}"
                    } else {
                        error "Invalid username. It must be UPPERCASE letters only with no spaces."
                    }
                }
            }
        }

        stage('Continue Pipeline') {
            steps {
                echo "Proceeding with further steps..."
            }
        }
    }
}
