pipeline {
    agent {label 'DOCKER'}
    stages{
        stage('VCS') {
            steps {
                git branch :"main" , url:'https://github.com/nagvenkat1/dockerimage.git'
            }
        }
        stage('IMAGE BUILD'){
            steps{
                sh 'docker image build -t spc_pet:1.0 .'
            }
        }
        stage('CONTAINER RUN') {
            steps {
                sh 'docker container run --name spring -d -p 8081:8080 spc_pet:1.0'
            }
        }
}
}
