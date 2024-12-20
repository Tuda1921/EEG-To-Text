@echo off
set CUDA_VISIBLE_DEVICES=0
python eval_decoding.py ^
    --checkpoint_path ./checkpoints/decoding\last\task1_task2_task3_finetune_T5Translator_skipstep1_b128_20_20_0.0001_0.0001_unique_sent_eeg.pt ^
    --config_path config/decoding/task1_task2_task3_finetune_T5Translator_skipstep1_b128_20_20_0.0001_0.0001_unique_sent_eeg.json ^
    --test_input EEG ^
    --train_input EEG ^
    -cuda cuda:0


@REM #CUDA_VISIBLE_DEVICES=0 python3 eval_decoding.py \
@REM #    --checkpoint_path checkpoints/decoding/best/task1_task2_task3_finetune_T5Translator_skipstep1_b32_20_30_2e-05_2e-05_unique_sent_EEG.pt \
@REM #    --config_path config/decoding/task1_task2_task3_finetune_T5Translator_skipstep1_b32_20_30_2e-05_2e-05_unique_sent_EEG.json \
@REM #    --test_input noise \
@REM #    --train_input EEG \
@REM #    -cuda cuda:0

