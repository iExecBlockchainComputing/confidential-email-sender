// Readme @ http://gitlab.iex.ec:30000/iexec/jenkins-library
@Library('global-jenkins-library@1.6.2') _

def nativeImage = buildSimpleDocker_v2(dockerfileDir: '.', buildContext: '.',
        dockerImageRepositoryName: 'confidential-email-sender', imageprivacy: 'public')
sconeBuildAllTee(nativeImage: nativeImage, targetImageRepositoryName: 'confidential-email-sender',
        sconifyArgsPath: 'sconify.args')
