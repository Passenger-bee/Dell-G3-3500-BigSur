/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of C:/Users/HarryPotter/Documents/GitHub/Dell-G3-3500/Dell-G3-3500/OC/ACPI/SSDT-ALSD.aml, Wed Sep  1 13:16:57 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000051 (81)
 *     Revision         0x02
 *     Checksum         0x4D
 *     OEM ID           "OCLT"
 *     OEM Table ID     "ALSD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "ALSD", 0x00000000)
{
    External (ALSE, IntObj)

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                ALSE = 0x02
            }
        }
    }
}

