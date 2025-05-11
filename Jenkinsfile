pipeline {
    agent any

    stages {
        stage('Cloning github repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/anuradha3012/Terraform-Automation.git']])
            }
        }
    
         stage ("terraform init") {
            steps {
               sh ("terraform init -reconfigure") 
            }
         }
        
        stage ("terraform validate") {
            steps {
                sh ("terraform validate") 
            }
        }

        stage ("Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
