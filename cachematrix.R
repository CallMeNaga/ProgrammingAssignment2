## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
	Mat_inv<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
		}
	get <- function(){
		x
		}
	setInverse<-function(inverse){
		Mat_inv<<-inverse
		}
	getInverse<-function(){
		Mat_inv
		}
list(set=set,get=get,setInverse=setInverse, getInverse=getInverse)
}

cacheSolve <- function(x,...){
	Mat_inv<-x$getInverse()
	if(!is.null(Mat_inv)){
		message("getting cached data")
		return(Mat_inv)
		}
	data<-x$get()
	Mat_inv<-solve(data,...)
	x$setInverse(Mat_inv)
	Mat_inv	
	}
