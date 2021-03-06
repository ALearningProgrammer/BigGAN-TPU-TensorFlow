#!/bin/bash

python3.6 main_tpu.py --use-tpu \
	--train-input-path gs://birdaus/Train1/* \
	--eval-input-path gs://birdaus/Validation1/* \
	--model-dir gs://birdaus/model \
	--result-dir ./results \
	--batch-size 256  \
	--ch 64 \
	--self-attn-res 64 \
	--g-lr 0.0001 \
	--d-lr 0.0004 \
	--verbosity INFO \
	--train-examples 1281167 \
	--eval-examples 50000 \
	--tag sagan \
	--tag run-$RANDOM \
	$@ &
	
