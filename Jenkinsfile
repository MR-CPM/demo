pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/MR-CPM/demo.git'
            }
        }

        stage('Build') {
            steps {
                echo "No build needed for HTML"
            }
        }

        stage('Test') {
            steps {
                sh 'test -f index.html'
            }
        }

        stage('Docker Build & Deploy') {
            steps {
                sh '''
                docker build -t demo-html:latest .
                docker stop demo-container || true
                docker rm demo-container || true
                docker run -d -p 80:80 --name demo-container demo-html:latest
                '''
            }
        }
    }
}

