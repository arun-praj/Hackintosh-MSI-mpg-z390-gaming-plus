DefinitionBlock("", "SSDT", 2, "hack", "HACK-MSI", 0x00000000)
{
    External(\_SB.PCI0, DeviceObj) // Ausaetzliches Geraete

        Scope(\_SB.PCI0)
    {

        Device(THRC) // Zusaetzliches Geraet Thermal subsystem
        {
            Name(_ADR, 0x00120000) // _ADR: Address
                Name(THRC, One) Method(_DSM, 4, NotSerialized) // _DSM: Device-Specific Method
            {
                If(!Arg2)
                {
                    Return(Buffer(){ 0x03 })
                }
                Return(Package(){
                    "built-in", Buffer(){ 0x00 }, 
                    "device_type", , Buffer(){ "Thermal-Controller" },
                    "model", Buffer(){ "Cannon Lake PCH Thermal Controller" }, "name",
                    Buffer(){ "Cannon Lake PCH Thermal Controller" }, "AAPL,slot-name",
                    Buffer(){ "Internal@0,18,0" }, "compatible", Buffer(){ "pci8086,9d21" },
                })
            }
        }

        Device(XEON) // Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model
        {
            Name(_ADR, 0x00080000) // _ADR: Address
                Name(XEON, One) Method(_DSM, 4, NotSerialized) // _DSM: Device-Specific Method
            {
                If(!Arg2)
                {
                    Return(Buffer(){ 0x03 })
                }
                Return(Package(){
                    "built-in", Buffer(){ 0x00 },
                    "device_type", , Buffer(){ "System peripheral" },
                    "model", Buffer(){ "Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model" },
                    "AAPL,slot-name", Buffer(){ "Internal@0,8,0" },
			        "compatible", Buffer(){ "pci8086,9d21" },
                })
            }
        }

        Device(SPI_) // Cannon Lake PCH SPI Controller
        {
            Name(_ADR, 0x001F0005) // _ADR: Address
                Name(SPI_, One) Method(_DSM, 4, NotSerialized) // _DSM: Device-Specific Method
            {
                If(!Arg2)
                {
                    Return(Buffer(){ 0x03 })
                }
                Return(Package(){
                    "built-in", Buffer(){ 0x00 },
                    "device_type", , Buffer(){ "Serial bus controller" },
                    "model", Buffer(){ "Cannon Lake PCH SPI Controller" },
                    "AAPL,slot-name", Buffer(){ "Internal@0,31,5" },
			        "compatible", Buffer(){ "pci8086,9d21" },
                })
            }
        }

        Device(RAM_) // Cannon Lake PCH Shared SRAM
        {
            Name(_ADR, 0x00140002) // _ADR: Address
                Name(RAM_, One) Method(_DSM, 4, NotSerialized) // _DSM: Device-Specific Method
            {
                If(!Arg2)
                {
                    Return(Buffer(){ 0x03 })
                }
                Return(Package(){
                    "built-in", Buffer(){ 0x00 },
                    "device_type", , Buffer(){ "RAM memory" },
                    "model", Buffer(){ "Cannon Lake PCH Shared SRAM" },
                    "AAPL,slot-name", Buffer(){ "Internal@0,20,2" },
			        "compatible", Buffer(){ "pci8086,9d21" },
                })
            }
        }

    }
}
