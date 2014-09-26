## This file contains two functions: makeCacheMatrix and cacheSolve.
## makeCacheMatrix creates a special "matrix" object that can cache its inverse.
## cacheSolve computes the inverse, or gets the cached inverse if available

## makeCacheMatrix creates a matrix object which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	  xi <- NULL
        set <- function(y) {
                x <<- y
                xi <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) xi <<- inverse
        getinverse <- function() xi
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve returns the inverse of a matrix (from cache if possible)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  xi <- x$getinverse()
        if(!is.null(xi)) {
                message("getting cached data")
                return(xi)
        }
        data <- x$get()
        xi <- solve(data, ...)
        x$setinverse(xi)
        xi
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
