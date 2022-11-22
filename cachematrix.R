## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function should create a matrix object which caches its inverse

makeCacheMatrix <- function(x = matrix()) { 
  inver <- NULL
set <- function(y) {
  x <<- y
  inver <<- NULL
}
get <- function() x
setinverse <- function(inverse) inver <<- inverse
getinverse <- function() inver
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
  
}


## Write a short comment describing this function
## this function computese the inverse of the matrix created by the function above. However, if the inverse has already been calculated.
## if it has been calculated it should get the matrix which has been already stored in the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inver <- x$getmean()
  if(!is.null(inver)){
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$setinverse(inver)
  inver
}


