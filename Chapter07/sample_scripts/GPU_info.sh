GPU_DEVICES=$(nvidia-smi --query-gpu=index --format=csv,noheader | awk '{print "\""$1"\""}' | paste -sd "," -)
echo "{ \"name\": \"gpu\", \"addresses\": [$GPU_DEVICES] }"