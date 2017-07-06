## Put comments here that give an overall description of what your
## functions do

## matrix created that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  resultcache <- NULL 
 
              set <- function(y) {
                x <<- y
                resultcache <<- NULL
              }
              
                get <- function() {
                  x
                }
  
              setresult <- function(result) {
                resultcache <<- result
              }
              
              getresult <- function () {
                resultcache
              }
              
              list(set = set,
                   get = get, 
                   setresult = setresult, 
                   getresult = getresult)
}

##  the inverse of the matrix created by makeCacheMatrix
## If the inverse has already been calculated (and the matrix has not changed), then it should retrieve the inverse from the cache

cachesolve <- function(x, ...) {

              result <- x$getresult()
              
              
              if (!is.null(result)) {
                message("cached result")
                return(result)
              }
              
              matrix <- x$get()            
              invmatrix <- solve(mat,...)  ##invert it
              x$setresult(invmatrix)       ## result 
              invmatrix                    ##inverse
}

