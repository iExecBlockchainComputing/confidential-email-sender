// Readme @ http://gitlab.iex.ec:30000/iexec/jenkins-library
@Library('global-jenkins-library@1.6.1') _

def nativeImage = buildSimpleDocker_v2(dockerfileDir: './docker', buildContext: '.',
        dockerImageRepositoryName: 'private-data-email-app', imageprivacy: 'public')
sconeBuildAllTee(nativeImage: nativeImage, targetImageRepositoryName: 'private-data-email-app',
        sconifyArgsPath: './docker/sconify.args')
