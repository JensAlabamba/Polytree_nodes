class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)

        @parent.children.delete(self) unless @parent.nil?
        @parent = node
        @parent.children << self unless @parent.nil?

    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        child_node.parent = nil
        raise 'not a child' if !self.children.include?(child_node)
    end
end