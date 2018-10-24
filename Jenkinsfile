node {
    stage('Checkout'){
          checkout scm
       }

    datas = readYaml file: 'params/dev/test.yml'

    stage('config variables') {
	  //  sh 'env > env.txt' 
	 //   for (String i : readFile('env.txt').split("\r?\n")) {
    //	    	println i
	  //  }
	
	//for (String i : readFile('params/dev/test.txt').split("\r?\n")) {
      //          println i
       // }
            echo " =========== ^^^^^^^^^^^^ Reading config via Python... "
            //	sh " env.txt"
	    sh "echo PACKER_OPTIONS is ${datas.PACKER_OPTIONS}"
            echo " =========== ~~~~~~~~~~~~ ============ "
        }
    }
