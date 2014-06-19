## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    
    setinverse <- function(inverse) m <<- inverse
    
    getinverse <- function() m
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      a <- makeCacheMatrix(x, ...)
      
      m <- a$getmean()
      if(!is.null(m)) {
        message("getting cached data")
        return(m)
      }
      data <- a$get()
      m <- solve(data)
      print(m)
      a$setmean(m)
      m  
}
