FROM mcr.microsoft.com/devcontainers/javascript-node

# Doppler ######################################################
# See https://docs.doppler.com/docs/install-cli#installation
RUN sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl gnupg
RUN curl -sLf --retry 3 --tlsv1.2 --proto "=https" 'https://packages.doppler.com/public/cli/gpg.DE2A7741A397C129.key' | sudo gpg --dearmor -o /usr/share/keyrings/doppler-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/doppler-archive-keyring.gpg] https://packages.doppler.com/public/cli/deb/debian any-version main" | sudo tee /etc/apt/sources.list.d/doppler-cli.list
RUN sudo apt-get update && sudo apt-get install doppler
# ##############################################################
