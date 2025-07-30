pipeline {
    agent any

    stages {
        stage('Get User Input') {
            steps {
                script {
                   # Prompt the user to enter a username
                      read -p "Enter your username (UPPERCASE, no spaces): " username

                      # Validate the username: must be UPPERCASE letters only, no spaces
                        if [[ "$username" =~ ^[A-Z]+$ ]]; then
                          echo "Valid username: $username"
                          else
                echo "Invalid username. It must be UPPERCASE letters only with no spaces."
                  fi
                }
            }
        }
    }
}
