module ApplicationHelper
  def mostPopUser(num)
    
  end
  def mostPopPost(num)

  end
  def mostRecentUser(num)
    reverseArray = User.order("id DESC") 
    result = []  
    i = num
    while (i!=0)
      i -= 1
      result.push(reverseArray[num-i-1])
    end
    return result
  end
  def mostRecentPost(num)
    reverseArray = Post.order("id DESC") 
    result = []  
    i = num
    while (i!=0)
      i -= 1
      result.push(reverseArray[num-i-1])
    end
    return result
  end
  def mostRecentImage(num)
    reverseArray = Image.order("id DESC") 
    result = []  
    i = num
    while (i!=0)
      i -= 1
      result.push(reverseArray[num-i-1])
    end
    return result
  end
end
