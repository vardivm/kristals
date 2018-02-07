require "./kristals/*"

# this module contains all the cool stuff
module Kristals

  class Instance
    # wrapper class for VM that deals with file IO and amici; 
    private def load_file ()
      fname = ARGV[0].to_s

      if fname.nil?
        raise "No file given."
      end
      
      file = IO.read(fname)
      instructions = [] of UInt8

      file.each_byte do |byte|
        instructions << byte.to_i 
      end
      
      return instructions

    end

    def initialize()
      @new_vm = VirtualMachine.new().load_bytes(load_file()).start_vm()
    end

      
  end

  class VirtualMachine
    
    def initialize()
      # all sweet Vals
      
    end

    # start VM API
    def halt_vm()
    end

    def start_vm()
    end

    def start_interpreter()
    end

    def halt_interpreter()
    end

    def set_stack_ptr( value : UInt16 )
    end

    def step()
    end

    def step_back()
    end

    def is_interpreting?()
      # true if interpreter is executing
    end

    def is_alive?()
      # true if VM is not halted
    end

    def load_bytes( value : Array)
    end
    # end VM API

    # internal things, mark with private (woo, Java flashbacks!)
    
    private def fetch()
      # Use instr ptr to fetch next instruction
      # Increase ptr
      # return instruction
    end
    
    private def interpret()
    end
    

  end
  
end
