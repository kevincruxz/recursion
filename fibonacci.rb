def fibs_iteration(n)
    fib_sequence = [0, 1]
    return fib_sequence[0] if n == 1
    return fib_sequence if n == 2
    for i in (2..n - 1)
        fib_sequence.push(fib_sequence[i - 2] + fib_sequence[i - 1])
    end
    fib_sequence
end

def fibs_recursive(n)
    return [0] if n == 1
    return [0, 1] if n == 2
    arr = fibs_recursive(n - 1)
    arr.push(arr[-2] + arr[-1])
end

p fibs_recursive(15)