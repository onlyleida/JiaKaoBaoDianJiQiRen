package org.apache.commons.math3.stat.descriptive.rank;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.apache.commons.math3.analysis.interpolation.LinearInterpolator;
import org.apache.commons.math3.analysis.interpolation.NevilleInterpolator;
import org.apache.commons.math3.analysis.interpolation.UnivariateInterpolator;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class PSquarePercentile extends AbstractStorelessUnivariateStatistic implements StorelessUnivariateStatistic, Serializable {
    private static final DecimalFormat DECIMAL_FORMAT = new DecimalFormat("00.00");
    private static final double DEFAULT_QUANTILE_DESIRED = 50.0d;
    private static final int PSQUARE_CONSTANT = 5;
    private static final long serialVersionUID = 2283912083175715479L;
    private long countOfObservations;
    private final List<Double> initialFive;
    private transient double lastObservation;
    private PSquareMarkers markers;
    private double pValue;
    private final double quantile;

    private static class FixedCapacityList<E> extends ArrayList<E> implements Serializable {
        private static final long serialVersionUID = 2283952083075725479L;
        private final int capacity;

        FixedCapacityList(int i) {
            super(i);
            this.capacity = i;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(E e2) {
            if (size() < this.capacity) {
                return super.add(e2);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection<? extends E> collection) {
            if (collection != null && collection.size() + size() <= this.capacity) {
                return super.addAll(collection);
            }
            return false;
        }
    }

    private static class Markers implements PSquareMarkers, Serializable {
        private static final int HIGH = 4;
        private static final int LOW = 2;
        private static final long serialVersionUID = 1;
        private transient int k;
        private final Marker[] markerArray;

        private void adjustHeightsOfMarkers() {
            for (int i = 2; i <= 4; i++) {
                estimate(i);
            }
        }

        private static Marker[] createMarkerArray(List<Double> list, double d2) {
            int size = list == null ? -1 : list.size();
            if (size < 5) {
                throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(size), 5);
            }
            Collections.sort(list);
            double d3 = d2 * 2.0d;
            return new Marker[]{new Marker(), new Marker(list.get(0).doubleValue(), 1.0d, 0.0d, 1.0d), new Marker(list.get(1).doubleValue(), d3 + 1.0d, d2 / 2.0d, 2.0d), new Marker(list.get(2).doubleValue(), (4.0d * d2) + 1.0d, d2, 3.0d), new Marker(list.get(3).doubleValue(), d3 + 3.0d, (d2 + 1.0d) / 2.0d, 4.0d), new Marker(list.get(4).doubleValue(), 5.0d, 1.0d, 5.0d)};
        }

        private int findCellAndUpdateMinMax(double d2) {
            this.k = -1;
            if (d2 < height(1)) {
                this.markerArray[1].markerHeight = d2;
                this.k = 1;
            } else if (d2 < height(2)) {
                this.k = 1;
            } else if (d2 < height(3)) {
                this.k = 2;
            } else if (d2 < height(4)) {
                this.k = 3;
            } else if (d2 <= height(5)) {
                this.k = 4;
            } else {
                this.markerArray[5].markerHeight = d2;
                this.k = 4;
            }
            return this.k;
        }

        private void incrementPositions(int i, int i2, int i3) {
            while (i2 <= i3) {
                this.markerArray[i2].incrementPosition(i);
                i2++;
            }
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            int i = 1;
            while (i < 5) {
                Marker[] markerArr = this.markerArray;
                int i2 = i + 1;
                markerArr[i].previous(markerArr[i - 1]).next(this.markerArray[i2]).index(i);
                i = i2;
            }
            Marker[] markerArr2 = this.markerArray;
            markerArr2[0].previous(markerArr2[0]).next(this.markerArray[1]).index(0);
            Marker[] markerArr3 = this.markerArray;
            markerArr3[5].previous(markerArr3[4]).next(this.markerArray[5]).index(5);
        }

        private void updateDesiredPositions() {
            int i = 1;
            while (true) {
                Marker[] markerArr = this.markerArray;
                if (i >= markerArr.length) {
                    return;
                }
                markerArr[i].updateDesiredPosition();
                i++;
            }
        }

        @Override // org.apache.commons.math3.stat.descriptive.rank.PSquarePercentile.PSquareMarkers
        public Object clone() {
            return new Markers(new Marker[]{new Marker(), (Marker) this.markerArray[1].clone(), (Marker) this.markerArray[2].clone(), (Marker) this.markerArray[3].clone(), (Marker) this.markerArray[4].clone(), (Marker) this.markerArray[5].clone()});
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Markers)) {
                return false;
            }
            return Arrays.deepEquals(this.markerArray, ((Markers) obj).markerArray);
        }

        @Override // org.apache.commons.math3.stat.descriptive.rank.PSquarePercentile.PSquareMarkers
        public double estimate(int i) {
            if (i < 2 || i > 4) {
                throw new OutOfRangeException(Integer.valueOf(i), 2, 4);
            }
            return this.markerArray[i].estimate();
        }

        @Override // org.apache.commons.math3.stat.descriptive.rank.PSquarePercentile.PSquareMarkers
        public double getPercentileValue() {
            return height(3);
        }

        public int hashCode() {
            return Arrays.deepHashCode(this.markerArray);
        }

        @Override // org.apache.commons.math3.stat.descriptive.rank.PSquarePercentile.PSquareMarkers
        public double height(int i) {
            Marker[] markerArr = this.markerArray;
            if (i >= markerArr.length || i <= 0) {
                throw new OutOfRangeException(Integer.valueOf(i), 1, Integer.valueOf(this.markerArray.length));
            }
            return markerArr[i].markerHeight;
        }

        @Override // org.apache.commons.math3.stat.descriptive.rank.PSquarePercentile.PSquareMarkers
        public double processDataPoint(double d2) {
            incrementPositions(1, findCellAndUpdateMinMax(d2) + 1, 5);
            updateDesiredPositions();
            adjustHeightsOfMarkers();
            return getPercentileValue();
        }

        public String toString() {
            return String.format("m1=[%s],m2=[%s],m3=[%s],m4=[%s],m5=[%s]", this.markerArray[1].toString(), this.markerArray[2].toString(), this.markerArray[3].toString(), this.markerArray[4].toString(), this.markerArray[5].toString());
        }

        private Markers(Marker[] markerArr) {
            this.k = -1;
            MathUtils.checkNotNull(markerArr);
            this.markerArray = markerArr;
            int i = 1;
            while (i < 5) {
                Marker[] markerArr2 = this.markerArray;
                int i2 = i + 1;
                markerArr2[i].previous(markerArr2[i - 1]).next(this.markerArray[i2]).index(i);
                i = i2;
            }
            Marker[] markerArr3 = this.markerArray;
            markerArr3[0].previous(markerArr3[0]).next(this.markerArray[1]).index(0);
            Marker[] markerArr4 = this.markerArray;
            markerArr4[5].previous(markerArr4[4]).next(this.markerArray[5]).index(5);
        }

        private Markers(List<Double> list, double d2) {
            this(createMarkerArray(list, d2));
        }
    }

    protected interface PSquareMarkers extends Cloneable {
        Object clone();

        double estimate(int i);

        double getPercentileValue();

        double height(int i);

        double processDataPoint(double d2);
    }

    public PSquarePercentile(double d2) {
        this.initialFive = new FixedCapacityList(5);
        this.markers = null;
        this.pValue = Double.NaN;
        if (d2 > 100.0d || d2 < 0.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE, Double.valueOf(d2), 0, 100);
        }
        this.quantile = d2 / 100.0d;
    }

    private double maximum() {
        PSquareMarkers pSquareMarkers = this.markers;
        if (pSquareMarkers != null) {
            return pSquareMarkers.height(5);
        }
        if (this.initialFive.isEmpty()) {
            return Double.NaN;
        }
        List<Double> list = this.initialFive;
        return list.get(list.size() - 1).doubleValue();
    }

    private double minimum() {
        PSquareMarkers pSquareMarkers = this.markers;
        if (pSquareMarkers != null) {
            return pSquareMarkers.height(1);
        }
        if (this.initialFive.isEmpty()) {
            return Double.NaN;
        }
        return this.initialFive.get(0).doubleValue();
    }

    public static PSquareMarkers newMarkers(List<Double> list, double d2) {
        return new Markers(list, d2);
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        this.markers = null;
        this.initialFive.clear();
        this.countOfObservations = 0L;
        this.pValue = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof PSquarePercentile)) {
            PSquarePercentile pSquarePercentile = (PSquarePercentile) obj;
            PSquareMarkers pSquareMarkers = this.markers;
            boolean z = (pSquareMarkers == null || pSquarePercentile.markers == null) ? false : true;
            boolean zEquals = pSquareMarkers == null && pSquarePercentile.markers == null;
            if (z) {
                zEquals = pSquareMarkers.equals(pSquarePercentile.markers);
            }
            if (zEquals && getN() == pSquarePercentile.getN()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public long getN() {
        return this.countOfObservations;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        if (Double.compare(this.quantile, 1.0d) == 0) {
            this.pValue = maximum();
        } else if (Double.compare(this.quantile, 0.0d) == 0) {
            this.pValue = minimum();
        }
        return this.pValue;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic
    public int hashCode() {
        double result = getResult();
        if (Double.isNaN(result)) {
            result = 37.0d;
        }
        PSquareMarkers pSquareMarkers = this.markers;
        return Arrays.hashCode(new double[]{result, this.quantile, pSquareMarkers == null ? 0.0d : pSquareMarkers.hashCode(), this.countOfObservations});
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d2) {
        this.countOfObservations++;
        this.lastObservation = d2;
        if (this.markers == null) {
            if (this.initialFive.add(Double.valueOf(d2))) {
                Collections.sort(this.initialFive);
                List<Double> list = this.initialFive;
                this.pValue = list.get((int) (this.quantile * ((double) (list.size() - 1)))).doubleValue();
                return;
            }
            this.markers = newMarkers(this.initialFive, this.quantile);
        }
        this.pValue = this.markers.processDataPoint(d2);
    }

    public double quantile() {
        return this.quantile;
    }

    public String toString() {
        if (this.markers != null) {
            return String.format("obs=%s markers=%s", DECIMAL_FORMAT.format(this.lastObservation), this.markers.toString());
        }
        DecimalFormat decimalFormat = DECIMAL_FORMAT;
        return String.format("obs=%s pValue=%s", decimalFormat.format(this.lastObservation), decimalFormat.format(this.pValue));
    }

    private static class Marker implements Serializable, Cloneable {
        private static final long serialVersionUID = -3575879478288538431L;
        private double desiredMarkerIncrement;
        private double desiredMarkerPosition;
        private int index;
        private double intMarkerPosition;
        private transient UnivariateInterpolator linear;
        private double markerHeight;
        private transient Marker next;
        private final UnivariateInterpolator nonLinear;
        private transient Marker previous;

        private double difference() {
            return this.desiredMarkerPosition - this.intMarkerPosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public double estimate() {
            double dDifference = difference();
            Marker marker = this.next;
            double d2 = marker.intMarkerPosition;
            double d3 = this.intMarkerPosition;
            boolean z = d2 - d3 > 1.0d;
            Marker marker2 = this.previous;
            double d4 = marker2.intMarkerPosition;
            boolean z2 = d4 - d3 < -1.0d;
            if ((dDifference >= 1.0d && z) || (dDifference <= -1.0d && z2)) {
                int i = dDifference >= 0.0d ? 1 : -1;
                double[] dArr = {d4, d3, d2};
                double[] dArr2 = {marker2.markerHeight, this.markerHeight, marker.markerHeight};
                double d5 = d3 + ((double) i);
                double dValue = this.nonLinear.interpolate(dArr, dArr2).value(d5);
                this.markerHeight = dValue;
                if (isEstimateBad(dArr2, dValue)) {
                    int i2 = (d5 - dArr[1] > 0.0d ? 1 : -1) + 1;
                    double[] dArr3 = {dArr[1], dArr[i2]};
                    double[] dArr4 = {dArr2[1], dArr2[i2]};
                    MathArrays.sortInPlace(dArr3, dArr4);
                    this.markerHeight = this.linear.interpolate(dArr3, dArr4).value(d5);
                }
                incrementPosition(i);
            }
            return this.markerHeight;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void incrementPosition(int i) {
            this.intMarkerPosition += (double) i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Marker index(int i) {
            this.index = i;
            return this;
        }

        private boolean isEstimateBad(double[] dArr, double d2) {
            return d2 <= dArr[0] || d2 >= dArr[2];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Marker next(Marker marker) {
            MathUtils.checkNotNull(marker);
            this.next = marker;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Marker previous(Marker marker) {
            MathUtils.checkNotNull(marker);
            this.previous = marker;
            return this;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.next = this;
            this.previous = this;
            this.linear = new LinearInterpolator();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateDesiredPosition() {
            this.desiredMarkerPosition += this.desiredMarkerIncrement;
        }

        public Object clone() {
            return new Marker(this.markerHeight, this.desiredMarkerPosition, this.desiredMarkerIncrement, this.intMarkerPosition);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Marker)) {
                Marker marker = (Marker) obj;
                if ((((((Double.compare(this.markerHeight, marker.markerHeight) == 0) && Double.compare(this.intMarkerPosition, marker.intMarkerPosition) == 0) && Double.compare(this.desiredMarkerPosition, marker.desiredMarkerPosition) == 0) && Double.compare(this.desiredMarkerIncrement, marker.desiredMarkerIncrement) == 0) && this.next.index == marker.next.index) && this.previous.index == marker.previous.index) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(new double[]{this.markerHeight, this.intMarkerPosition, this.desiredMarkerIncrement, this.desiredMarkerPosition, this.previous.index, this.next.index});
        }

        public String toString() {
            return String.format("index=%.0f,n=%.0f,np=%.2f,q=%.2f,dn=%.2f,prev=%d,next=%d", Double.valueOf(this.index), Double.valueOf(Precision.round(this.intMarkerPosition, 0)), Double.valueOf(Precision.round(this.desiredMarkerPosition, 2)), Double.valueOf(Precision.round(this.markerHeight, 2)), Double.valueOf(Precision.round(this.desiredMarkerIncrement, 2)), Integer.valueOf(this.previous.index), Integer.valueOf(this.next.index));
        }

        private Marker() {
            this.nonLinear = new NevilleInterpolator();
            this.linear = new LinearInterpolator();
            this.previous = this;
            this.next = this;
        }

        private Marker(double d2, double d3, double d4, double d5) {
            this();
            this.markerHeight = d2;
            this.desiredMarkerPosition = d3;
            this.desiredMarkerIncrement = d4;
            this.intMarkerPosition = d5;
        }
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public StorelessUnivariateStatistic copy() {
        PSquarePercentile pSquarePercentile = new PSquarePercentile(this.quantile * 100.0d);
        PSquareMarkers pSquareMarkers = this.markers;
        if (pSquareMarkers != null) {
            pSquarePercentile.markers = (PSquareMarkers) pSquareMarkers.clone();
        }
        pSquarePercentile.countOfObservations = this.countOfObservations;
        pSquarePercentile.pValue = this.pValue;
        pSquarePercentile.initialFive.clear();
        pSquarePercentile.initialFive.addAll(this.initialFive);
        return pSquarePercentile;
    }

    PSquarePercentile() {
        this(DEFAULT_QUANTILE_DESIRED);
    }
}
