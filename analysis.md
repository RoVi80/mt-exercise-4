# MT Exercise 4 - Part 1: Vocabulary and Subword Comparison

## Experimental Setup
- **Language pair**: English → Italian
- **Training set**: 100k lines
- **Model**: LSTM encoder-decoder with attention
- **Evaluation**: BLEU on test set

## Experiments

| Experiment | Uses BPE? | Vocabulary Size | Test BLEU |
|------------|-----------|------------------|------------|
| (a) Word-based | No | 2000 | 7.52 |
| (b) BPE-based  | Yes | 2000 | 42.79 |
| (c) BPE-based  | Yes | 5000 | 34.93 |

## Observations
- The word-based model performed poorly, with a BLEU score of only 7.52.
- The BPE-based model with vocab size 2000 performed best, likely due to reduced sparsity and better generalization.
- Increasing BPE vocab to 5000 resulted in worse BLEU, perhaps due to over-fragmentation or data sparsity.

## Manual Inspection
- Word-based output had many `<unk>` tokens.
- BPE-based outputs captured more accurate translations.
- Sample translations are included in `results/example_translations.txt`.

## Conclusion
Subword models clearly outperform word-based ones. However, larger vocabularies don't guarantee better performance — a balanced size like 2k can offer the best trade-off between granularity and coverage.
