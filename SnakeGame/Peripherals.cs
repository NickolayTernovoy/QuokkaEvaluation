﻿using Drivers;
using FPGA;
using System;
using System.Collections.Generic;
using System.Text;

namespace SnakeGame
{
    static class Peripherals
    {
        public static void GameControls(
            // ADC
            FPGA.OutputSignal<bool> ADC1NCS,
            FPGA.OutputSignal<bool> ADC1SLCK,
            FPGA.OutputSignal<bool> ADC1DIN,
            FPGA.InputSignal<bool> ADC1DOUT,

            // keypad
            FPGA.OutputSignal<bool> K7,
            FPGA.OutputSignal<bool> K6,
            FPGA.OutputSignal<bool> K5,
            FPGA.OutputSignal<bool> K4,
            FPGA.InputSignal<bool> K3,
            FPGA.InputSignal<bool> K2,
            FPGA.InputSignal<bool> K1,
            FPGA.InputSignal<bool> K0,
            GameControlsState controlsState)
        {
            KeypadKeyCode internalCode = 0;
            FPGA.Config.Link(internalCode, out controlsState.keyCode);

            ushort adcChannel1Value = 32767, adcChannel2Value = 32767;

            FPGA.Config.Link(adcChannel1Value, controlsState.adcChannel1);
            FPGA.Config.Link(adcChannel2Value, controlsState.adcChannel2);

            Sequential keypadHandler = () =>
            {
                Keypad4x4.ReadASCIICode(K7, K6, K5, K4, K3, K2, K1, K0, out internalCode);
            };

            FPGA.Config.OnTimer(TimeSpan.FromMilliseconds(20), keypadHandler);

            Sequential joystickHandler = () =>
            {
                ADC102S021.Read(out adcChannel1Value, out adcChannel2Value, ADC1NCS, ADC1SLCK, ADC1DIN, ADC1DOUT);
            };

            const bool trigger = true;
            FPGA.Config.OnSignal(trigger, joystickHandler);
        }
    }
}
