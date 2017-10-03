matrix-appservice-irc
=====================

based on node 6-slim

usage
-----

- copy and edit the example config
    https://github.com/matrix-org/matrix-appservice-irc/blob/master/config.sample.yaml

- run the server once for registration

    ```
    docker run -it --rm -v path/to/config:/irc-config.yaml bara/matrix-appserice-irc -r -f irc_registration_file.yaml -u "http://where.the.appservice.listens:9999" -c /irc-config.yaml -l my_bot
    ```
- run the server without register option but with port

    ```
    docker run -it --rm -v path/to/config:/irc-config.yaml bara/matrix-appserice-irc -f irc_registration_file.yaml -c /irc-config.yaml -l my_bot -p 9999
    ```

