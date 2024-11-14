#!/bin/bash

# Check if a module name is passed
if [ -z "$1" ]; then
    echo "Usage: $0 <ModuleName>"
    exit 1
fi

# Set module name and base directory
MODULE_NAME=$1
BASEDIR=$(dirname "$0")
PROJECT_DIR="$BASEDIR/../Source" # Assuming this is the top-level Source directory in the project

# Create the module directory
MODULE_DIR="$PROJECT_DIR/$MODULE_NAME"
mkdir -p "$MODULE_DIR/Private" "$MODULE_DIR/Public"

# Create the Module.Build.cs file
BUILD_CS_FILE="$MODULE_DIR/$MODULE_NAME.Build.cs"
cat > "$BUILD_CS_FILE" <<EOL
using UnrealBuildTool;

public class $MODULE_NAME : ModuleRules
{
    public $MODULE_NAME(ReadOnlyTargetRules Target) : base(Target)
    {
        PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;
        PublicDependencyModuleNames.AddRange(
            new string[]
            {
                "Core",
                "CoreUObject",
                "Engine",
                "InputCore"
            }
        );

        PrivateDependencyModuleNames.AddRange(
            new string[]
            {
                // Add private dependencies that you statically link with here
            }
        );

        // Uncomment if you are using Slate UI
        // PrivateDependencyModuleNames.AddRange(new string[] { "Slate", "SlateCore" });
    }
}
EOL

# Create the Module.cpp file in the Private folder
CPP_FILE="$MODULE_DIR/Private/$MODULE_NAME.cpp"
cat > "$CPP_FILE" <<EOL
#include "Modules/ModuleManager.h"

IMPLEMENT_MODULE(FDefaultModuleImpl, $MODULE_NAME);
EOL

# Output success message
echo "Module '$MODULE_NAME' created successfully in '$MODULE_DIR'"
