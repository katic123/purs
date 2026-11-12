#define N_Pause 10000000

int main()
{
    // LD9 => MIO7 => GPIO bank 0
    // Bit 7 => 0b 0000 0000 0000 0000 0000 0000 1000 0000 => 0x00000080

    // DIRM[7] = 1 (pin 7 is output pin)
    //                          GPIO base address + Reg. offset + Bank offset
    *(volatile unsigned int *)(0xE000A000 + 0x00000204 + 0 * 0x40) = 0x00000080;

    // OEN[7] = 1 (pin 7 is enabled)
    *(volatile unsigned int *)(0xE000A000 + 0x00000208 + 0 * 0x40) = 0x00000080;

    while (1)
    {
        int k;

        // writing into pin via MASK_DATA_0_LSW
        //              <------ MASK ------> <------ DATA ------>
        // 0b           1111 1111 0111 1111  0000 0000 1000 0000  => 0xFF7F0080
        *(volatile unsigned int *)(0xE000A000 + 0x00000000 + 0 * 0x8) = 0xFF7F0080;
        for (k = 0; k < N_Pause; k++)
            ;

        //              <------ MASK ------> <------ DATA ------>
        // 0b           1111 1111 0111 1111  0000 0000 0000 0000  => 0xFF7F0000
        *(volatile unsigned int *)(0xE000A000 + 0x00000000 + 0 * 0x8) = 0xFF7F0000;
        for (k = 0; k < N_Pause; k++)
            ;
    }

    return 0; // never reached
}
