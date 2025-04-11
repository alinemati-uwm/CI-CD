# Jenkins


## Step 1 — Pull Jenkins Docker Image
This will download the latest Long Term Support (LTS) version of Jenkins.

```bash
mkdir jenkins_home
```

```bash
docker pull jenkins/jenkins:lts
```

---

## Step 2 — Run Jenkins Container
This will run Jenkins and expose it on port `8080` (Web UI) and `50000` (agent communication).

```bash
docker run -d \
  --name jenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts
```

- `-d` = detached (run in background)
- `-v` = volume to persist Jenkins data even after container restart
- `-p` = map container ports to your machine ports

---

## Step 3 — Access Jenkins Dashboard

Open in your browser:
```
http://localhost:8080
```
or
```
http://<your-server-ip>:8080
```

---

## Step 4 — Get Jenkins Initial Admin Password
To unlock Jenkins for the first time:

```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

Copy that password → Paste it into the web interface.

Pass:

685453d089c543078ce0f5c9fa5cd076

---

## Step 5 — Install Plugins & Create Admin User

- Follow the Jenkins web wizard:
  - Install suggested plugins
  - Create admin user 
  - Ready to go!

Ali Nemati
user: alinemati
WewlG^6tazrX$rVTR7Qp

---

## Step 6 — To See Logs
```bash
docker logs -f jenkins
```

---

## Step 7 — To Enter Inside Jenkins Container
```bash
docker exec -it jenkins bash
```

---

Want me to prepare a full `docker-compose.yml` for Jenkins?  
Easy to manage + restart + persist. Let me know!

