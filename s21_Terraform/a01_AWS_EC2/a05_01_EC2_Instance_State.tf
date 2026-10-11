# AResource: aws_ec2_instance_state
## Provides an EC2 instance state resource. This allows managing an instance power state.

resource "aws_ec2_instance_state" "dove_web_state" {
  instance_id = aws_instance.dove_web.id
  state       = "running"
  #   state       = "stopped"
}