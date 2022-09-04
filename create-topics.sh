kafka-topics --zookeeper $1:2181 --topic payment-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-response --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic customer --delete --if-exists


kafka-topics --zookeeper $1:2181 --topic payment-request --create --partition 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --create --partition 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-request --create --partition 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-response --create --partition 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic customer --create --partition 3 --replication-factor 3 --if-not-exists