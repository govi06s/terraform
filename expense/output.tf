#use output.instance_info
# output.instance_info == aws_instance.expense
output "instance_info" {
  value = aws_instance.expense
}