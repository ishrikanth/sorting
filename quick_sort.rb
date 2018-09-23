def quick_sort(a,start,end_element)
	if start < end_element
		partition_index = partition(a,start,end_element)
		quick_sort(a,start,partition_index-1)
		quick_sort(a,partition_index+1,end_element)
	end
end

def partition(a, start,end_element)
	pivot = a[end_element]
	pindex = start
	p pivot
	for i in start..end_element
		if a[i] < pivot
			temp = a[i]
			a[i] = a[pindex]
			a[pindex] = temp
			pindex+=1
		end
	end
	temp = a[pindex]
	a[pindex] = a[end_element]
	a[end_element] = temp
	p a
	p "pindex #{pindex}"
	return pindex
end

arr = [3,5,23,5,-6,7,4,2,9,6,-3,3,42].shuffle
quick_sort(arr,0,arr.length-1)
p arr