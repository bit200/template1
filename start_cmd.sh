#!/bin/sh

# Run npm start only the first time
echo "Starting npm ... "
npm start
touch /tmp/first_run_done

# Keep the container running by opening a shell
exec sh
