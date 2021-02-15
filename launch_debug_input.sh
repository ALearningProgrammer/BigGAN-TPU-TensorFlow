#!/bin/bash

python3.6 debug_input.py --use-tpu \
	--train-input-path gs://birdaus/Train1/* \
	--batch-size 256  \
	$@ &
