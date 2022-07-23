def compare_strings(a, b):
    if a is None or b is None:
        print("Number of Same Characters: 0")
        return
    size = min(len(a), len(b))
    count = 0 
    for i in range(size):
        if a[i] == b[i]:
            count += 1

    print("Number of Same Characters:", count)

print(compare_strings("test", "text"))