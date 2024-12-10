deployment "development" {
  inputs = {
    
    demo_resource_group = {
      environment = "dev"
      location = "canadacentral"
      tags = {
        environment = "development"
      }
    }

    demo_virtual_network = {
      cidr_range = "10.0.0.0/16"
      tags = {
        environment = "development"
      }
    }
  }
}

deployment "production" {
  inputs = {
    
    demo_resource_group = {
      environment = "prod"
      location = "canadacentral"
      tags = {
        environment = "development"
      }
    }

    demo_virtual_network = {
      cidr_range = "10.0.0.0/16"
      tags = {
        environment = "development"
      }
    }
  }
}