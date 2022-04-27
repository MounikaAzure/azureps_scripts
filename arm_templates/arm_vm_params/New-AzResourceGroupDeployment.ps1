## New-AzResourceGroup -Name "arm-vm-rg" -Location "Japan East"
New-AzResourceGroupDeployment   `
-Name "armvmdeployment" `
-ResourceGroupName "arm-vm-rg" `
-TemplateFile  "D:\Azure\azureps_scripts\arm_templates\Arm_VM_With_Param.json" `
-TemplateParameterFile "D:\Azure\azureps_scripts\arm_templates\dev_arm_vm_parammeters.json"
