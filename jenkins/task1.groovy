pipeline {
    agent any

    stages {
        stage('List Jenkins Nodes') {
            steps {
                script {
                    // Jenkins instance
                    def jenkinsInstance = Jenkins.instance

                    // Get all nodes (including master and agents)
                    def nodes = jenkinsInstance.nodes

                    // Print master details
                    echo "Master Node:"
                    def master = jenkinsInstance.getComputer("")
                    echo "  Name: Master"
                    echo "  Online: ${master.isOnline()}"
                    echo "  Hostname: ${master.getHostName()}"
                    echo "  Executors: ${master.countExecutors()}"

                    // Print slave/agent details
                    nodes.each { node ->
                        def computer = node.toComputer()
                        echo "Agent Node:"
                        echo "  Name: ${node.name}"
                        echo "  Online: ${computer.isOnline()}"
                        echo "  Hostname: ${computer.getHostName()}"
                        echo "  Executors: ${node.numExecutors}"
                        echo "  Labels: ${node.getLabelString()}"
                    }
                }
            }
        }
    }
}

