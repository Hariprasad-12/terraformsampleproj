pipeline {
    agent any 
     
      environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
      }

     tools{
         terraform 'terraform'
     }
     stages{
         stage ("checkout from GIT"){
             steps {
               git branch: 'main', credentialsId: 'f6299c7f-c9b4-4237-b208-65f6c54eeadf', url: 'https://github.com/Hariprasad-12/terraformsampleproj.git'
             }
         }
         stage ("terraform init"){
             steps {
                 bat  'terraform init'
             }
         }
        stage ("terraform fmt"){
             steps {
                 bat  'terraform fmt'
             }
         }
         stage ("terraform validate"){
             steps {
                 bat  'terraform validate'
             }
         }
         stage ("terraform plan"){
             steps {
                 bat  'terraform plan'
             }
         }
          stage ("terraform apply"){
             steps {
                 bat  'terraform apply --auto-approve'
             }
         }
//           stage ("terraform destroy"){
//              steps {
//                  bat  'terraform destroy --auto-approve'
//              }
//          }
     }
}
