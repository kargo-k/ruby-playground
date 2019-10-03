require 'pry'

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

bst = TreeNode.new(5)
bst.left = TreeNode.new(3)
bst.left.left = TreeNode.new(2)
bst.left.right = TreeNode.new(4)
bst.right = TreeNode.new(6)
bst.right.right = TreeNode.new(7)

def make_array(root)
  if root.left != nil
    make_array(root.left)
  end

  if root.right != nil
    make_array(root.left)
  end
end

def recur(root)
  output = make_array(root)
end

binding.pry
0