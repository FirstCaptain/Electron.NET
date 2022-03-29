echo "Start building Electron.NET dev stack..."

echo "Restore & Build API"
cd ElectronNET.API && \
dotnet restore && \
dotnet build --configuration Release --force /property:Version=9.31.5 && \
dotnet pack /p:Version=9.31.5 --configuration Release --force --output "%~dp0artifacts";

cd ../;

echo "Restore & Build CLI"
cd ElectronNET.CLI && \
dotnet restore && \
dotnet build --configuration Release --force /property:Version=9.31.5 && \
dotnet pack /p:Version=9.31.5 --configuration Release --force --output "%~dp0artifacts";
