within ;
package BF_data
  package Borefield "Collection of borefield data records"
    extends Modelica.Icons.MaterialPropertiesPackage;

    record Example
      "Example definition of a borefield data record"
      extends BF_data.Borefield.Template(
        filDat=IDEAS.Fluid.Geothermal.Borefields.Data.Filling.Bentonite(),
        soiDat=IDEAS.Fluid.Geothermal.Borefields.Data.Soil.SandStone(),
        conDat=IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Example());
      annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="borFieDat",
    Documentation(
    info="<html>
<p>This record presents an example on how to define borefield records
using the template in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Borefield.Template\">
IDEAS.Fluid.Geothermal.Borefields.Data.Borefield.Template</a>.</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Example;

    record Template
      "Template for borefield data records"
      extends Modelica.Icons.Record;
      parameter IDEAS.Fluid.Geothermal.Borefields.Data.Filling.Template filDat
        "Filling data";
      parameter IDEAS.Fluid.Geothermal.Borefields.Data.Soil.Template soiDat
        "Soil data";
      parameter IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template conDat
        "Configuration data";

      annotation (
      defaultComponentPrefixes="parameter",
      defaultComponentName="borFieDat",
    Documentation(
    info="<html>
<p>
This record is a template for the records in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Borefield\">
IDEAS.Fluid.Geothermal.Borefields.Data.Borefield</a>.
</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Template;

    record Example_RG_V "Total borefield date for RG thesis"
      extends BF_data.Borefield.Template(
        filDat=IDEAS.Fluid.Geothermal.Borefields.Data.Filling.Bentonite(),
        soiDat=IDEAS.Fluid.Geothermal.Borefields.Data.Soil.SandStone(),
        conDat=
            IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Example_RG_V());
      annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="borFieDat",
    Documentation(
    info="<html>
<p>This record presents an example on how to define borefield records
using the template in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Borefield.Template\">
IDEAS.Fluid.Geothermal.Borefields.Data.Borefield.Template</a>.</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Example_RG_V;

    record Example_RG_O "Total borefield date for RG thesis"
      extends BF_data.Borefield.Template(
        filDat=IDEAS.Fluid.Geothermal.Borefields.Data.Filling.Bentonite(),
        soiDat=IDEAS.Fluid.Geothermal.Borefields.Data.Soil.SandStone(),
        conDat=
            IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Example_RG_O());
      annotation (
    defaultComponentPrefixes="parameter",
    defaultComponentName="borFieDat",
    Documentation(
    info="<html>
<p>This record presents an example on how to define borefield records
using the template in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Borefield.Template\">
IDEAS.Fluid.Geothermal.Borefields.Data.Borefield.Template</a>.</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Example_RG_O;
  annotation (Documentation(info="<html>
<p>
This package contains data records for use with ground heat exchanger models
in <a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields\">
IDEAS.Fluid.Geothermal.Borefields</a>.
The borefield data records
contain one of the
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Configuration\">
IDEAS.Fluid.Geothermal.Borefields.Data.Configuration</a> records, one of the
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Filling\">
IDEAS.Fluid.Geothermal.Borefields.Data.Filling</a> records, and one of the
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Soil\">
IDEAS.Fluid.Geothermal.Borefields.Data.Soil</a> records.
</p>
</html>"));
  end Borefield;

  package Configuration
    "Collection of records of configuration data of borefields"
    extends Modelica.Icons.MaterialPropertiesPackage;

    record Example
      "Example definition of a configuration data record"
      extends BF_data.Configuration.Template(
        borCon=IDEAS.Fluid.Geothermal.Borefields.Types.BoreholeConfiguration.SingleUTube,

        cooBor={{0,0},{0,6},{6,0},{6,6}},
        mBor_flow_nominal=0.3,
        dp_nominal=5e4,
        hBor=100.0,
        rBor=0.075,
        dBor=1.0,
        rTub=0.02,
        kTub=0.5,
        eTub=0.002,
        xC=0.05);
      annotation (
      defaultComponentPrefixes="parameter",
      defaultComponentName="conDat",
        Documentation(
    info="<html>
<p>
This record presents an example for how to define configuration data records
using the template in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template\">
IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template</a>.
</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Example;

    record Template
      "Template for configuration data records"
      extends Modelica.Icons.Record;

      parameter IDEAS.Fluid.Geothermal.Borefields.Types.BoreholeConfiguration borCon
        "Borehole configuration";

      parameter Boolean use_Rb = false
        "true if the value borehole thermal resistance Rb should be given and used";
      parameter Real Rb(unit="(m.K)/W") = 0.0
        "Borehole thermal resistance Rb. Only to fill in if known"
        annotation(Dialog(enable=use_Rb));
      parameter Modelica.SIunits.MassFlowRate mBor_flow_nominal
        "Nominal mass flow rate per borehole"
        annotation (Dialog(group="Nominal condition"));
      parameter Modelica.SIunits.MassFlowRate mBorFie_flow_nominal = mBor_flow_nominal*nBor
        "Nominal mass flow of borefield"
        annotation (Dialog(group="Nominal condition"));
      parameter Modelica.SIunits.Pressure dp_nominal(displayUnit="Pa")
        "Pressure losses for the entire borefield"
        annotation (Dialog(group="Nominal condition"));

      //------------------------- Geometrical parameters ---------------------------
      parameter Modelica.SIunits.Height hBor "Total height of the borehole"
        annotation (Dialog(group="Borehole"));
      parameter Modelica.SIunits.Radius rBor "Radius of the borehole"
        annotation (Dialog(group="Borehole"));
      parameter Modelica.SIunits.Height dBor "Borehole buried depth"
        annotation (Dialog(group="Borehole"));
      parameter Integer nBor = size(cooBor, 1) "Total number of boreholes"
        annotation (Dialog(group="Borehole"));

      parameter Modelica.SIunits.Length[:,2] cooBor
        "Cartesian coordinates of the boreholes in meters"
        annotation (Dialog(group="Borehole"));

      // -- Tube
      parameter Modelica.SIunits.Radius rTub "Outer radius of the tubes"
        annotation (Dialog(group="Tubes"));
      parameter Modelica.SIunits.ThermalConductivity kTub "Thermal conductivity of the tube"
        annotation (Dialog(group="Tubes"));

      parameter Modelica.SIunits.Length eTub "Thickness of a tube"
        annotation (Dialog(group="Tubes"));

      parameter Modelica.SIunits.Length xC
        "Shank spacing, defined as the distance between the center of a pipe and the center of the borehole"
        annotation (Dialog(group="Tubes"));

      //------------------------- Advanced parameters ------------------------------

      /*--------Flow: */
      parameter Modelica.SIunits.MassFlowRate mBor_flow_small(min=0) = 1E-4*abs(mBor_flow_nominal)
        "Small mass flow rate for regularization of zero flow"
        annotation (Dialog(tab="Advanced"));

      annotation (
      defaultComponentPrefixes="parameter",
      defaultComponentName="conDat",
        Documentation(
    info="<html>
<p>
This record is a template for the records in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Configuration\">
IDEAS.Fluid.Geothermal.Borefields.Data.Configuration</a>.
</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Template;

    record Example_RG_V "Borefield data for RG thesis for the Vaartstraat case"
      extends BF_data.Configuration.Template(
        borCon=IDEAS.Fluid.Geothermal.Borefields.Types.BoreholeConfiguration.SingleUTube,

        cooBor={{0,0},{0,6},{6,0},{6,6}},
        mBor_flow_nominal=0.0235/4,
        dp_nominal=5e4*(33/100),
        hBor=33,
        rBor=0.075,
        dBor=1.0,
        rTub=0.02,
        kTub=0.5,
        eTub=0.002,
        xC=0.05);
      annotation (
      defaultComponentPrefixes="parameter",
      defaultComponentName="conDat",
        Documentation(
    info="<html>
<p>
This record presents an example for how to define configuration data records
using the template in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template\">
IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template</a>.
</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Example_RG_V;

    record Example_RG_O
      "Borefield data for RG thesis for the Office case"
      extends BF_data.Configuration.Template(
        borCon=IDEAS.Fluid.Geothermal.Borefields.Types.BoreholeConfiguration.SingleUTube,

        cooBor={{0,0},{0,6},{6,0},{6,6}},
        mBor_flow_nominal=0.0462/4,
        dp_nominal=5e4*(75/100),
        hBor=75,
        rBor=0.075,
        dBor=1.0,
        rTub=0.02,
        kTub=0.5,
        eTub=0.002,
        xC=0.05);
      annotation (
      defaultComponentPrefixes="parameter",
      defaultComponentName="conDat",
        Documentation(
    info="<html>
<p>
This record presents an example for how to define configuration data records
using the template in
<a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template\">
IDEAS.Fluid.Geothermal.Borefields.Data.Configuration.Template</a>.
</p>
</html>",
    revisions="<html>
<ul>
<li>
July 15, 2018, by Michael Wetter:<br/>
Revised implementation, added <code>defaultComponentPrefixes</code> and
<code>defaultComponentName</code>.
</li>
<li>
June 28, 2018, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));
    end Example_RG_O;
  annotation (Documentation(info="<html>
<p>
This package contains data records for use with ground heat exchanger models
in <a href=\"modelica://IDEAS.Fluid.Geothermal.Borefields\">
IDEAS.Fluid.Geothermal.Borefields</a>. The configuration data
records contain the geometrical and operational characteristics of the borefield
and the boreholes.
</p>
</html>"));
  end Configuration;
  annotation (uses(IDEAS(version="2.1.0"), Modelica(version="3.2.3")));
end BF_data;
