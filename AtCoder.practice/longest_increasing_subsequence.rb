def longest_increasing_subsequence_length(nums)
    return 0 if nums.empty?
  
    dp = Array.new(nums.length, 1)
  
    for i in 1...nums.length
      for j in 0...i
        if nums[i] > nums[j] && dp[j] + 1 > dp[i]
          dp[i] = dp[j] + 1
        end
      end
    end
  
    return dp.max
  end
  
  # 与えられた配列
  nums = [10, 9, 2, 5, 3, 7, 101, 18]
  
  # 最長増加部分列の長さを計算
  lis_length = longest_increasing_subsequence_length(nums)
  
  # 結果を表示
  puts lis_length
  