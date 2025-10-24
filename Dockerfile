# Usa a imagem oficial de servidor Minecraft do itzg
FROM itzg/minecraft-server:latest

# Aceita o EULA da Mojang
ENV EULA=TRUE

# Define a porta padrão
EXPOSE 25565

# Define o tipo de servidor (pode ser VANILLA, PAPER, SPIGOT, etc)
ENV TYPE=VANILLA

# Limita a memória pra não travar o Render free tier
ENV MEMORY=512M

# Inicia o servidor
CMD ["java", "-Xmx512M", "-Xms512M", "-jar", "server.jar", "nogui"]
