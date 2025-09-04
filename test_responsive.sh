#!/bin/bash

# Test Responsive Design on Different Device Configurations
# This script runs the app with different device configurations for testing

# Set available device configurations
DEVICES=(
  "iPhone SE (3rd generation)"
  "iPhone 14 Pro Max"
  "iPad Pro (12.9-inch) (6th generation)"
  "Pixel 6"
  "Pixel Tablet"
)

# Function to run on a specific device
run_on_device() {
  local device=$1
  echo "Running on $device..."
  flutter run -d "$device"
  echo "Finished testing on $device"
}

# Display menu for selecting device
echo "Select a device to test responsive design:"
for i in "${!DEVICES[@]}"; do
  echo "$((i+1)). ${DEVICES[$i]}"
done
echo "0. Test on all available devices sequentially"
echo "q. Quit"

# Read user choice
read -p "Enter your choice: " choice

case $choice in
  0)
    echo "Testing on all configured devices..."
    for device in "${DEVICES[@]}"; do
      run_on_device "$device"
    done
    ;;
  [1-9]*)
    if [ "$choice" -le "${#DEVICES[@]}" ]; then
      run_on_device "${DEVICES[$((choice-1))]}"
    else
      echo "Invalid choice. Exiting."
    fi
    ;;
  q|Q)
    echo "Exiting."
    exit 0
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

# Additional guidance
echo ""
echo "Testing Tips:"
echo "1. Check for text overflow or truncation"
echo "2. Verify proper spacing between elements"
echo "3. Check image scaling and proportions"
echo "4. Test both portrait and landscape orientations"
echo "5. Verify navigation and interactive elements are usable"
echo ""
