version 1.0

task hello {
  input {
    String name
  }

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
  runtime {
   docker: "quay.io/agduncan94/my-md5sum"
 }
}

workflow sayHello {
  call hello
}
