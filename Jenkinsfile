
pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Syedshakeel23/terraform-ansible-challenge.git'
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
