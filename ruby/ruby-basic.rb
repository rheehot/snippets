for x in 2..9
  for y in 1..9
    printf '%d*%d = %-2d   ', x, y, x*y
  end
  puts ''
end

=begin

1.  루비에서 반복문 도는 N가지 방법

    ```
    loop { }
    10.times { }
    for x in 1..10 { }
    1.upto(10) { }
    (1..10).each { }
    ```

2.  루비에서 문자열 출력하는 N가지 방법

    ```
    # print string to stdout
    p 'Hello, World!'
    print 'Hello, World!'
    printf 'Hello, World!'
    putc 'H'
    puts 'Hello, World!'

    # format string
    puts '%d + %d = %d' % [a, b, a+b]
    puts "#{a} + #{b} = #{a+b}"
    printf "%d + %d = %d\n", a, b, a+b
    ```

=end
