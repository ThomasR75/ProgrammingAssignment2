## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <<- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        ## storing matrix 
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
        ## set parameters
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getinverse() ## call inverse matrix
        if(!is.null(inv)) { ##check if matrix nonzero
                message("getting cache") ## if existant load from cache
                return(inv)
        }
        data <-x$get()  ##else get matrix
        inv <- solve(data)  ##inverse matrix
        x$setinverse(inv) ##save inverse matrix
        inv 
        
        ## Return a matrix that is the inverse of 'x'
}
