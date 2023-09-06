function reverseInt(n::UInt128)::UInt128
    return parse(UInt128, reverse(string(n)))
end

function isPalindrome(n::UInt128)::Bool
    return n == reverseInt(n)
end

function isLychrel(n::UInt128)::Bool
    for i in 1:50
        n += reverseInt(n)

        if isPalindrome(n)
            return false
        end

    end

    return true
end

function main()
    iLychrelCount = 0

    for i in 1:10_000
        if isLychrel(convert(UInt128, i))
            iLychrelCount += 1
        end
    end

    println(iLychrelCount)
end

@time main()