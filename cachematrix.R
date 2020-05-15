## used course training scripts to replicate inverse function
#function below makes cache of matrix inverse

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    get <-function() x
    setinverse<-function(inverse) m<<- inverse
    getinverse<-function() m
    list(set=set,get=get,
         setinverse=setinverse,
         getinverse=getinverse)

}


## function below computes matrix inverse, if it does exist in cache it provide data from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m<-x$getinverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data<-x$get()
    m<-solve(data, ...) #following instruction from programming assignment used function solve() to inverse the data
    x$setinverse(m)
    m
}
