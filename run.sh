docker network create my-network --driver bridge

docker run --detach --rm --name openldap \
  --network my-network \
  --env LDAP_ADMIN_USERNAME=admin \
  --env LDAP_ADMIN_PASSWORD=adminpassword \
  --env LDAP_USERS=customuser \
  --env LDAP_PASSWORDS=custompassword \
  --env LDAP_ROOT=dc=example,dc=org \
  --env LDAP_ADMIN_DN=cn=admin,dc=example,dc=org \
  bitnami/openldap:latest

#  ldapsearch -x -b "cn=user1,ou=users,dc=example,dc=org" -H ldap://77.246.158.10:1389 -D "cn=admin,dc=example,dc=org" -W
https://github.com/eea/eea.docker.sdi-proftpd/blob/master/proftpd/ldap.conf
