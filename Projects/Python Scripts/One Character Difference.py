# write a function that compares two strings and returns true if there is only one character difference between them

def one_diff(a, b):
    if len(a) != len(b):
        return False
    differences = 0
    for i in range(len(a)):
        if a[i] != b[i]:
            differences += 1
            if differences == 1:
                return True
    return False


print(one_diff("test", "text"))
