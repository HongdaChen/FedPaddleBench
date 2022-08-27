seed=0
for beta in 0.5 0.1
do
  for alg in fedavg fedprox moon
  do
    python experiments.py --model=ConvNet \
      --dataset=cifar10 \
      --alg=$alg \
      --lr=0.01 \
      --batch_size=64 \
      --epochs=10 \
      --n_parties=10 \
      --rho=0.9 \
      --comm_round=20 \
      --partition=noniid-labeldir \
      --beta=$beta \
      --datadir='../data/data5752' \
      --logdir='../logs' \
      --init_seed=$seed
  done
done
