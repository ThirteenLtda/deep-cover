### Range
    1...42
    1.0...4.2
    1..(2+2)
    raise..42 rescue nil
#>         xx
    'a'..'z'
    a = 42
    1..a
### Boolean
    nil
    false
    true
### Numbers
    1_234
    1.23e4
### Symbols
    :hello
    :"he#{'l'*2}o"
    :"h#{3}l#{raise}o#{'2'}-#{:x}" rescue nil
#>                   xxxxxx xxxxx
    %s[hello]
    %i[hello world]
### Strings
    'world'
    "w#{0}rld"
### Regexp
    /regexp/
    /re#{'g'}exp/i
    /re#{raise}g#{'e'}p#{:x}/i rescue nil
#>              xxxxxx xxxxx
    %r[regexp]
### Array
    [1, 2, 3]
    %w[hello world]
    [1, *nil?, 3]
    [1, *[2], 3]
    [1, raise, *nil?, 3] rescue nil
#>             xxxxx  x
    [1, *raise, 3] rescue nil
#>              x
### Hash
    {:a => 1, :b => 2}
    {a: 1, b: 2}
    {a: 1, **{b: 2}}
    {nil? => 1, :b => 2}
    {a: raise, :b => 2} rescue nil
#>             xx xx x