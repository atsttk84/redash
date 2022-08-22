# redash


```sh
$ ./setup.sh
Creating network "redash_default" with the default driver
Pulling redis (redis:5.0-alpine)...
5.0-alpine: Pulling from library/redis
213ec9aee27d: Pull complete
c99be1b28c7f: Pull complete
8ff0bb7e55e3: Pull complete
753e23de8ce2: Pull complete
8a3fcfd68f08: Pull complete
298090e8d06b: Pull complete
Digest: sha256:1c465cac273d3e0a63ca9896cb78eb75bad9c80e9a0b3ea0b5a0c6d1f12c3232
Status: Downloaded newer image for redis:5.0-alpine
Pulling postgres (postgres:9.6-alpine)...
9.6-alpine: Pulling from library/postgres
59bf1c3509f3: Pull complete
c50e01d57241: Pull complete
a0646b0f1ead: Pull complete
912227b294ee: Pull complete
696b75eaa88e: Pull complete
0d83746bb80b: Pull complete
3a431a2253cd: Pull complete
24ff05c04760: Pull complete
587cf5e11ca1: Pull complete
Digest: sha256:8342bcb43446694428ec6594e72e4299692854f0fc3aca090b0ab46f4c7f32a1
Status: Downloaded newer image for postgres:9.6-alpine
Pulling server (redash/redash:10.1.0.b50633)...
10.1.0.b50633: Pulling from redash/redash
a10c77af2613: Pull complete
811275ca69b8: Pull complete
d3ceca39a823: Pull complete
eb66549ae541: Pull complete
907ffd461823: Pull complete
f8b6041369e7: Pull complete
0a4da76f8355: Pull complete
cfd90acc603b: Pull complete
0886aebe47d1: Pull complete
c16776a4efdf: Pull complete
1172f74c3d80: Pull complete
9ddb5c570a65: Pull complete
b1e475061991: Pull complete
9dff2994ee20: Pull complete
5a25fbea0b32: Pull complete
173c95953fcd: Pull complete
71b869f49696: Pull complete
bc099e0dc149: Pull complete
Digest: sha256:f3e8d95656255d9684051604a586dfd50035fa1e297e68379dc1b557f1885c0f
Status: Downloaded newer image for redash/redash:10.1.0.b50633
Creating redash_redis_1    ... done
Creating redash_postgres_1 ... done
Creating redash_server_run ... done
[2022-08-22 11:34:41,058][PID:1][INFO][alembic.runtime.migration] Context impl PostgresqlImpl.
[2022-08-22 11:34:41,059][PID:1][INFO][alembic.runtime.migration] Will assume transactional DDL.
[2022-08-22 11:34:41,129][PID:1][INFO][alembic.runtime.migration] Running stamp_revision  -> 89bc7873a3e0
Pulling nginx (redash/nginx:latest)...
latest: Pulling from redash/nginx
2bb30e6532d8: Pull complete
a3ed95caeb02: Pull complete
089eaed11798: Pull complete
6114b204585d: Pull complete
571c4c139c59: Pull complete
Digest: sha256:4eaaa7af6476b0422058b0022661ad6129dfbf9065c506fb0904bbf0a16f2007
Status: Downloaded newer image for redash/nginx:latest
redash_redis_1 is up-to-date
redash_postgres_1 is up-to-date
Creating redash_server_1           ... done
Creating redash_adhoc_worker_1     ... done
Creating redash_worker_1           ... done
Creating redash_scheduled_worker_1 ... done
Creating redash_scheduler_1        ... done
Creating redash_nginx_1            ... done
```

```
http://127.0.0.1:12380/
```
