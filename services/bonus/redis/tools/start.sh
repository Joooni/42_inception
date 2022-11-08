cp /etc/redis/redis.conf /etc/redis/redis.conf.bak

sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g"  /etc/redis.conf
sed -i "s|# maxmemory <bytes>|maxmemory 20mb|g"  /etc/redis.conf
echo "maxmemory-policy allkeys-lru" >> /etc/redis.conf

redis-server --protected-mode no