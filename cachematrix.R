## Written by Velladurai Balakrishnan from Malaysia

## The following script consist of a pair of functions that cache and compute the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m<<- solve
getmatrix <- function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## Following function computes the inverse of the special called "matrix" returned by `makeCacheMatrix` as above.
## If the inverse has been calculated (and the matrix has not changed), then `cacheSolve` should 
## retrieve the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {

## Return a matrix that is the inverse of 'x'

    m <- x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m
}
## End of functions.
