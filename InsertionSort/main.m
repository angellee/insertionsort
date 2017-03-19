//
//  main.m
//  InsertionSort
//
//  Created by Angel Lee on 2015-07-08.
//  Copyright (c) 2015 Angel Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

NSMutableArray *insertionSort(NSMutableArray *arr)
{
    if (arr.count < 2) {
        return arr;
    }
    for (int i=1; i<arr.count; i++) {
        int j=i;
        int key = [arr[i] intValue];
        
        while (j> 0 && [arr[j-1] intValue] > key) {
            [arr exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
            j--;
        }
    }
    
    return arr;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSMutableArray *a = [@[@5, @4, @3,@6, @2, @1] mutableCopy];
        a = insertionSort(a);
        
    }
    return 0;
}
