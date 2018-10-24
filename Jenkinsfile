node {
    properties([parameters([choice(choices: ['dev', 'test', 'prod'], description: 'choose an environment:', name: 'environment')])])

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
