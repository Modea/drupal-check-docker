# A drupal-check Docker Image

A standalone docker image for [drupal-check](https://github.com/mglaman/drupal-check).

## Run drupal-check
First change directory into a drupal project. Then run:

```
docker run --rm -ti -v $(pwd):/app modea/drupal-check drupal-check path/to/custom/modules
```

## Usage tips
Create an alias to make running drupal-check more seamless.

```
alias drupal-check='docker run --rm -ti -v $(pwd):/app modea/drupal-check drupal-check'
```

Now run drupal-check using the alias:

```
drupal-check path/to/custom/modules
```

## Update drupal-check

```
docker pull modea/drupal-check
```

## Update image on Docker Hub
**Requirements:** Must have a user account on Docker Hub with write permission on modea/drupal-check.

Build image

```
docker build -t modea/drupal-check .
```

Create new tag. Version number should track the `drupal-check` version. Example if using `drupal-check` 1.1.10, then tag image with 1.1.10.

```
docker tag modea/drupal-check modea/drupal-check:1.1.10
```

Push tag to Docker Hub

```
docker push modea/drupal-check:1.1.10
```

Push latest to Docker Hub

```
docker push modea/drupal-check
```