
# Nodejs

This [Dockerfile][docker] installs the latest [Node.js](http://nodejs.org/) version from [Alpine Linux][alpine-linux] [edge repository][edge-repository].

![docker-badge](http://dockeri.co/image/marcusandre/nodejs)

## Usage

Use it as a dependency in your own Dockerfile with:

    FROM marcusandre/nodejs

Or simply run it interactively from shell with:

    $ docker run -i -t marcusandre/nodejs

## License

MIT

[docker]: https://www.docker.com/
[alpine-linux]: http://alpinelinux.org/ 
[edge-repository]: http://pkgs.alpinelinux.org/packages?name=nodejs&branch=&repo=&arch=&maintainer=
