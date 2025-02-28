pipeline {
    agent any
    tools {
        git '/usr/bin/git' // Path to Git executable in the system
    }

    stages {
        stage('Code checkout from Git') {
            steps {
                // Clone the public repository from GitHub
                git url: 'https://github.com/remyars18/terraform-test-run-jenkins.git', branch: 'main'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    // Use AWS credentials stored in Jenkins credentials manager
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws_credential']]) {
                        // Run terraform init with -reconfigure flag to reconfigure backend
                        sh 'terraform init  -reconfigure'  // Run terraform init to initialize the backend
                    }
                }
            }
        }
    }
}
