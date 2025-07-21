pipeline {
    agent any
    stages {
        stage('Show Master/Slave Details') {
            steps {
                script {
                    def masterHost = Jenkins.instance.getRootUrl()
                    echo "Jenkins Master URL: ${masterHost}"

                    def nodes = Jenkins.instance.nodes
                    nodes.each { node ->
                        echo "Agent Name: ${node.getNodeName()}"
                    }
                }
            }
        }
    }
}
