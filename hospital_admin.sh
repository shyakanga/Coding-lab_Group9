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


secure_data() {

    chmod 700 active_logs

    echo "Updating permissions on active_logs's contents"
    find active_logs -exec chmod 700 {} +

    echo ""
    echo "Current permissions on active_logs"
    ls -ld active_logs

    echo ""
    echo "Current permissions on files inside active_logs"
    ls -l active_logs
    echo ""
}
