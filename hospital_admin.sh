#!/bin/bash

initialize_system() {

    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir -p active_logs
    else
        echo "active_logs already exists"
    fi

    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir -p archived_logs
    else
        echo "archived_logs already exists"
    fi

    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir -p reports
    else
        echo "reports already exists"
    fi
    echo ""
}
