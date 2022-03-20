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
              git branch: 'main', credentialsId: 'gihubcredentialss', url: 'https://github.com/sudharshanrr/Angular13.git'
            }
        }
        
    }

}
