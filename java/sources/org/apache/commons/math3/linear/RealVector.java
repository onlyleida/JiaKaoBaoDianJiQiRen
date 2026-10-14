package org.apache.commons.math3.linear;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Add;
import org.apache.commons.math3.analysis.function.Divide;
import org.apache.commons.math3.analysis.function.Multiply;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public abstract class RealVector {

    protected class Entry {
        private int index;

        public Entry() {
            setIndex(0);
        }

        public int getIndex() {
            return this.index;
        }

        public double getValue() {
            return RealVector.this.getEntry(getIndex());
        }

        public void setIndex(int i) {
            this.index = i;
        }

        public void setValue(double d2) {
            RealVector.this.setEntry(getIndex(), d2);
        }
    }

    protected class SparseEntryIterator implements Iterator<Entry> {
        private Entry current;
        private final int dim;
        private Entry next;

        protected SparseEntryIterator() {
            this.dim = RealVector.this.getDimension();
            this.current = RealVector.this.new Entry();
            Entry entry = RealVector.this.new Entry();
            this.next = entry;
            if (entry.getValue() == 0.0d) {
                advance(this.next);
            }
        }

        protected void advance(Entry entry) {
            if (entry == null) {
                return;
            }
            do {
                entry.setIndex(entry.getIndex() + 1);
                if (entry.getIndex() >= this.dim) {
                    break;
                }
            } while (entry.getValue() == 0.0d);
            if (entry.getIndex() >= this.dim) {
                entry.setIndex(-1);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next.getIndex() >= 0;
        }

        @Override // java.util.Iterator
        public void remove() throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public Entry next() {
            int index = this.next.getIndex();
            if (index < 0) {
                throw new NoSuchElementException();
            }
            this.current.setIndex(index);
            advance(this.next);
            return this.current;
        }
    }

    public static RealVector unmodifiableRealVector(RealVector realVector) {
        return new RealVector() { // from class: org.apache.commons.math3.linear.RealVector.2

            /* JADX INFO: renamed from: org.apache.commons.math3.linear.RealVector$2$UnmodifiableEntry */
            class UnmodifiableEntry extends Entry {
                UnmodifiableEntry() {
                    super();
                }

                @Override // org.apache.commons.math3.linear.RealVector.Entry
                public double getValue() {
                    return RealVector.this.getEntry(getIndex());
                }

                @Override // org.apache.commons.math3.linear.RealVector.Entry
                public void setValue(double d2) throws MathUnsupportedOperationException {
                    throw new MathUnsupportedOperationException();
                }
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector add(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.add(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void addToEntry(int i, double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector append(RealVector realVector2) {
                return RealVector.this.append(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector combine(double d2, double d3, RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.combine(d2, d3, realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector combineToSelf(double d2, double d3, RealVector realVector2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector copy() {
                return RealVector.this.copy();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double cosine(RealVector realVector2) throws DimensionMismatchException, MathArithmeticException {
                return RealVector.this.cosine(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double dotProduct(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.dotProduct(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector ebeDivide(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.ebeDivide(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector ebeMultiply(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.ebeMultiply(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public int getDimension() {
                return RealVector.this.getDimension();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getDistance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getDistance(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getEntry(int i) throws OutOfRangeException {
                return RealVector.this.getEntry(i);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getL1Distance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getL1Distance(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getL1Norm() {
                return RealVector.this.getL1Norm();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getLInfDistance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getLInfDistance(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getLInfNorm() {
                return RealVector.this.getLInfNorm();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getNorm() {
                return RealVector.this.getNorm();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector getSubVector(int i, int i2) throws OutOfRangeException, NotPositiveException {
                return RealVector.this.getSubVector(i, i2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public boolean isInfinite() {
                return RealVector.this.isInfinite();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public boolean isNaN() {
                return RealVector.this.isNaN();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public Iterator<Entry> iterator() {
                final Iterator<Entry> it = RealVector.this.iterator();
                return new Iterator<Entry>() { // from class: org.apache.commons.math3.linear.RealVector.2.1

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    private final UnmodifiableEntry f16185e;

                    {
                        this.f16185e = AnonymousClass2.this.new UnmodifiableEntry();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    public void remove() throws MathUnsupportedOperationException {
                        throw new MathUnsupportedOperationException();
                    }

                    @Override // java.util.Iterator
                    public Entry next() {
                        this.f16185e.setIndex(((Entry) it.next()).getIndex());
                        return this.f16185e;
                    }
                };
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector map(UnivariateFunction univariateFunction) {
                return RealVector.this.map(univariateFunction);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapAdd(double d2) {
                return RealVector.this.mapAdd(d2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapAddToSelf(double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapDivide(double d2) {
                return RealVector.this.mapDivide(d2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapDivideToSelf(double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapMultiply(double d2) {
                return RealVector.this.mapMultiply(d2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapMultiplyToSelf(double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapSubtract(double d2) {
                return RealVector.this.mapSubtract(d2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapSubtractToSelf(double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapToSelf(UnivariateFunction univariateFunction) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealMatrix outerProduct(RealVector realVector2) {
                return RealVector.this.outerProduct(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void set(double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void setEntry(int i, double d2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void setSubVector(int i, RealVector realVector2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public Iterator<Entry> sparseIterator() {
                final Iterator<Entry> itSparseIterator = RealVector.this.sparseIterator();
                return new Iterator<Entry>() { // from class: org.apache.commons.math3.linear.RealVector.2.2

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    private final UnmodifiableEntry f16186e;

                    {
                        this.f16186e = AnonymousClass2.this.new UnmodifiableEntry();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return itSparseIterator.hasNext();
                    }

                    @Override // java.util.Iterator
                    public void remove() throws MathUnsupportedOperationException {
                        throw new MathUnsupportedOperationException();
                    }

                    @Override // java.util.Iterator
                    public Entry next() {
                        this.f16186e.setIndex(((Entry) itSparseIterator.next()).getIndex());
                        return this.f16186e;
                    }
                };
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector subtract(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.subtract(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double[] toArray() {
                return RealVector.this.toArray();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector unitVector() throws MathArithmeticException {
                return RealVector.this.unitVector();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void unitize() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector append(double d2) {
                return RealVector.this.append(d2);
            }
        };
    }

    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector realVectorCopy = realVector.copy();
        for (Entry entry : this) {
            int index = entry.getIndex();
            realVectorCopy.setEntry(index, entry.getValue() + realVectorCopy.getEntry(index));
        }
        return realVectorCopy;
    }

    public void addToEntry(int i, double d2) throws OutOfRangeException {
        setEntry(i, getEntry(i) + d2);
    }

    public abstract RealVector append(double d2);

    public abstract RealVector append(RealVector realVector);

    protected void checkIndex(int i) throws OutOfRangeException {
        if (i < 0 || i >= getDimension()) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i), 0, Integer.valueOf(getDimension() - 1));
        }
    }

    protected void checkIndices(int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        int dimension = getDimension();
        if (i < 0 || i >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i), 0, Integer.valueOf(dimension - 1));
        }
        if (i2 < 0 || i2 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i2), 0, Integer.valueOf(dimension - 1));
        }
        if (i2 < i) {
            throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i2), Integer.valueOf(i), false);
        }
    }

    protected void checkVectorDimensions(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
    }

    public RealVector combine(double d2, double d3, RealVector realVector) throws DimensionMismatchException {
        return copy().combineToSelf(d2, d3, realVector);
    }

    public RealVector combineToSelf(double d2, double d3, RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        for (int i = 0; i < getDimension(); i++) {
            setEntry(i, (getEntry(i) * d2) + (realVector.getEntry(i) * d3));
        }
        return this;
    }

    public abstract RealVector copy();

    public double cosine(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        double norm = getNorm();
        double norm2 = realVector.getNorm();
        if (norm == 0.0d || norm2 == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        return dotProduct(realVector) / (norm * norm2);
    }

    public double dotProduct(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        int dimension = getDimension();
        double entry = 0.0d;
        for (int i = 0; i < dimension; i++) {
            entry += getEntry(i) * realVector.getEntry(i);
        }
        return entry;
    }

    public abstract RealVector ebeDivide(RealVector realVector) throws DimensionMismatchException;

    public abstract RealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException;

    public boolean equals(Object obj) throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public abstract int getDimension();

    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        double d2 = 0.0d;
        for (Entry entry : this) {
            double value = entry.getValue() - realVector.getEntry(entry.getIndex());
            d2 += value * value;
        }
        return FastMath.sqrt(d2);
    }

    public abstract double getEntry(int i) throws OutOfRangeException;

    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        double dAbs = 0.0d;
        for (Entry entry : this) {
            dAbs += FastMath.abs(entry.getValue() - realVector.getEntry(entry.getIndex()));
        }
        return dAbs;
    }

    public double getL1Norm() {
        Iterator<Entry> it = iterator();
        double dAbs = 0.0d;
        while (it.hasNext()) {
            dAbs += FastMath.abs(it.next().getValue());
        }
        return dAbs;
    }

    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        double dMax = 0.0d;
        for (Entry entry : this) {
            dMax = FastMath.max(FastMath.abs(entry.getValue() - realVector.getEntry(entry.getIndex())), dMax);
        }
        return dMax;
    }

    public double getLInfNorm() {
        Iterator<Entry> it = iterator();
        double dMax = 0.0d;
        while (it.hasNext()) {
            dMax = FastMath.max(dMax, FastMath.abs(it.next().getValue()));
        }
        return dMax;
    }

    public int getMaxIndex() {
        int index = -1;
        double value = Double.NEGATIVE_INFINITY;
        for (Entry entry : this) {
            if (entry.getValue() >= value) {
                index = entry.getIndex();
                value = entry.getValue();
            }
        }
        return index;
    }

    public double getMaxValue() {
        int maxIndex = getMaxIndex();
        if (maxIndex < 0) {
            return Double.NaN;
        }
        return getEntry(maxIndex);
    }

    public int getMinIndex() {
        int index = -1;
        double value = Double.POSITIVE_INFINITY;
        for (Entry entry : this) {
            if (entry.getValue() <= value) {
                index = entry.getIndex();
                value = entry.getValue();
            }
        }
        return index;
    }

    public double getMinValue() {
        int minIndex = getMinIndex();
        if (minIndex < 0) {
            return Double.NaN;
        }
        return getEntry(minIndex);
    }

    public double getNorm() {
        Iterator<Entry> it = iterator();
        double d2 = 0.0d;
        while (it.hasNext()) {
            double value = it.next().getValue();
            d2 += value * value;
        }
        return FastMath.sqrt(d2);
    }

    public abstract RealVector getSubVector(int i, int i2) throws OutOfRangeException, NotPositiveException;

    public int hashCode() throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public abstract boolean isInfinite();

    public abstract boolean isNaN();

    public Iterator<Entry> iterator() {
        final int dimension = getDimension();
        return new Iterator<Entry>() { // from class: org.apache.commons.math3.linear.RealVector.1

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Entry f16184e;
            private int i = 0;

            {
                this.f16184e = RealVector.this.new Entry();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.i < dimension;
            }

            @Override // java.util.Iterator
            public void remove() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // java.util.Iterator
            public Entry next() {
                int i = this.i;
                if (i >= dimension) {
                    throw new NoSuchElementException();
                }
                Entry entry = this.f16184e;
                this.i = i + 1;
                entry.setIndex(i);
                return this.f16184e;
            }
        };
    }

    public RealVector map(UnivariateFunction univariateFunction) {
        return copy().mapToSelf(univariateFunction);
    }

    public RealVector mapAdd(double d2) {
        return copy().mapAddToSelf(d2);
    }

    public RealVector mapAddToSelf(double d2) {
        return d2 != 0.0d ? mapToSelf(FunctionUtils.fix2ndArgument(new Add(), d2)) : this;
    }

    public RealVector mapDivide(double d2) {
        return copy().mapDivideToSelf(d2);
    }

    public RealVector mapDivideToSelf(double d2) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Divide(), d2));
    }

    public RealVector mapMultiply(double d2) {
        return copy().mapMultiplyToSelf(d2);
    }

    public RealVector mapMultiplyToSelf(double d2) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Multiply(), d2));
    }

    public RealVector mapSubtract(double d2) {
        return copy().mapSubtractToSelf(d2);
    }

    public RealVector mapSubtractToSelf(double d2) {
        return mapAddToSelf(-d2);
    }

    public RealVector mapToSelf(UnivariateFunction univariateFunction) {
        for (Entry entry : this) {
            entry.setValue(univariateFunction.value(entry.getValue()));
        }
        return this;
    }

    public RealMatrix outerProduct(RealVector realVector) {
        int dimension = getDimension();
        int dimension2 = realVector.getDimension();
        RealMatrix openMapRealMatrix = ((realVector instanceof SparseRealVector) || (this instanceof SparseRealVector)) ? new OpenMapRealMatrix(dimension, dimension2) : new Array2DRowRealMatrix(dimension, dimension2);
        for (int i = 0; i < dimension; i++) {
            for (int i2 = 0; i2 < dimension2; i2++) {
                openMapRealMatrix.setEntry(i, i2, getEntry(i) * realVector.getEntry(i2));
            }
        }
        return openMapRealMatrix;
    }

    public RealVector projection(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        if (realVector.dotProduct(realVector) != 0.0d) {
            return realVector.mapMultiply(dotProduct(realVector) / realVector.dotProduct(realVector));
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public void set(double d2) {
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            it.next().setValue(d2);
        }
    }

    public abstract void setEntry(int i, double d2) throws OutOfRangeException;

    public abstract void setSubVector(int i, RealVector realVector) throws OutOfRangeException;

    public Iterator<Entry> sparseIterator() {
        return new SparseEntryIterator();
    }

    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector realVectorMapMultiply = realVector.mapMultiply(-1.0d);
        for (Entry entry : this) {
            int index = entry.getIndex();
            realVectorMapMultiply.setEntry(index, entry.getValue() + realVectorMapMultiply.getEntry(index));
        }
        return realVectorMapMultiply;
    }

    public double[] toArray() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        for (int i = 0; i < dimension; i++) {
            dArr[i] = getEntry(i);
        }
        return dArr;
    }

    public RealVector unitVector() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return mapDivide(norm);
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public void unitize() throws MathArithmeticException {
        if (getNorm() == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        mapDivideToSelf(getNorm());
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        int dimension = getDimension();
        realVectorPreservingVisitor.start(dimension, 0, dimension - 1);
        for (int i = 0; i < dimension; i++) {
            realVectorPreservingVisitor.visit(i, getEntry(i));
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        return walkInDefaultOrder(realVectorPreservingVisitor);
    }

    protected void checkVectorDimensions(int i) throws DimensionMismatchException {
        int dimension = getDimension();
        if (dimension != i) {
            throw new DimensionMismatchException(dimension, i);
        }
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorPreservingVisitor, i, i2);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        return walkInDefaultOrder(realVectorChangingVisitor);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorChangingVisitor, i, i2);
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i, i2);
        realVectorPreservingVisitor.start(getDimension(), i, i2);
        while (i <= i2) {
            realVectorPreservingVisitor.visit(i, getEntry(i));
            i++;
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        int dimension = getDimension();
        realVectorChangingVisitor.start(dimension, 0, dimension - 1);
        for (int i = 0; i < dimension; i++) {
            setEntry(i, realVectorChangingVisitor.visit(i, getEntry(i)));
        }
        return realVectorChangingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i, i2);
        realVectorChangingVisitor.start(getDimension(), i, i2);
        while (i <= i2) {
            setEntry(i, realVectorChangingVisitor.visit(i, getEntry(i)));
            i++;
        }
        return realVectorChangingVisitor.end();
    }
}
