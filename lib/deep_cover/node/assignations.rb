require_relative "const"

module DeepCover
  class Node
    class Lvasgn < Node
      has_child var_name: Symbol
      has_child value: [Node, nil]

      def execution_count
        return super unless value
        value.flow_completion_count
      end
    end

    class VariableAssignment < Node
      has_child var_name: Symbol
      has_child value: [Node, nil]

      def execution_count
        return super unless value
        value.flow_completion_count
      end
    end
    Cvasgn = Gvasgn = Ivasgn = VariableAssignment

    class Casgn < Node
      has_child cbase: [Cbase, Const, nil]
      has_child var_name: Symbol
      has_child value: [Node, nil]

      def execution_count
        return super unless value
        value.flow_completion_count
      end
    end
  end
end