package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractListChromosome<T> extends Chromosome {
    private final List<T> representation;

    public AbstractListChromosome(List<T> list) throws InvalidRepresentationException {
        this(list, true);
    }

    protected abstract void checkValidity(List<T> list) throws InvalidRepresentationException;

    public int getLength() {
        return getRepresentation().size();
    }

    protected List<T> getRepresentation() {
        return this.representation;
    }

    public abstract AbstractListChromosome<T> newFixedLengthChromosome(List<T> list);

    public String toString() {
        return String.format("(f=%s %s)", Double.valueOf(getFitness()), getRepresentation());
    }

    public AbstractListChromosome(T[] tArr) throws InvalidRepresentationException {
        this(Arrays.asList(tArr));
    }

    public AbstractListChromosome(List<T> list, boolean z) {
        checkValidity(list);
        this.representation = Collections.unmodifiableList(z ? new ArrayList(list) : list);
    }
}
