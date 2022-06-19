/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLlmQt5X.aml, Sun Nov 22 12:32:11 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000016A (362)
 *     Revision         0x02
 *     Checksum         0xEE
 *     OEM ID           "WEYW"
 *     OEM Table ID     "SameHere"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "WEYW", "SameHere", 0x00000000)
{
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x0E)
            {
                "@0,name", 
                Buffer (0x0C)
                {
                    "ATY,Orinoco"
                }, 

                "AAPL,slot-name", 
                Buffer (0x08)
                {
                    "PCIe #1"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "model", 
                Buffer (0x13)
                {
                    "AMD Radeon Pro 560"
                }, 

                "CFG,CFG_FB_LIMIT", 
                Buffer (One)
                {
                     0x03                                           
                }, 

                "connector-count", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x00, 0x00                         
                }, 

                "connector-priority", 
                Buffer (0x03)
                {
                     0x02, 0x06, 0x03                               
                }
            })
        }
    }

    Device (HDAU)
    {
        Name (_ADR, One)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "layout-id", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            })
        }
    }
}

