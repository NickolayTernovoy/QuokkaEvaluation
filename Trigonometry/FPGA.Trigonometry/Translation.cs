﻿using FPGA.Attributes;
using SequentialMath;
using System;
using System.Linq;

namespace FPGA.Trigonometry
{
    [OnTranslation]
    public static class FPGATrigonometryTranslation
    {
        public static float[] FactorialArray()
        {
            return Enumerable.Range(0, 10).Select(i => (float)Calculators.Factorial(i)).ToArray();
        }
    }
}
