# @param {String} s
# @return {Boolean}
def is_valid(s)
  stk = []
  s.each_char do |c|
    if is_close?(c)
      return false if stk.empty?
      z = stk.pop
      return false if get_pair(c) != z
    else
      stk.push(c)
    end
  end
  return false if stk.empty?.!
  true
end

def is_close?(c)
  (c == ')' || c == ']' || c == '}')
end

def get_pair(c)
  r = ''
  r = '(' if c == ')'
  r = '[' if c == ']'
  r = '{' if c == '}'
  return r
end
