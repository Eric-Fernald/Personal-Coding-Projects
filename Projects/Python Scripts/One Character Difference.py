def compare_strings(a, b):
    if a is None or b is None:
        print("False")
    size = min(len(a), len(b))
    count = 0
    for i in range(size):
        if a[i] != b[i]:
            count += 1
    if count <= 1:
        print("True")
    else:
        print("False")
            
compare_strings("abcd", "abdc")