def compare_strings(a, b):
    if a is None or b is None:
        return False
    size = min(len(a), len(b))
    count = 0
    for i in range(size):
        if a[i] != b[i]:
            count += 1
        if count <= 1:
            return True
        else:
            return False
            
compare_strings("abcd", "abdc")