// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;
using System.Collections.Generic;

public class UnrealMLAgentsExamplesTarget : TargetRules
{
	public UnrealMLAgentsExamplesTarget( TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		DefaultBuildSettings = BuildSettingsVersion.V5;
		ExtraModuleNames.Add("UnrealMLAgentsExamples");
		ExtraModuleNames.Add("BalanceBall");
	}
}
