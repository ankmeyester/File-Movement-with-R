
#After conversion of many .epub files into .mobi format for my Kindle,
#they were sorted into folders according to author and then the book name.
#I needed to extract each of these files into one single folder.

o <- "C:/Users/Ankush/Desktop/Calibre Library"
d <- "C:/Users/Ankush/Desktop/mobi books"

setwd(o)
x <- list.files()
b <- x[i]

for (i in 1:length(x)) {
        y <- length(list.files(path = (paste(o,b,sep = "/"))))
        
        z <- list.files(path = (paste(o,b,sep = "/")))
        print(length(z))
        if (y == 0) {
                next
        }
        

        
        
        for (j in 1:length(z)) {
                
                temp2 <- paste(o,b,sep = "/")
                
                y1 <- length(list.files(path = (
                        paste(temp2,z[j],sep = "/")
                )))
                
                if (y1 == 0) {
                        next
                }
                
                
                temp2 <- paste(temp2,z[j],sep = "/")
                print(temp2)
                
                files <- list.files(path = temp2,pattern = "\\.mobi$")
                print(files)
                
                l <- paste(temp2,files,sep = "/")
                
                file.copy(from = l, to = d)
                
                
        }
        
        
}
