pipeline {
    agent any

    stages {
        stage('Copy Artifacts from Other Job') {
            steps {
                // Use copyArtifacts step
                copyArtifacts(
                    projectName: 'build-job',
                    selector: lastSuccessful(),
                    filter: '**/*',             // Or specific like: '*.jar', 'output/**'
                    target: 'copied-artifacts/' // Optional: directory to place copied artifacts
                )

                // List the copied files
                sh 'ls -la copied-artifacts/'
            }
        }

        stage('Use the Artifacts') {
            steps {
                // Example: Run some operation on the artifact
                sh 'cat copied-artifacts/sample.txt || echo "File not found"'
            }
        }
    }
}
