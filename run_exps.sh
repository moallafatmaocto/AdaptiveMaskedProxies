
for fold in {0..3}
do
    echo 'running fold '$fold' with weights runs/reddilatedfcn8s_pascal/reduced_fcn_fold'$fold ' saving at ' out$fold.txt
    python fewshot_imprinted.py --config configs/redfcn8s_pascal_imprinted.yml --model_path runs/reddilatedfcn8s_pascal/reduced_fcn_fold$fold/dilated_fcn8s_pascal_best_model.pkl --binary 1 --fold $fold >> logs/out$fold.txt

done
