function Deploy-CFStack
{
    param(
      [Parameter(Mandatory=$true)][string]$FileName,
      [Parameter(Mandatory=$true)][string]$StackName,
      [Parameter(Mandatory=$false)][string]$ParameterKey="",
      [Parameter(Mandatory=$false)][string]$ParameterValue="",
      [Parameter(Mandatory=$false)][string]$ParameterKey2="",
      [Parameter(Mandatory=$false)][string]$ParameterValue2=""

    )

    if ($ParameterKey -ne "")
    {
      aws cloudformation create-stack --stack-name $StackName --template-body file://$FileName --parameters "ParameterKey=$ParameterKey,ParameterValue=$ParameterValue" "ParameterKey=$ParameterKey2,ParameterValue=$ParameterValue2" 
    }
    else {
      aws cloudformation create-stack --stack-name $StackName --template-body file://$FileName
    }
}