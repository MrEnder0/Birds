set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

default: build

alias b := build

[doc('Builds the addon')]
@build:
    Compress-Archive -Path birds_behavior -CompressionLevel Optimal -DestinationPath birds_behavior.mcpack
    Compress-Archive -Path birds_resource -CompressionLevel Optimal -DestinationPath birds_resource.mcpack
    Compress-Archive -Path birds_behavior.mcpack, birds_resource.mcpack -CompressionLevel Optimal -DestinationPath birds.mcaddon
    rm birds_behavior.mcpack
    rm birds_resource.mcpack

