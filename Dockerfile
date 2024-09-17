FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime

RUN useradd -m appuser

WORKDIR /app

USER appuser

COPY --chown=appuser:appuser ./publish /app

EXPOSE 5236

ENTRYPOINT ["dotnet", "DevOpsChallenge.SalesApi.dll"]
