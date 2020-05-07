    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        if nums1.count > nums2.count {
            return findMedianSortedArrays(nums2, nums1)
        }
        
        let x = nums1.count
        let y = nums2.count
        
        var low = 0
        var high = x
        
        while low <= high {
            let partitionX = (low + high)/2
            print(partitionX)
            let partitionY = (x + y + 1)/2 - partitionX
            print(partitionY)
            
            var maxLeftX = partitionX == 0 ? -Int.max : nums1[partitionX - 1]
            // print(maxLeftX)
            var minRightX = partitionX == nums1.count ? Int.max : nums1[partitionX]
            // print(minRightX)
            
            var maxLeftY = partitionY == 0 ? -Int.max : nums2[partitionY - 1]
            // print(maxLeftY)
            var minRightY = partitionY == nums2.count ? Int.max : nums2[partitionY]
            // print(minRightY)
            
            if maxLeftX <= minRightY && maxLeftY <= minRightX {
                if (x + y) % 2 == 0 { //Even
                    print("123")
                    return Double(max(maxLeftX, maxLeftY) + min(minRightY, minRightX)) / 2
                } else {
                    print("456")
                    return Double(max(maxLeftX, maxLeftY))
                }
            } else if maxLeftX > minRightY {
                // move left
                print("79")
                high = partitionX - 1
            } else {
                //move right
                print("90")
                low = partitionX + 1 
            }
        }
        
        return Double(-1)
    }