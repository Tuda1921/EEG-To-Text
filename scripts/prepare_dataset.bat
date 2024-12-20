@echo off
echo This script constructs .pickle files from .mat files from ZuCo dataset.
echo This script also generates tenary sentiment_labels.json file for ZuCo task1-SR v1.0 and ternary_dataset.json from filtered StanfordSentimentTreebank.
echo Note: the sentences in ZuCo task1-SR do not overlap with sentences in filtered StanfordSentimentTreebank.
echo Note: This process can take time, please be patient...

python ./util/construct_dataset_mat_to_pickle_v1.py -t task1-SR
python ./util/construct_dataset_mat_to_pickle_v1.py -t task2-NR
python ./util/construct_dataset_mat_to_pickle_v1.py -t task3-TSR
python ./util/construct_dataset_mat_to_pickle_v2.py

python ./util/get_sentiment_labels.py
python ./util/get_SST_ternary_dataset.py

pause