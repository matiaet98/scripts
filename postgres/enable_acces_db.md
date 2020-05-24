1. Editar /var/lib/pgsql/data/postgresql.conf

    ```properties
    listen_addresses = '*'
    ```

2. Editar /var/lib/pgsql/data/pg_hba.conf

    ```properties
    local   all all md5
    host    all all 0.0.0.0/0  md5
    host    all all ::/0 md5
    ```

3. Restart service

    ```Bash
    systemctl restart postgresql
    ```
