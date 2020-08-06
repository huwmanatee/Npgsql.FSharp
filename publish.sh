# chmod +x publish.sh
dotnet pack  src/Npgsql.FSharp.fsproj  --configuration Release
dotnet nuget push -s http://localhost:5000/v3/index.json "src/bin/Release/Npgsql.FSharp.3.7.0.nupkg"
