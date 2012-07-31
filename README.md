Elipsis
=======

Adding ellipsis for ios nsstring

Usage Example:

NSString *testString = @"Hello world in iOS is not so good, it need some animation to make it look better, I love iOS";  
[testString stringByTruncatingToWidth:100 withFont:[UIFont systemFontOfSize:12]];  

Adding to your project:  
1. Clone the repository or downlaod the zip file  
2. Drag the .h and .m files into your project  
3. Include #import "NSString+TruncateToWidth.h" in the file where you want to truncate and add ellipsis  
4. Call the function as show in the above example


