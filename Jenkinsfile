
pipeline {
    agent any

    environment {
        SSH_KEY = "/path/to/your/key.pem"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://your.git.repo/url.git'
            }
        }

        stage('Terraform Init & Apply') {
            steps {
                sh 'chmod +x run-terraform.sh && ./run-terraform.sh'
            }
        }

        stage('Ansible Run') {
            steps {
                sh 'chmod +x run-ansible.sh && ./run-ansible.sh'
            }
        }
    }
}
