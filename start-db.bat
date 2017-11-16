if not exist "./data" (
  md "./data"
)

cd ./data
del /Q /F mongod.lock
cd ..
mongod -f mongodb.cnf