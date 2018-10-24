node {
    properties([parameters([choice(choices: "debug\ntest\ndev",
        description: '', name: 'environment')]), pipelineTriggers([])])

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
