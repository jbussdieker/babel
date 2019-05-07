node {
  stage('clone') {
    checkout scm
  }

  withEnv(["HOME=${pwd()}"]) {
    stage('bash') {
      dir('bash') {
        docker.image('bash').inside {
          sh 'bash hello_world.bash'
        }
      }
    }

    stage('c++') {
      dir('c++') {
        docker.image('gcc').inside {
          sh 'g++ hello_world.cpp -o hello_world'
          sh './hello_world'
        }
      }
    }

    stage('c') {
      dir('c') {
        docker.image('gcc').inside {
          sh 'gcc hello_world.c -o hello_world'
          sh './hello_world'
        }
      }
    }

    stage('erlang') {
      dir('erlang') {
        docker.image('erlang').inside {
          sh 'escript hello_world.erl || true'
        }
      }
    }

    stage('go') {
      dir('go') {
        docker.image('golang').inside {
          sh 'go run hello_world.go'
        }
      }
    }

    stage('groovy') {
      dir('groovy') {
        docker.image('groovy').inside {
          sh 'groovy Main.groovy'
        }
      }
    }

    stage('java') {
      dir('java') {
        docker.image('java').inside {
          sh 'javac HelloWorld.java'
          sh 'java HelloWorld'
        }
      }
    }

    stage('javascript') {
      dir('javascript') {
        docker.image('node').inside {
          sh 'node hello_world.js'
        }
      }
    }

    stage('php') {
      dir('php') {
        docker.image('php').inside {
          sh 'php hello_world.php'
        }
      }
    }

    stage('python') {
      dir('python') {
        docker.image('python').inside('--entrypoint=""') {
          sh 'python hello_world.py'
        }
      }
    }

    stage('ruby') {
      dir('ruby') {
        docker.image('ruby').inside {
          sh 'ruby hello_world.rb'
        }
      }
    }
  }
}
