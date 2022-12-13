cp /etc/redis/redis.conf /etc/redis/redis.conf.bak

# Comment out the bind to certain address in redis conf
# uncomment and set maxmemory to be used by redis
# maxmemory policy: what happens when the memory is full and a new key comes in
#	in this case, evict (remove) the least recently used (LRU) key from keyset
sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g"  /etc/redis.conf
sed -i "s|# maxmemory <bytes>|maxmemory 20mb|g"  /etc/redis.conf
echo "maxmemory-policy allkeys-lru" >> /etc/redis.conf

redis-server --protected-mode no