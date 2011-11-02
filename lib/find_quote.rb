# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def find_quote(filename, line = nil)
  if File.exists?(filename)
    f = File.readlines(filename)
    if line == nil || line >= f.length
      f.sample
    else
      f[line].strip
    end
  else
    "Could not find a quote at this time"
  end
end