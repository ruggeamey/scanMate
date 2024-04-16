#!/bin/bash

# Function to perform Nmap scan and save results
perform_scan() {
    scan_type=$1
    output_file=$2
    # Run Nmap scan with the specified scan type on the target
    nmap_result=$(nmap $scan_type $target)

    # Beautify the output by removing unnecessary lines
    beautified_output=$(echo "$nmap_result" | grep -vE '^#|^Starting|^Nmap')

    # Save the beautified scan results to the output file
    echo "$beautified_output" > "$output_file"
    echo "Scan results saved to $output_file"
}

# Function to display menu and get user input
display_menu() {
    clear
    echo "===== Nmap Scan Types ====="
    echo "1. Basic Scan (-sS)"
    echo "2. SYN Scan (-sS)"
    echo "3. UDP Scan (-sU)"
    echo "4. Comprehensive Scan (-A)"
    echo "5. Version Detection Scan (-sV)"
    echo "6. All TCP Ports Scan (-p-)"
    echo "7. Custom Scan"
    echo "8. Exit"
    echo "==========================="
    read -p "Choose scan type (1-8): " choice
}

# Main script
echo "Welcome to Interactive Nmap Scanner"
# Prompt the user to enter the target IP or hostname
read -p "Enter target IP or hostname: " target

# Loop indefinitely to keep displaying the menu
while true; do
    # Call the function to display the menu
    display_menu

    # Use a case statement to perform actions based on user input
    case $choice in
        1)
            perform_scan "-sS" "basic_scan_results.txt"
            ;;
        2)
            perform_scan "-sS" "syn_scan_results.txt"
            ;;
        3)
            perform_scan "-sU" "udp_scan_results.txt"
            ;;
        4)
            perform_scan "-A" "comprehensive_scan_results.txt"
            ;;
        5)
            perform_scan "-sV" "version_detection_results.txt"
            ;;
        6)
            perform_scan "-p-" "all_tcp_ports_results.txt"
            ;;
        7)
            read -p "Enter custom Nmap options: " custom_options
            perform_scan "$custom_options" "custom_scan_results.txt"
            ;;
        8)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please choose a number between 1 and 8."
            ;;
    esac

    # Prompt the user to press Enter to continue after each scan
    read -p "Press Enter to continue..."
done
#!/bin/bash

# Function to perform Nmap scan and save results
perform_scan() {
    scan_type=$1
    output_file=$2
    # Run Nmap scan with the specified scan type on the target
    nmap_result=$(nmap $scan_type $target)

    # Beautify the output by removing unnecessary lines
    beautified_output=$(echo "$nmap_result" | grep -vE '^#|^Starting|^Nmap')

    # Save the beautified scan results to the output file
    echo "$beautified_output" > "$output_file"
    echo "Scan results saved to $output_file"
}

# Function to display menu and get user input
display_menu() {
    clear
    echo "===== Nmap Scan Types ====="
    echo "1. Basic Scan (-sS)"
    echo "2. SYN Scan (-sS)"
    echo "3. UDP Scan (-sU)"
    echo "4. Comprehensive Scan (-A)"
    echo "5. Version Detection Scan (-sV)"
    echo "6. All TCP Ports Scan (-p-)"
    echo "7. Custom Scan"
    echo "8. Exit"
    echo "==========================="
    read -p "Choose scan type (1-8): " choice
}

# Main script
echo "Welcome to Interactive Nmap Scanner"
# Prompt the user to enter the target IP or hostname
read -p "Enter target IP or hostname: " target

# Loop indefinitely to keep displaying the menu
while true; do
    # Call the function to display the menu
    display_menu

    # Use a case statement to perform actions based on user input
    case $choice in
        1)
            perform_scan "-sS" "basic_scan_results.txt"
            ;;
        2)
            perform_scan "-sS" "syn_scan_results.txt"
            ;;
        3)
            perform_scan "-sU" "udp_scan_results.txt"
            ;;
        4)
            perform_scan "-A" "comprehensive_scan_results.txt"
            ;;
        5)
            perform_scan "-sV" "version_detection_results.txt"
            ;;
        6)
            perform_scan "-p-" "all_tcp_ports_results.txt"
            ;;
        7)
            read -p "Enter custom Nmap options: " custom_options
            perform_scan "$custom_options" "custom_scan_results.txt"
            ;;
        8)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please choose a number between 1 and 8."
            ;;
    esac

    # Prompt the user to press Enter to continue after each scan
    read -p "Press Enter to continue..."
done

