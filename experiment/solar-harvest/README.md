# Semi-indoor solar energy harvesting experiment

* **hardware.fzz**: Fritzing sketch of the measuring hardware. It is based on the INA219 current sensor and an Intel Edison
* **measure.py**: Python script that takes a current and voltage measurement approximetely every second and writes it to the standard output.
* **integral.py**: Pythin script for generating a daily sum from the output of the the `measure.py` script. It writes to the standard output.
* **multiplot.plt**: Gnuplot script for generating diagram from the output of the `measure.py` script. 
* **daily.plt**: Gnuplot script for generating diagram from the output of the `integral.py` script.
