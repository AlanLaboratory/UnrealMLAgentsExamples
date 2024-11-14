// Fill out your copyright notice in the Description page of Project Settings.


#include "SphereAgent.h"

void USphereAgent::Heuristic(FActionBuffers& ActionsOut) {
    FActionSegment<int32>& DiscreteActionsOut = ActionsOut.DiscreteActions;
    DiscreteActionsOut.Array->SetNum(1);
    DiscreteActionsOut[0] = HorizontalInput < 0 ? 1 : (HorizontalInput > 0 ? 2 : (VerticalInput < 0 ? 3 : (VerticalInput > 0 ? 4 : 0)));
}
