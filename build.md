# Software Testing Project

## Project 1
1. Clone the source repository
```
mkdir docker-src

cd docker-src

git clone https://gitlab.com/r07943154/st2020_project1.git
```
2. Build image
```
docker build -t course-st . --no-cache
```
3. Run the container
```
docker run -it --name course-st -p 8080:8080 -v $(pwd)/docker-src:/home course-st:latest
```

Now can see a directory `st2020_project1` alerady in. 

4. Modify `package.json`
in line 13: change "webpack-dev-server" to "webpack-dev-server --host 0.0.0.0"
```
# "dev-server": "webpack-dev-server",

"dev-server": "webpack-dev-server --host 0.0.0.0",
```
5. Run the local server
```
# under st2020_project1

yarn install

yarn dev-server
```
Then go to http://localhost:8080 on your host. A valid page will be there.
