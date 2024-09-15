# Use the .NET 5 runtime image to run the application
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
WORKDIR /app
COPY ./publish ./
ENTRYPOINT ["dotnet", "DevOpsChallenge.SalesApi.dll"]