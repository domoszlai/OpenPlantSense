# Semi-indoor solar energy harvesting experiment

* **hardware.fzz**: [Fritzing](http://fritzing.org/home/) sketch of the measuring hardware. It is based on the [INA219](https://learn.adafruit.com/adafruit-ina219-current-sensor-breakout/overview) current sensor and an [Intel Edison](https://software.intel.com/en-us/iot/hardware/edison)
* **measure.py**: [Python](https://www.python.org/) script that takes a current and voltage measurement approximetely every second and writes it to the standard output
* **integral.py**: [Python](https://www.python.org/) script that generates daily sum from the output of the the `measure.py` script and writes it to the standard output
* **multiplot.plt**: [Gnuplot](http://www.gnuplot.info/) script for generating diagram from the output of the `measure.py` script
* **daily.plt**: [Gnuplot](http://www.gnuplot.info/) script for generating diagram from the output of the `integral.py` script

For details please visit [http://dlacko.blogspot.com/2017/03/indoor-solar-energy-harvesting-experiment.html](http://dlacko.blogspot.com/2017/03/indoor-solar-energy-harvesting-experiment.html)
