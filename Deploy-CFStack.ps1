function Deploy-CFStack
{
    param(
      [Parameter(Mandatory=$true)][string]$FileName,
      [Parameter(Mandatory=$true)][string]$StackName
    )

    aws cloudformation create-stack --stack-name $StackName --template-body file://$FileName
}