i,k=1,1
answer=0
until k==10001
    del =1
    q =0
    while del <=i
         if i%del==0
             q+=1
         end
         del+=1
    end
   if q ==2
        k+=1
   end
   answer = i
   i+=1

   puts i
end
puts answer

