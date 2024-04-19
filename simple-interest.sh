#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Calculate simple interest
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

    echo "Simple Interest: $interest"
}

# Input principal amount, rate of interest, and time period
read -p "Enter principal amount: " principal
read -p "Enter rate of interest: " rate
read -p "Enter time period (in years): " time

# Call the function with input values
calculate_simple_interest $principal $rate $time
