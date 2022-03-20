pipeline{
    agent any
    environment {
        PROJECT_NAME = "ASSET-TRACK"
    }
    parameters {
    string defaultValue: 'main', name: 'Branch'
    choice choices: ['dev', 'qa', 'sandbox', 'prod'], name: 'Environment'
    }
    
    tools {
    nodejs 'node17'
    }
    
    options {
        timestamps()
    }
    stages {
        stage('pull code') {
            steps {
              git branch: 'master', credentialsId: 'de4c2844-dce3-4e10-a792-82cc213ffff0', url: 'https://github.com/sudharshanrr/email-app.git'
            }
        }
        
    }

}
