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
