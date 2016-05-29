

## making matrix object with all required inner functions :) 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        getinvert <- function() {
                i
        }
        setinvert <- function(y) {
                i<<-y
        }
        list(set = set, get = get,
             getinvert = getinvert,
             setinvert = setinvert)

}


## getting the invert value 

cacheSolve <- function(x, ...) {
        i <- x$getinvert()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinvert(i)
        i
}
