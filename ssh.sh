#!/bin/bash

echo "This is a test script."

# Function to generate random text
generate_random_text() {
    texts=("Processing..." "Please wait..." "Working hard..." "Almost there...")
    rand_index=$((RANDOM % ${#texts[@]}))
    echo "${texts[$rand_index]}"
}

# Prompt for the first time
read -p "Do you want to continue? (yes/no): " response

if [ "$response" == "yes" ]; then
    echo "Continuing..."
    
    # Random sleep between 5 and 20 seconds
    sleep_duration=$((RANDOM % 16 + 5))
    echo "Waiting for $sleep_duration seconds..."
    for ((i=0; i<$sleep_duration; i++)); do
        echo "$(generate_random_text)"
        sleep 1
    done

    # Prompt for the second time
    read -p "Do you want to continue again? (yes/no): " response

    if [ "$response" == "yes" ]; then
        echo "Continuing again..."
        
        # Random sleep between 5 and 20 seconds
        sleep_duration=$((RANDOM % 16 + 5))
        echo "Waiting for $sleep_duration seconds..."
        for ((i=0; i<$sleep_duration; i++)); do
            echo "$(generate_random_text)"
            sleep 1
        done

        # Final prompt
        read -p "Press Enter to complete."

        echo "Script completed."
    else
        echo "Script aborted."
    fi
else
    echo "Script aborted."
fi
