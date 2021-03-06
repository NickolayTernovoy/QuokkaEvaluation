﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using Quokka.VCD;
using QuokkaTests.Experimental;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Experimental.Tests
{
    [TestClass]
    public class WaveformBuilderTests
    {
        [TestMethod]
        public void Test()
        {
            var vcd = new VCDBuilder(@"C:\tmp\1.vcd");
            var topScope = new VCDSignalsSnapshot("TOP");
            topScope.Add(new VCDVariable("data", (byte)0, 1));

            var childScope = topScope.Scope("ChildScope1");
            var signal1 = childScope.Add(new VCDVariable("Signal1", true, 1));
            var signal2 = childScope.Add(new VCDVariable("Signal2", "Value", 1));

            vcd.Init(topScope);

            signal1.Value = false;
            signal2.Value = "NewValue";
            vcd.Snapshot(10, topScope);
            vcd.Snapshot(20, null);
        }
    }
}
