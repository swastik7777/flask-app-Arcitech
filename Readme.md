- Step 1: Create IAM Role for Lambda

Create a New Role:
Then click "Create role".
Select "AWS service" and choose "Lambda".

Attach Policies:
Attach the AmazonEC2FullAccess policy (or create a more restrictive policy if needed).
Click "Next: Tags" and then "Next: Review".
Name the Role: Give the role a name, e.g., EC2StartStopRole, and click "Create role".

- Step 2: Create Lambda Functions
Go to the Lambda Console: Open the AWS Lambda Console.

- Create the Start Instance Function:
By using boto3 library of python


import boto3
def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    response = ec2.start_instances(
        InstanceIds=['your-instance-id']  
    )
    print('Started EC2 instance:', response)
    
- Create the Stop Instance Function:

Repeat the steps above to create another function, e.g., StopEC2Instance.

import boto3
def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    response = ec2.stop_instances(
        InstanceIds=['your-instance-id']  
    )
    print('Stopped EC2 instance:', response)
    
- Step 3: Create CloudWatch Event Rules
Go to the CloudWatch Console: Open the CloudWatch Console.

Create Rule to Start Instance:

In the left-hand menu, select "Rules" and click "Create rule".
Event Source: Choose "Event Source" and select "Schedule". Configure the schedule expression (e.g., cron(0 8 * * ? *) to run at 8 AM UTC every day).
Targets: Click "Add target", choose "Lambda function", and select your StartEC2Instance function.

