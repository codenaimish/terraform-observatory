type = map
default = {
 "content1" = "this is cool content 1"
 "content2" = " this is cooler content 2"
}
}

variable "file_list"{
type = list
default = ["/home/ubuntu/terraform-course/terraform-variable/file_1.txt","/home/ubuntu/terraform-course/terraform-variable/file_2.txt"]

}

variable "aws_ec2_object"{
type = object({
       name = string
       instances = number
       key = list (string)
       ami = string
})

default = {
       name = "test_ec2_instance"
       instances = 4
       key = ["key1.pem","key2.pem"]
       ami = "ubuntu-2501"
}
}
