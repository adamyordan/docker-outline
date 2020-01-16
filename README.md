# docker-outline
The Outline (https://github.com/outline/outline) that actually works (in docker container!)

## Setup

 - Pull this repository.

    ```bash
    $ git clone https://github.com/adamyordan/docker-outline.git
    $ cd docker-outline
    ```

 - Create file `.env`. Copy `.env.sample` and fill in required variables.

 - Run the following:

    ```
    $ make build
    $ make up
    ```

 - Open https://localhost:8443/. Outline is ready.

If you are using Google Chrome, there may be _website unsafe_ error.
This is because this installation is by default using self-signed certificate provided in folder `cert`.
You can provide a valid certificate or type `thisisunsafe` to bypass certificate error
(Read [here](https://stackoverflow.com/questions/35274659/does-using-badidea-or-thisisunsafe-to-bypass-a-chrome-certificate-hsts-error/35275060))
