
# This Dockerfile is the recipe Docker uses to build the course container image.
# Docker reads each instruction from top to bottom and creates a reusable image.
# A container is the running Linux environment created from that image. This
# follows the Black Hat Bash lab idea of using a repeatable Kali setup for the
# course tools and exercises. (Docker/Kali lab — BHB Ch.3)
#
# Each Dockerfile instruction creates an image layer. Docker can reuse unchanged
# layers from cache, so stable setup steps should come first. This makes rebuilds
# faster and avoids downloading packages again when those steps have not changed.
# (Image layers and rebuilding — BHB Ch.3)

# Now:

# FROM sets the base image used to build this container.
# Here we start from Kali Linux instead of building Linux from zero.
# Kali is useful for UNIX, networking, scripting, and security labs.
# The rolling version keeps Kali packages continuously updated.
# (Kali lab environment — BHB Ch.3)


FROM kalilinux/kali-rolling:latest


# ENV sets environment variables inside the image and container.
# Programs can read these variables to know how they should behave.
# (Environment variables — BHB Ch.1)
#
# DEBIAN_FRONTEND=noninteractive prevents apt from asking questions
# during the build. This keeps the Docker build automatic.
#
# LANG=es_ES.UTF-8 sets Spanish as the main language and uses UTF-8.
# UTF-8 helps display accents, ñ, and symbols correctly.
#
# LC_ALL=es_ES.UTF-8 applies the same Spanish UTF-8 setting to all locale areas,
# so programs use consistent language and text formatting.
#
# TERM=xterm-256color tells terminal programs that colors are supported.
# This helps editors, prompts, and other terminal tools display correctly.
# And the backslash continues the same instruction on the next line.

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# Some packages ask questions while they install.
# wireshark-common can ask if non-root users should capture packets.
# In a Docker build, that question would stop the process.
#
# echo prints the prepared answer, and the pipe sends it to debconf-set-selections.
# This uses the Bash idea that output from one command can become input for
# another command. (Pipes and streams — BHB Ch.1)
#
# The answer is false, so normal users do not get packet capture permissions.

RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# RUN executes commands while Docker builds the image.
#
# apt-get update refreshes the list of available packages.
# apt-get install downloads and installs the selected packages.
# -y automatically answers yes to install prompts.
# --no-install-recommends avoids extra optional packages to keep the image smaller.
#
# && runs the next command only if the previous one worked.
# This helps stop the build if an important step fails. (Control operators — BHB Ch.1)
#
# The backslashes split one long command across many lines for readability.
#
# One large RUN creates fewer Docker layers. Installing and cleaning in the same
# RUN also keeps package cache files out of the final image. (Docker layers — BHB Ch.3)

RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # Text editors and shells:
    # neovim and vim allow editing files directly in the terminal, which is
    # useful in UNIX labs and remote environments. zsh is installed because this
    # container starts with Z Shell. bash-completion adds command and filename
    # completion support for Bash-style interactive work.

    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # Scripting and text-processing tools:
    # perl is a scripting language often used for quick automation. make runs
    # Makefile targets and is common in lab setup workflows. gawk, sed, and grep
    # are central UNIX text tools: grep filters lines by pattern, sed edits text
    # streams, and awk/gawk extracts and formats structured text. BHB Ch.2 uses
    # these tools for parsing command output and automating workflows.
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # Core UNIX utilities:
    # coreutils provides commands such as cat, ls, sort, head, tail, cut, and tr.
    # findutils provides find and xargs for locating files and applying commands
    # to many paths. procps provides process tools such as ps, top, and kill.
    # less is a pager for reading long output. tree prints directory structures.
    # jq filters JSON data, which is useful when command-line tools return
    # structured output. (Linux commands and streams — BHB Ch.1)
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # Manual pages:
    # man-db and the manpage packages install local command documentation. BHB
    # Ch.1 emphasizes using man to learn command syntax, options, and arguments.
    man-db \
    manpages \
    manpages-posix \
    \
    # Download, version-control, certificate, and locale support:
    # curl and wget fetch resources from remote servers. git manages source-code
    # history, while git-lfs handles large files that should not be stored as
    # normal Git objects. ca-certificates enables HTTPS verification. locales
    # provides the files needed to generate es_ES.UTF-8 later in this RUN block.
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # shellcheck checks shell scripts for common mistakes, unsafe patterns, and
    # style problems. It supports the habit of testing scripts before trusting
    # them, similar to the debugging mindset introduced in BHB Ch.1.
    shellcheck \
    \
    # Reconnaissance and scanning tools:
    # nmap discovers hosts and scans ports. masscan is designed for very fast
    # large-range scans. These tools support the networking and reconnaissance
    # style of lab work described after the initial Kali/Docker setup.
    nmap \
    masscan \
    \
    # Packet capture and protocol analysis:
    # tcpdump captures packets from network interfaces in the terminal. tshark is
    # the command-line version of Wireshark and can analyze packet captures
    # without a graphical interface.
    tcpdump \
    tshark \
    \
     # General networking utilities:
    # netcat-traditional creates simple TCP/UDP connections. socat connects
    # sockets, files, and processes. dnsutils provides DNS lookup tools. whois
    # queries domain registration data. traceroute and mtr help diagnose network
    # paths. iproute2, net-tools, and iputils-ping provide common interface,
    # routing, and reachability commands.
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # Proxy and privacy-related tools:
    # tor provides access to the Tor network. torsocks can force compatible
    # commands through Tor. proxychains4 can route command-line tools through
    # configured proxies. obfs4proxy disguises Tor traffic when filtering is
    # present. These tools are installed for controlled lab learning only.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # httpie is an HTTP client with readable command syntax and formatted output,
    # useful for learning and testing web requests from the terminal.
    httpie \
    \
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).
SHELL ["/bin/zsh", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash

RUN cat > /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Luis_Novillo]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✗ %?)%f %# '
EOF

CMD ["/bin/zsh"]