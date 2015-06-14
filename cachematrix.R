## Put comments here that give an overall description of what your
## functions do
## The functions in this code caches inverse matrix. 
## Whenever a request to create inverse matrix is given, function 
## first checks if there is a cached value and if found uses thiat value.

## Write a short comment describing this function
## This function create a matrix along with getter and setter methods
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  } 
  get <- function() x
  setinversematrix <- function(inversematrix) m <<- inversematrix
  getinversematrix <- function() m
  list(set = set, get = get,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
}


## Write a short comment describing this function
##This function checks if there is a cached inverse matrix, if not found then create one and cache it.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinversematrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinversematrix(m)
  m
  
}
