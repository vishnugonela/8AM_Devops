//Create a jenkins job to take the backup of Jenkins Server


pipeline {
    agent any
    environment {
        JENKINS_HOME = '/var/lib/jenkins'
        BACKUP_DIR = '/backup/jenkins-backup'
        DATE = sh(script: 'date +%Y-%m-%d_%H-%M-%S', returnStdout: true).trim()
    }
    stages {
        stage('Backup Jenkins Home') {
            steps {
                sh '''
                    mkdir -p "$BACKUP_DIR"
                    BACKUP_FILE="$BACKUP_DIR/jenkins_backup_${DATE}.tar.gz"
                    tar --exclude="${JENKINS_HOME}/workspace" --exclude="${JENKINS_HOME}/war" --exclude="$BACKUP_DIR" -czvf "$BACKUP_FILE" "$JENKINS_HOME"
                    find "$BACKUP_DIR" -type f -mtime +7 -name "*.tar.gz" -exec rm {} \\;
                    echo "Backup completed: $BACKUP_FILE"
                '''
            }
        }
    }
}
