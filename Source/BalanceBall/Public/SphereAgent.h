// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UnrealMLAgents/Agent.h"
#include "SphereAgent.generated.h"

/**
 *
 */
UCLASS()
class BALANCEBALL_API USphereAgent : public UAgent
{
	GENERATED_BODY()

public:

    void Heuristic_Implementation(const FActionBuffers& ActionsOut) override;

    UPROPERTY(BlueprintReadWrite, category="Input")
    float HorizontalInput;

    UPROPERTY(BlueprintReadWrite, category="Input")
    float VerticalInput;

};
