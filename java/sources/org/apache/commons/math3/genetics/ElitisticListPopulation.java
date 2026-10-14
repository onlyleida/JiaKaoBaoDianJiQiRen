package org.apache.commons.math3.genetics;

import java.util.Collections;
import java.util.List;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ElitisticListPopulation extends ListPopulation {
    private double elitismRate;

    public ElitisticListPopulation(List<Chromosome> list, int i, double d2) throws OutOfRangeException, NotPositiveException, NullArgumentException, NumberIsTooLargeException {
        super(list, i);
        this.elitismRate = 0.9d;
        setElitismRate(d2);
    }

    public double getElitismRate() {
        return this.elitismRate;
    }

    @Override // org.apache.commons.math3.genetics.Population
    public Population nextGeneration() {
        ElitisticListPopulation elitisticListPopulation = new ElitisticListPopulation(getPopulationLimit(), getElitismRate());
        List<Chromosome> chromosomeList = getChromosomeList();
        Collections.sort(chromosomeList);
        for (int iCeil = (int) FastMath.ceil((1.0d - getElitismRate()) * ((double) chromosomeList.size())); iCeil < chromosomeList.size(); iCeil++) {
            elitisticListPopulation.addChromosome(chromosomeList.get(iCeil));
        }
        return elitisticListPopulation;
    }

    public void setElitismRate(double d2) throws OutOfRangeException {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.ELITISM_RATE, Double.valueOf(d2), 0, 1);
        }
        this.elitismRate = d2;
    }

    public ElitisticListPopulation(int i, double d2) throws OutOfRangeException, NotPositiveException {
        super(i);
        this.elitismRate = 0.9d;
        setElitismRate(d2);
    }
}
