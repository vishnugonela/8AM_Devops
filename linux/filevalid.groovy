pipeline {
    agent any

    environment {
        JENKINS_HOME_DIR = "/var/lib/jenkins"
        BACKUP_BASE = "/var/backup/jenkins"
    }

    stages {
        stage('Create Backup') {
            steps {
                sh '''
                #!/bin/bash

                # Generate timestamp
                TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

                # Final backup directory
                BACKUP_DIR="${BACKUP_BASE}/${TIMESTAMP}"
                mkdir -p "${BACKUP_DIR}"

                echo "Backing up Jenkins home directory: ${JENKINS_HOME_DIR}"
                echo "Backup destination: ${BACKUP_DIR}"

                # Exclude unnecessary folders like workspace and logs
                tar --exclude="${JENKINS_HOME_DIR}/workspace" \
                    --exclude="${JENKINS_HOME_DIR}/logs" \
                    -czf "${BACKUP_DIR}/jenkins_backup_${TIMESTAMP}.tar.gz" "${JENKINS_HOME_DIR}"

                echo "Backup completed successfully."
                '''
            }
        }
    }
}

