## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- matrix()
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(
      get=get,
      setinv = setinv,
      getinv = getinv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinv()
        if(!is.na(i[1,1])) {
                message("getting cached data")
        }
        else {
                data <- x$get()
                i <- solve(data)
                x$setinv(i)
        }
  
        i       ## Return a matrix that is the inverse of 'x'
}
