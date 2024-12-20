@echo off

rem Set environment variable for the first command
set CUDA_VISIBLE_DEVICES=0
python train_decoding.py --model_name DEBERTAv3 ^
    --task_name task1 ^
    --one_step ^
    --pretrained ^
    --not_load_step1_checkpoint ^
    --num_epoch_step1 100 ^
    --num_epoch_step2 50 ^
    --train_input eeg ^
    -lr1 0.0001 ^
    -lr2 0.0001 ^
    -b 128 ^
    -s ./checkpoints/decoding

@REM rem Set environment variable for the second command
@REM set CUDA_VISIBLE_DEVICES=0,1
@REM python train_decoding.py --model_name T5Translator ^BrainTranslator
@REM     --task_name task1_task2_task3 ^
@REM     --one_step ^
@REM     --pretrained ^
@REM     --not_load_step1_checkpoint ^
@REM     --num_epoch_step1 20 ^
@REM     --num_epoch_step2 30 ^
@REM     --train_input eeg ^
@REM     -lr1 0.00002 ^
@REM     -lr2 0.00002 ^
@REM     -b 128 ^
@REM     -s ./checkpoints/decoding
