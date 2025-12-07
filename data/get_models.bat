@echo off

cd %~dp0
powershell -Command "Invoke-WebRequest https://huggingface.co/modularai/stable-diffusion-1.5-onnx/resolve/main/text_encoder/model.onnx -OutFile model.onnx"
rem powershell Expand-Archive model.zip -DestinationPath .
rem del model.zip

@pause