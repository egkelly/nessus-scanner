# Tests health of nessus scanner
# Script must be run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Validate health of nessus container

container=$1

if [ "$(docker ps -q -f name=$container)" ]; then
    if [ ! "$(docker ps -aq -f status=running -f name=$container)" ]; then
        # cleanup
        echo "$container stopped"
        exit -1
    else
        echo "$container running"
    fi

fi

# Check 200 response from nessus server

nessusUrl="https://localhost:8834"
response=$(curl -k -s -o /dev/null -w "%{http_code}\\n" $nessusUrl)

if [ $response != 200 ]; then
    echo "ERROR: Sever returned $response"
    exit -1
else    
    echo "Server returned $response"
    exit 0
fi
