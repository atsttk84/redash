# redash


```sh
$ ./setup.sh
Creating network "redash_default" with the default driver
Pulling server (redash/redash:10.0.0.b50363)...
10.0.0.b50363: Pulling from redash/redash
07aded7c29c6: Pull complete
1242903d2b23: Pull complete
443de0a6edae: Pull complete
c5cc184b58e6: Pull complete
4d44a88b8f6b: Pull complete
7d9e14be0489: Pull complete
aed34fe12b88: Pull complete
b057e56877b8: Pull complete
ca398544e0f0: Pull complete
26786f9cdb90: Pull complete
37ea5f13a2e8: Pull complete
dacb9c290e5d: Pull complete
49224e5fc7cf: Pull complete
82148996f62d: Pull complete
74d7daa5e9a4: Pull complete
66d7b3d6a737: Pull complete
fbdf1dd6e407: Pull complete
811faaae8e38: Pull complete
Digest: sha256:9392753c03767453f3a803eea0f6f57b52163dac8814dd13a1724dc4037132cf
Status: Downloaded newer image for redash/redash:10.0.0.b50363
Creating redash_postgres_1 ... done
Creating redash_redis_1    ... done
Creating redash_server_run ... done
[2021-11-22 02:15:38,897][PID:1][INFO][alembic.runtime.migration] Context impl PostgresqlImpl.
[2021-11-22 02:15:38,897][PID:1][INFO][alembic.runtime.migration] Will assume transactional DDL.
[2021-11-22 02:15:38,927][PID:1][INFO][alembic.runtime.migration] Running stamp_revision  -> 89bc7873a3e0
redash_redis_1 is up-to-date
redash_postgres_1 is up-to-date
Creating redash_worker_1           ... done
Creating redash_scheduler_1        ... done
Creating redash_adhoc_worker_1     ... done
Creating redash_server_1           ... done
Creating redash_scheduled_worker_1 ... done
Creating redash_nginx_1            ... done
```

```
http://127.0.0.1:12380/
```
