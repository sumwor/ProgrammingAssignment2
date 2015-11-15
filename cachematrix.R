## Put comments here that give an overall description of what your
## functions do
# this function make a cache of matrix invertion
## Write a short comment describing this function
#this function returns a list, which stores the set. get, setinvert, getinvert
#methods to cache the invert matrix
makeCacheMatrix <- function(x = matrix()) {
    I <- NULL
    set <- function(y) {
        x <<- y
        I <<- NULL
    }
    get <- function() x
    setinvert <- function(invert) I <<- invert
    getinvert <- function() I
    list(set = set, get = get, setinvert = setinvert, getinvert = getinvert)
}


## Write a short comment describing this function
#this function checks whether the invert has already been calculated, 
#if yes, then return the invert, if not calculate it. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    I <- x$getinvert()
    if(!is.null(I)) {
        message("getting cache data")
        return(I)
    }
    matrix <- x$get()
    I <- solve(data, ...)
    x$setinvert(I)
    I
}
