variable "project_name" {
    type = string
    default = "roboshop"
  
}

variable "environment" {
    default = "dev"
  
}

  


variable "sg_name" {
    default = [
        #databsae
        "mongodb","redis","mysql","rabbitmq",
        /* #backend
        "catalogue","user","cart","shipping","payment",
        #frontend
        "frontend", */
        #bastion
        "bastion"
        #frontend load balncer
        , "ingress_alb",
        #backend load balncer
        # "backend_alb",
        "open_vpn",
        "eks_control_plane",
        "eks_node"

        

        
        ]  


  
}