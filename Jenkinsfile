node {

    parameters {
        string(defaultValue: "TEST", description: 'What environment one?', name: 'userFlag')
        choice(choices: ['DEV', 'TEST'], description: 'What Environment to deploy to?', name: 'environment')
    }

    stage('Checkout'){
          checkout scm
       }

    datas = readYaml file: 'params/dev/dev.yml'

    stage('config variables') {
    //  sh 'env > env.txt' 
	//   for (String i : readFile('env.txt').split("\r?\n")) {
    //	    	println i
	//  }
        echo " =========== ^^^^^^^^^^^^ Reading config via Python... "
        sh "echo PACKER_OPTIONS is ${datas.PACKER_OPTIONS}"
        sh "echo ENVIRONMENT is ${params.environment}"
        echo " =========== ~~~~~~~~~~~~ ============ "
        }
    }
