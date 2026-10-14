package org.apache.commons.math3.genetics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Chromosome implements Comparable<Chromosome>, Fitness {
    private static final double NO_FITNESS = Double.NEGATIVE_INFINITY;
    private double fitness = NO_FITNESS;

    protected Chromosome findSameChromosome(Population population) {
        for (Chromosome chromosome : population) {
            if (isSame(chromosome)) {
                return chromosome;
            }
        }
        return null;
    }

    public double getFitness() {
        if (this.fitness == NO_FITNESS) {
            this.fitness = fitness();
        }
        return this.fitness;
    }

    protected boolean isSame(Chromosome chromosome) {
        return false;
    }

    public void searchForFitnessUpdate(Population population) {
        Chromosome chromosomeFindSameChromosome = findSameChromosome(population);
        if (chromosomeFindSameChromosome != null) {
            this.fitness = chromosomeFindSameChromosome.getFitness();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Chromosome chromosome) {
        return Double.compare(getFitness(), chromosome.getFitness());
    }
}
