require "bit_array"
module Memory

  class Instance

    @mem_arr = [] of UInt8
    
    def initialize
      @mem_arr = Array(UInt8).new(2**16, 0x0_u8)

    end
    
    def store(addr : UInt16, value : UInt8)

      @mem_arr[addr] = value

    end

    def fetch(addr : UInt16)

      val = @mem_arr[addr]
      return val
      
    end

    def clear(addr : UInt16)

      store(addr, 0_u8)
      
    end

  end

end
