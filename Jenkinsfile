pipeline{
    agent any
    environment {
        PROJECT_NAME = "Devops"
    }
    parameters {
    string defaultValue: 'main', name: 'Branch'
    choice choices: ['dev', 'qa', 'sandbox', 'prod'], name: 'Environment'
    }
    
    
    
    options {
        timestamps()
    }
    stages {
        stage('pull code') {
            steps {
              git branch: 'main', credentialsId: 'de4c2844-dce3-4e10-a792-82cc213ffff0', url: 'https://github.com/sudharshanrr/Angular13.git'
            }
        }
        
    }

}
