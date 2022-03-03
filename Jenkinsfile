node{
    def app
    stage('Clone Repository'){
        checkout scm
    }

    stage('Build Image'){
        app = docker.build('psmwareltd/mkdocs-builder')
    }

    stage('Push Image'){
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
            app.push('0.1')
            app.push('latest')
        }
    }

}