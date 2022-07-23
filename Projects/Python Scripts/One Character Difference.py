# write a function that compares two strings and returns true if there is only one character difference between them

def one_diff(a, b):
    if len(a) != len(b):
        return False
    for i in range(len(a)):
        if a[i] != b[i]:
            if a[i] == b[i + 1] or a[i + 1] == b[i]:
                return True
            else:
                return False
    return False

print(one_diff("test", "text"))