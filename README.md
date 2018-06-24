matrix-appservice-irc
=====================

based on node 6-slim

usage
-----

- edit the config.sample.yaml
    parameters url, media_url, domain,servers

- run the server once for registration (my_bot -- name of bot @my_bot:server.name)

    ```
    docker run -it --rm -v path/to/config/irc-config.yaml:/irc-config.yaml -v path/to/config/irc_registration_file.yaml:/irc_registration_file.yaml matrix-appserice-irc node -r -f /irc_registration_file.yaml -u "http://where.the.appservice.listens:9999" -c /irc-config.yaml -l my_bot
    ```
- db in '/config/data/'
- run the server 

    ```
    docker run -it --rm -v  -v path/to/config/irc-config.yaml:/config/irc-config.yaml -v path/to/config/irc_registration_file.yaml:/config/irc_registration_file.yaml matrix-appserice-irc 

    or 

    docker-compose up -d

    check logs
    docker logs -f matrix_appservice-irc
    ```

