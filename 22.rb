# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @list = []
  gen("", 0, 0, n * 2)
  @list
end

def gen(str, lvl, n, target)
  if n == target
    @list.push(str) if lvl == 0
    return
  end
  gen(str + "(", lvl + 1, n+1, target)
  if lvl - 1 >= 0
    gen(str + ")", lvl - 1, n+1, target)
  end
end
