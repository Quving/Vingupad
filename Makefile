build:
	docker build -t vingupad:latest .

run:
	docker run -it -d -v /srv/vingupad/data:/vingupad/epad/var -p 25550:9001 --name vingupad vingupad:latest
