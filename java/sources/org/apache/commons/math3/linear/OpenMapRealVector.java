package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.util.Iterator;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.OpenIntToDoubleHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class OpenMapRealVector extends SparseRealVector implements Serializable {
    public static final double DEFAULT_ZERO_TOLERANCE = 1.0E-12d;
    private static final long serialVersionUID = 8772222695580707260L;
    private final OpenIntToDoubleHashMap entries;
    private final double epsilon;
    private final int virtualSize;

    protected class OpenMapEntry extends RealVector.Entry {
        private final OpenIntToDoubleHashMap.Iterator iter;

        protected OpenMapEntry(OpenIntToDoubleHashMap.Iterator iterator) {
            super();
            this.iter = iterator;
        }

        @Override // org.apache.commons.math3.linear.RealVector.Entry
        public int getIndex() {
            return this.iter.key();
        }

        @Override // org.apache.commons.math3.linear.RealVector.Entry
        public double getValue() {
            return this.iter.value();
        }

        @Override // org.apache.commons.math3.linear.RealVector.Entry
        public void setValue(double d2) {
            OpenMapRealVector.this.entries.put(this.iter.key(), d2);
        }
    }

    protected class OpenMapSparseIterator implements Iterator<RealVector.Entry> {
        private final RealVector.Entry current;
        private final OpenIntToDoubleHashMap.Iterator iter;

        protected OpenMapSparseIterator() {
            OpenIntToDoubleHashMap.Iterator it = OpenMapRealVector.this.entries.iterator();
            this.iter = it;
            this.current = OpenMapRealVector.this.new OpenMapEntry(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Not supported");
        }

        @Override // java.util.Iterator
        public RealVector.Entry next() {
            this.iter.advance();
            return this.current;
        }
    }

    public OpenMapRealVector() {
        this(0, 1.0E-12d);
    }

    private OpenIntToDoubleHashMap getEntries() {
        return this.entries;
    }

    private double getLInfDistance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        double dValue = 0.0d;
        while (it.hasNext()) {
            it.advance();
            double dAbs = FastMath.abs(it.value() - openMapRealVector.getEntry(it.key()));
            if (dAbs > dValue) {
                dValue = dAbs;
            }
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!this.entries.containsKey(it2.key()) && it2.value() > dValue) {
                dValue = it2.value();
            }
        }
        return dValue;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        return realVector instanceof OpenMapRealVector ? add((OpenMapRealVector) realVector) : super.add(realVector);
    }

    @Deprecated
    public double dotProduct(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        return dotProduct((RealVector) openMapRealVector);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenMapRealVector)) {
            return false;
        }
        OpenMapRealVector openMapRealVector = (OpenMapRealVector) obj;
        if (this.virtualSize != openMapRealVector.virtualSize || Double.doubleToLongBits(this.epsilon) != Double.doubleToLongBits(openMapRealVector.epsilon)) {
            return false;
        }
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            if (Double.doubleToLongBits(openMapRealVector.getEntry(it.key())) != Double.doubleToLongBits(it.value())) {
                return false;
            }
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (Double.doubleToLongBits(it2.value()) != Double.doubleToLongBits(getEntry(it2.key()))) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public int getDimension() {
        return this.virtualSize;
    }

    public double getDistance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        double d2 = 0.0d;
        while (it.hasNext()) {
            it.advance();
            double dValue = it.value() - openMapRealVector.getEntry(it.key());
            d2 += dValue * dValue;
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!this.entries.containsKey(it2.key())) {
                double dValue2 = it2.value();
                d2 += dValue2 * dValue2;
            }
        }
        return FastMath.sqrt(d2);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getEntry(int i) throws OutOfRangeException {
        checkIndex(i);
        return this.entries.get(i);
    }

    public double getL1Distance(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        double dAbs = 0.0d;
        while (it.hasNext()) {
            it.advance();
            dAbs += FastMath.abs(it.value() - openMapRealVector.getEntry(it.key()));
        }
        OpenIntToDoubleHashMap.Iterator it2 = openMapRealVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!this.entries.containsKey(it2.key())) {
                dAbs += FastMath.abs(FastMath.abs(it2.value()));
            }
        }
        return dAbs;
    }

    public double getSparsity() {
        return ((double) this.entries.size()) / ((double) getDimension());
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.epsilon);
        int i = ((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31) * 31) + this.virtualSize;
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            long jDoubleToLongBits2 = Double.doubleToLongBits(it.value());
            i = (i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >> 32)));
        }
        return i;
    }

    protected boolean isDefaultValue(double d2) {
        return FastMath.abs(d2) < this.epsilon;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public boolean isInfinite() {
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        boolean z = false;
        while (it.hasNext()) {
            it.advance();
            double dValue = it.value();
            if (Double.isNaN(dValue)) {
                return false;
            }
            if (Double.isInfinite(dValue)) {
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public boolean isNaN() {
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            if (Double.isNaN(it.value())) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void set(double d2) {
        for (int i = 0; i < this.virtualSize; i++) {
            setEntry(i, d2);
        }
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void setEntry(int i, double d2) throws OutOfRangeException {
        checkIndex(i);
        if (!isDefaultValue(d2)) {
            this.entries.put(i, d2);
        } else if (this.entries.containsKey(i)) {
            this.entries.remove(i);
        }
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void setSubVector(int i, RealVector realVector) throws OutOfRangeException {
        checkIndex(i);
        checkIndex((realVector.getDimension() + i) - 1);
        for (int i2 = 0; i2 < realVector.getDimension(); i2++) {
            setEntry(i2 + i, realVector.getEntry(i2));
        }
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public Iterator<RealVector.Entry> sparseIterator() {
        return new OpenMapSparseIterator();
    }

    public OpenMapRealVector subtract(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        OpenMapRealVector openMapRealVectorCopy = copy();
        OpenIntToDoubleHashMap.Iterator it = openMapRealVector.getEntries().iterator();
        while (it.hasNext()) {
            it.advance();
            int iKey = it.key();
            if (this.entries.containsKey(iKey)) {
                openMapRealVectorCopy.setEntry(iKey, this.entries.get(iKey) - it.value());
            } else {
                openMapRealVectorCopy.setEntry(iKey, -it.value());
            }
        }
        return openMapRealVectorCopy;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double[] toArray() {
        double[] dArr = new double[this.virtualSize];
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            dArr[it.key()] = it.value();
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public void unitize() throws MathArithmeticException {
        double norm = getNorm();
        if (isDefaultValue(norm)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            this.entries.put(it.key(), it.value() / norm);
        }
    }

    public OpenMapRealVector(int i) {
        this(i, 1.0E-12d);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector copy() {
        return new OpenMapRealVector(this);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector ebeDivide(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this);
        int dimension = getDimension();
        for (int i = 0; i < dimension; i++) {
            openMapRealVector.setEntry(i, getEntry(i) / realVector.getEntry(i));
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this);
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            openMapRealVector.setEntry(it.key(), it.value() * realVector.getEntry(it.key()));
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector getSubVector(int i, int i2) throws OutOfRangeException, NotPositiveException {
        checkIndex(i);
        if (i2 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE, Integer.valueOf(i2));
        }
        int i3 = i + i2;
        checkIndex(i3 - 1);
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(i2);
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int iKey = it.key();
            if (iKey >= i && iKey < i3) {
                openMapRealVector.setEntry(iKey - i, it.value());
            }
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector mapAdd(double d2) {
        return copy().mapAddToSelf(d2);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector mapAddToSelf(double d2) {
        for (int i = 0; i < this.virtualSize; i++) {
            setEntry(i, getEntry(i) + d2);
        }
        return this;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector unitVector() throws MathArithmeticException {
        OpenMapRealVector openMapRealVectorCopy = copy();
        openMapRealVectorCopy.unitize();
        return openMapRealVectorCopy;
    }

    public OpenMapRealVector(int i, double d2) {
        this.virtualSize = i;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d2;
    }

    public OpenMapRealVector append(OpenMapRealVector openMapRealVector) {
        OpenMapRealVector openMapRealVector2 = new OpenMapRealVector(this, openMapRealVector.getDimension());
        OpenIntToDoubleHashMap.Iterator it = openMapRealVector.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            openMapRealVector2.setEntry(it.key() + this.virtualSize, it.value());
        }
        return openMapRealVector2;
    }

    public OpenMapRealVector add(OpenMapRealVector openMapRealVector) throws DimensionMismatchException {
        checkVectorDimensions(openMapRealVector.getDimension());
        boolean z = this.entries.size() > openMapRealVector.entries.size();
        OpenMapRealVector openMapRealVectorCopy = z ? copy() : openMapRealVector.copy();
        OpenIntToDoubleHashMap.Iterator it = (z ? openMapRealVector.entries : this.entries).iterator();
        OpenIntToDoubleHashMap openIntToDoubleHashMap = z ? this.entries : openMapRealVector.entries;
        while (it.hasNext()) {
            it.advance();
            int iKey = it.key();
            if (openIntToDoubleHashMap.containsKey(iKey)) {
                openMapRealVectorCopy.setEntry(iKey, openIntToDoubleHashMap.get(iKey) + it.value());
            } else {
                openMapRealVectorCopy.setEntry(iKey, it.value());
            }
        }
        return openMapRealVectorCopy;
    }

    protected OpenMapRealVector(OpenMapRealVector openMapRealVector, int i) {
        this.virtualSize = openMapRealVector.getDimension() + i;
        this.entries = new OpenIntToDoubleHashMap(openMapRealVector.entries);
        this.epsilon = openMapRealVector.epsilon;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector append(RealVector realVector) {
        if (realVector instanceof OpenMapRealVector) {
            return append((OpenMapRealVector) realVector);
        }
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this, realVector.getDimension());
        for (int i = 0; i < realVector.getDimension(); i++) {
            openMapRealVector.setEntry(this.virtualSize + i, realVector.getEntry(i));
        }
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return subtract((OpenMapRealVector) realVector);
        }
        return super.subtract(realVector);
    }

    public OpenMapRealVector(int i, int i2) {
        this(i, i2, 1.0E-12d);
    }

    public OpenMapRealVector(int i, int i2, double d2) {
        this.virtualSize = i;
        this.entries = new OpenIntToDoubleHashMap(i2, 0.0d);
        this.epsilon = d2;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getLInfDistance((OpenMapRealVector) realVector);
        }
        return super.getLInfDistance(realVector);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public OpenMapRealVector append(double d2) {
        OpenMapRealVector openMapRealVector = new OpenMapRealVector(this, 1);
        openMapRealVector.setEntry(this.virtualSize, d2);
        return openMapRealVector;
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getL1Distance((OpenMapRealVector) realVector);
        }
        return super.getL1Distance(realVector);
    }

    @Override // org.apache.commons.math3.linear.RealVector
    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
        if (realVector instanceof OpenMapRealVector) {
            return getDistance((OpenMapRealVector) realVector);
        }
        return super.getDistance(realVector);
    }

    public OpenMapRealVector(double[] dArr) {
        this(dArr, 1.0E-12d);
    }

    public OpenMapRealVector(double[] dArr, double d2) {
        this.virtualSize = dArr.length;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d2;
        for (int i = 0; i < dArr.length; i++) {
            double d3 = dArr[i];
            if (!isDefaultValue(d3)) {
                this.entries.put(i, d3);
            }
        }
    }

    public OpenMapRealVector(Double[] dArr) {
        this(dArr, 1.0E-12d);
    }

    public OpenMapRealVector(Double[] dArr, double d2) {
        this.virtualSize = dArr.length;
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = d2;
        for (int i = 0; i < dArr.length; i++) {
            double dDoubleValue = dArr[i].doubleValue();
            if (!isDefaultValue(dDoubleValue)) {
                this.entries.put(i, dDoubleValue);
            }
        }
    }

    public OpenMapRealVector(OpenMapRealVector openMapRealVector) {
        this.virtualSize = openMapRealVector.getDimension();
        this.entries = new OpenIntToDoubleHashMap(openMapRealVector.getEntries());
        this.epsilon = openMapRealVector.epsilon;
    }

    public OpenMapRealVector(RealVector realVector) {
        this.virtualSize = realVector.getDimension();
        this.entries = new OpenIntToDoubleHashMap(0.0d);
        this.epsilon = 1.0E-12d;
        for (int i = 0; i < this.virtualSize; i++) {
            double entry = realVector.getEntry(i);
            if (!isDefaultValue(entry)) {
                this.entries.put(i, entry);
            }
        }
    }
}
