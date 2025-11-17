[1mdiff --git a/.github/workflows/docker-ci-demo.yml b/.github/workflows/docker-ci-demo.yml[m
[1mdeleted file mode 100644[m
[1mindex ab26713..0000000[m
[1m--- a/.github/workflows/docker-ci-demo.yml[m
[1m+++ /dev/null[m
[36m@@ -1,45 +0,0 @@[m
[31m-name: Docker CI Demo[m
[31m-[m
[31m-on:[m
[31m-  push:[m
[31m-    branches:[m
[31m-      - 'master'[m
[31m-    tags:[m
[31m-      - '**'[m
[31m-      [m
[31m-jobs:[m
[31m-  push:[m
[31m-    runs-on: ubuntu-latest[m
[31m-[m
[31m-    steps:[m
[31m-      - name: Checkout[m
[31m-        uses: actions/checkout@v2[m
[31m-  [m
[31m-      - name: Docker meta[m
[31m-        id: docker_meta[m
[31m-        uses: crazy-max/ghaction-docker-meta@v1[m
[31m-        with:[m
[31m-          images: leecloudo/nodejs-ci[m
[31m-          tag-semver: |[m
[31m-            {{version}}[m
[31m-            {{major}}.{{minor}}[m
[31m-[m
[31m-      - name: Set up QEMU[m
[31m-        uses: docker/setup-qemu-action@v2[m
[31m-[m
[31m-      - name: Set up Docker Buildx[m
[31m-        uses: docker/setup-buildx-action@v2[m
[31m-[m
[31m-      - name: Login to Docker Hub[m
[31m-        uses: docker/login-action@v2[m
[31m-        with:[m
[31m-          username: ${{ secrets.DOCKER_HUB_USERNAME }}[m
[31m-          password: ${{ secrets.DOCKER_HUB_PASSWORD }}[m
[31m-[m
[31m-      - name: Build and push Docker Image[m
[31m-        uses: docker/build-push-action@v4[m
[31m-        with:[m
[31m-          context: .[m
[31m-          push: true[m
[31m-          tags: ${{ steps.docker_meta.outputs.tags }}[m
[31m-          labels: ${{ steps.docker_meta.outputs.labels }}[m
[1mdiff --git a/public/index.html b/public/index.html[m
[1mindex fb7de5f..ad375e5 100644[m
[1m--- a/public/index.html[m
[1m+++ b/public/index.html[m
[36m@@ -7,7 +7,7 @@[m
 </head>[m
 <body>[m
   <img src="images/fastcampus.png" alt="fastcampus logo">[m
[31m-  <h1>Welcome to Douzone DX 3th. - Nodejs App using Docker CI v1.2</h1>[m
[32m+[m[32m  <h1>Welcome to Douzone DX 3th. - Nodejs App using Docker CI v1.3</h1>[m
   <p>This is a kwangil Nodejs application!</p>[m
 </body>[m
 </html>[m
