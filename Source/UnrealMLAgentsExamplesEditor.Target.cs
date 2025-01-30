// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;
using System.Collections.Generic;

public class UnrealMLAgentsExamplesEditorTarget : TargetRules
{
	public UnrealMLAgentsExamplesEditorTarget( TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		DefaultBuildSettings = BuildSettingsVersion.V2;
		IncludeOrderVersion = EngineIncludeOrderVersion.Unreal5_1;
		ExtraModuleNames.Add("UnrealMLAgentsExamples");
		ExtraModuleNames.Add("BalanceBall");
	}
}
