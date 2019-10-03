require 'pry'
# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  h = {}
  result = []
  cpdomains.each do |cpd|
      vals = cpd.split(' ')
      count = vals[0].to_i
      subdom = vals[1]
      
      if h[subdom] == nil
          h[subdom] = count
      else
          h[subdom] += count
      end
      
      # splits the domain into the 2 or 3 parts
      dom = subdom.split('.')

      if h[dom[-1]] == nil
          h[dom[-1]] = count
      else
          h[dom[-1]] += count
      end
      
      # if there are 3 parts in the domain, make the middle domain
      if dom.length == 3
          mid = dom[1..-1].join('.')
          
          if h[mid] == nil
              h[mid] = count
          else
              h[mid] += count
          end
      end
  end
  h.each do |k,v|
    result << [v, k].join(' ')
  end
  result
end

subdomain_visits(["900 google.mail.com", "50 yahoo.com", "1 intel.mail.com", "5 wiki.org"])