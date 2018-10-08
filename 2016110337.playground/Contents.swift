import UIKit
var  primes = [Int]() //定义一个数组用来存储1到10000的质数
for i in 2...10000{
    var isPrime = true
    for j in 2..<i{
        if i%j==0{
            isPrime = false
        }
    }
    if isPrime {
        primes.append(i)
    }
}
print("1到10000的质数如下：")
print(primes)
//first method
//func compare(x:Int,y:Int) ->Bool{
//    return x > y; //return x<y 从小到大的顺序
//}
print("按照从大到小的顺序排序为")
//primes.sort(by:compare)
//print(primes)
//second method
//primes.sort(by:{(x:Int,y:Int)->Bool in return x>y})
//print(primes)
//third method
//primes.sort(by:{(x,y)in x>y})
//print(primes)
//forth method
//primes.sort(by:{$0>$1}) //从大到小的顺序
//primes.sort(by:{$0<$1}) 从小到大的顺序
//print(primes)
//five method
//primes.sort(by:>)
//primes.sort(by:<)
//six method
primes.sort{ $0 > $1 }
//primes.sort{ $0< $1 }
print(primes)

