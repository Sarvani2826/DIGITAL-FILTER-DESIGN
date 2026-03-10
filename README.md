# DIGITAL-FILTER-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: PICHHIKA SARVANI

*INTERN ID*: CTIS6955

*DOMAIN*: VLSI

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTHOSH KUMAR

## DESCRIPTION OF TASK

The task involved designing and simulating a Digital Finite Impulse Response (FIR) filter using the Verilog Hardware Description Language (HDL). The objective of this project was to implement a digital filtering system capable of processing discrete-time input signals and producing a filtered output based on predefined filter coefficients. FIR filters are widely used in digital signal processing applications because they are inherently stable and provide a linear phase response. The project focused on designing a simple multi-tap FIR filter, implementing it in Verilog, and verifying its functionality through simulation.

In this design, a four-tap FIR filter architecture was implemented. The output of the FIR filter is determined by performing a weighted sum of the current input sample and several delayed input samples. The mathematical representation of the FIR filter used in this project is given by the equation:

y[n] = h₀x[n] + h₁x[n−1] + h₂x[n−2] + h₃x[n−3]

where x[n] represents the current input sample, x[n−1], x[n−2], and x[n−3] represent previous input samples stored in delay elements, and h₀, h₁, h₂, and h₃ are the filter coefficients. In this implementation, fixed coefficients were selected to demonstrate the filtering operation. The filter output is computed at every clock cycle by multiplying each delayed sample with its corresponding coefficient and summing all the products.

The FIR filter design consists of three main components: delay registers, multipliers, and adders. The delay registers act as storage elements that hold previous input samples. These registers create the necessary time delays required for FIR filter operation. Each delayed sample is multiplied by its corresponding coefficient using multiplier units. The resulting products are then combined using adders to generate the final filtered output.

The Verilog implementation uses synchronous sequential logic controlled by a clock signal. At every positive edge of the clock, the input sample shifts through a series of registers that represent the delay line. The newest sample is stored in the first register, while older samples move to the next registers in the sequence. This shifting mechanism effectively produces the delayed input signals required for the filter equation. Simultaneously, the multiplication and addition operations are performed to compute the output sample.

A testbench was developed to verify the functionality of the FIR filter. The testbench generates clock signals, initializes the system, and applies a sequence of input samples to the filter. The resulting output values were observed using simulation tools and waveform analysis. Signals such as the input sample, delayed samples, and final output were monitored to ensure the correct implementation of the FIR filtering equation.

The simulation results demonstrated that the FIR filter correctly processes the input data and produces outputs that correspond to the mathematical FIR filter equation. The delay registers correctly shift the input samples, and the multipliers and adders perform the required arithmetic operations. This confirms that the Verilog implementation successfully realizes a digital FIR filter.

Overall, the project illustrates how digital signal processing algorithms can be implemented in hardware using Verilog. The design demonstrates the working principle of FIR filters and highlights the use of registers, arithmetic operations, and sequential logic in creating efficient digital filtering systems.

## OUTPUT

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/32b5fe91-2fbe-44bf-9918-50b79407e903" />
