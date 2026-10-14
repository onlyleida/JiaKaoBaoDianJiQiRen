package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class BOBYQAOptimizer extends BaseAbstractMultivariateSimpleBoundsOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    public static final double DEFAULT_INITIAL_RADIUS = 10.0d;
    public static final double DEFAULT_STOPPING_RADIUS = 1.0E-8d;
    private static final double HALF = 0.5d;
    public static final int MINIMUM_PROBLEM_DIMENSION = 2;
    private static final double MINUS_ONE = -1.0d;
    private static final double ONE = 1.0d;
    private static final double ONE_OVER_A_THOUSAND = 0.001d;
    private static final double ONE_OVER_EIGHT = 0.125d;
    private static final double ONE_OVER_FOUR = 0.25d;
    private static final double ONE_OVER_TEN = 0.1d;
    private static final double SIXTEEN = 16.0d;
    private static final double TEN = 10.0d;
    private static final double TWO = 2.0d;
    private static final double TWO_HUNDRED_FIFTY = 250.0d;
    private static final double ZERO = 0.0d;
    private ArrayRealVector alternativeNewPoint;
    private Array2DRowRealMatrix bMatrix;
    private double[] boundDifference;
    private ArrayRealVector currentBest;
    private ArrayRealVector fAtInterpolationPoints;
    private ArrayRealVector gradientAtTrustRegionCenter;
    private double initialTrustRegionRadius;
    private Array2DRowRealMatrix interpolationPoints;
    private boolean isMinimize;
    private ArrayRealVector lagrangeValuesAtNewPoint;
    private ArrayRealVector lowerDifference;
    private ArrayRealVector modelSecondDerivativesParameters;
    private ArrayRealVector modelSecondDerivativesValues;
    private ArrayRealVector newPoint;
    private final int numberOfInterpolationPoints;
    private ArrayRealVector originShift;
    private final double stoppingTrustRegionRadius;
    private ArrayRealVector trialStepPoint;
    private int trustRegionCenterInterpolationPointIndex;
    private ArrayRealVector trustRegionCenterOffset;
    private ArrayRealVector upperDifference;
    private Array2DRowRealMatrix zMatrix;

    private static class PathIsExploredException extends RuntimeException {
        private static final String PATH_IS_EXPLORED = "If this exception is thrown, just remove it from the code";
        private static final long serialVersionUID = 745350979634801853L;

        PathIsExploredException() {
            super("If this exception is thrown, just remove it from the code " + BOBYQAOptimizer.caller(3));
        }
    }

    public BOBYQAOptimizer(int i) {
        this(i, 10.0d, 1.0E-8d);
    }

    private double[] altmov(int i, double d2) {
        int i2;
        double d3;
        double d4;
        double d5;
        double d6;
        int i3;
        double d7;
        double d8;
        ArrayRealVector arrayRealVector;
        ArrayRealVector arrayRealVector2;
        int i4;
        ArrayRealVector arrayRealVector3;
        double d9;
        double d10;
        int i5;
        BOBYQAOptimizer bOBYQAOptimizer = this;
        printMethod();
        int dimension = bOBYQAOptimizer.currentBest.getDimension();
        int i6 = bOBYQAOptimizer.numberOfInterpolationPoints;
        ArrayRealVector arrayRealVector4 = new ArrayRealVector(dimension);
        ArrayRealVector arrayRealVector5 = new ArrayRealVector(i6);
        ArrayRealVector arrayRealVector6 = new ArrayRealVector(dimension);
        ArrayRealVector arrayRealVector7 = new ArrayRealVector(dimension);
        for (int i7 = 0; i7 < i6; i7++) {
            arrayRealVector5.setEntry(i7, 0.0d);
        }
        int i8 = (i6 - dimension) - 1;
        for (int i9 = 0; i9 < i8; i9++) {
            double entry = bOBYQAOptimizer.zMatrix.getEntry(i, i9);
            for (int i10 = 0; i10 < i6; i10++) {
                arrayRealVector5.setEntry(i10, arrayRealVector5.getEntry(i10) + (bOBYQAOptimizer.zMatrix.getEntry(i10, i9) * entry));
            }
        }
        double entry2 = arrayRealVector5.getEntry(i);
        double d11 = entry2 * HALF;
        for (int i11 = 0; i11 < dimension; i11++) {
            arrayRealVector4.setEntry(i11, bOBYQAOptimizer.bMatrix.getEntry(i, i11));
        }
        int i12 = 0;
        while (i12 < i6) {
            int i13 = 0;
            double entry3 = 0.0d;
            while (i13 < dimension) {
                entry3 += bOBYQAOptimizer.interpolationPoints.getEntry(i12, i13) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i13);
                i13++;
                arrayRealVector7 = arrayRealVector7;
            }
            ArrayRealVector arrayRealVector8 = arrayRealVector7;
            double entry4 = entry3 * arrayRealVector5.getEntry(i12);
            int i14 = 0;
            while (i14 < dimension) {
                arrayRealVector4.setEntry(i14, arrayRealVector4.getEntry(i14) + (bOBYQAOptimizer.interpolationPoints.getEntry(i12, i14) * entry4));
                i14++;
                entry4 = entry4;
            }
            i12++;
            arrayRealVector7 = arrayRealVector8;
        }
        ArrayRealVector arrayRealVector9 = arrayRealVector7;
        double d12 = Double.NaN;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        double d13 = 0.0d;
        double d14 = 0.0d;
        while (i15 < i6) {
            if (i15 == bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex) {
                i4 = i6;
                arrayRealVector3 = arrayRealVector4;
                arrayRealVector = arrayRealVector5;
                arrayRealVector2 = arrayRealVector6;
                d8 = entry2;
            } else {
                double d15 = 0.0d;
                double entry5 = 0.0d;
                for (int i18 = 0; i18 < dimension; i18++) {
                    double entry6 = bOBYQAOptimizer.interpolationPoints.getEntry(i15, i18) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i18);
                    entry5 += arrayRealVector4.getEntry(i18) * entry6;
                    d15 += entry6 * entry6;
                }
                double dSqrt = d2 / FastMath.sqrt(d15);
                d8 = entry2;
                arrayRealVector = arrayRealVector5;
                arrayRealVector2 = arrayRealVector6;
                double dMin = FastMath.min(1.0d, dSqrt);
                double entry7 = -dSqrt;
                int i19 = 0;
                int i20 = 0;
                i4 = i6;
                int i21 = 0;
                while (i21 < dimension) {
                    ArrayRealVector arrayRealVector10 = arrayRealVector4;
                    double entry8 = bOBYQAOptimizer.interpolationPoints.getEntry(i15, i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21);
                    if (entry8 > 0.0d) {
                        if (entry7 * entry8 < bOBYQAOptimizer.lowerDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) {
                            entry7 = (bOBYQAOptimizer.lowerDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) / entry8;
                            i19 = (-i21) - 1;
                        }
                        if (dSqrt * entry8 > bOBYQAOptimizer.upperDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) {
                            dSqrt = FastMath.max(dMin, (bOBYQAOptimizer.upperDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) / entry8);
                            i5 = i21 + 1;
                            i20 = i5;
                        }
                    } else if (entry8 < 0.0d) {
                        if (entry7 * entry8 > bOBYQAOptimizer.upperDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) {
                            entry7 = (bOBYQAOptimizer.upperDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) / entry8;
                            i19 = i21 + 1;
                        }
                        if (dSqrt * entry8 < bOBYQAOptimizer.lowerDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) {
                            dSqrt = FastMath.max(dMin, (bOBYQAOptimizer.lowerDifference.getEntry(i21) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i21)) / entry8);
                            i5 = (-i21) - 1;
                            i20 = i5;
                        }
                    }
                    i21++;
                    arrayRealVector4 = arrayRealVector10;
                }
                arrayRealVector3 = arrayRealVector4;
                if (i15 == i) {
                    double d16 = entry5 - 1.0d;
                    double d17 = entry7 * d16;
                    d10 = (entry5 - d17) * entry7;
                    double d18 = dSqrt * d16;
                    double d19 = (entry5 - d18) * dSqrt;
                    if (FastMath.abs(d19) > FastMath.abs(d10)) {
                        entry7 = dSqrt;
                        i19 = i20;
                        d10 = d19;
                    }
                    double d20 = entry5 * HALF;
                    if ((d20 - d17) * (d20 - d18) < 0.0d) {
                        double d21 = (d20 * d20) / d16;
                        if (FastMath.abs(d21) > FastMath.abs(d10)) {
                            entry7 = d20 / d16;
                            d10 = d21;
                            i19 = 0;
                        }
                    }
                } else {
                    double d22 = (1.0d - entry7) * entry7;
                    double d23 = (1.0d - dSqrt) * dSqrt;
                    if (FastMath.abs(d23) > FastMath.abs(d22)) {
                        entry7 = dSqrt;
                        i19 = i20;
                        d22 = d23;
                    }
                    if (dSqrt <= HALF || FastMath.abs(d22) >= ONE_OVER_FOUR) {
                        d9 = entry7;
                    } else {
                        d22 = 0.25d;
                        d9 = HALF;
                        i19 = 0;
                    }
                    d10 = d22 * entry5;
                    entry7 = d9;
                }
                double d24 = (1.0d - entry7) * entry7 * d15;
                double d25 = d10 * d10;
                double d26 = d25 * (d25 + (d11 * d24 * d24));
                if (d26 > d14) {
                    i16 = i15;
                    d13 = entry7;
                    d12 = d13;
                    i17 = i19;
                    d14 = d26;
                } else {
                    d12 = entry7;
                }
            }
            i15++;
            arrayRealVector5 = arrayRealVector;
            entry2 = d8;
            i6 = i4;
            arrayRealVector6 = arrayRealVector2;
            arrayRealVector4 = arrayRealVector3;
        }
        int i22 = i6;
        ArrayRealVector arrayRealVector11 = arrayRealVector4;
        ArrayRealVector arrayRealVector12 = arrayRealVector5;
        ArrayRealVector arrayRealVector13 = arrayRealVector6;
        double d27 = entry2;
        for (int i23 = 0; i23 < dimension; i23++) {
            bOBYQAOptimizer.newPoint.setEntry(i23, FastMath.max(bOBYQAOptimizer.lowerDifference.getEntry(i23), FastMath.min(bOBYQAOptimizer.upperDifference.getEntry(i23), bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i23) + ((bOBYQAOptimizer.interpolationPoints.getEntry(i16, i23) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i23)) * d13))));
        }
        if (i17 < 0) {
            i2 = 1;
            int i24 = (-i17) - 1;
            bOBYQAOptimizer.newPoint.setEntry(i24, bOBYQAOptimizer.lowerDifference.getEntry(i24));
        } else {
            i2 = 1;
        }
        if (i17 > 0) {
            int i25 = i17 - i2;
            bOBYQAOptimizer.newPoint.setEntry(i25, bOBYQAOptimizer.upperDifference.getEntry(i25));
        }
        double d28 = d2 + d2;
        double d29 = d12;
        boolean z = false;
        double d30 = 0.0d;
        while (true) {
            int i26 = 0;
            double d31 = 0.0d;
            while (i26 < dimension) {
                ArrayRealVector arrayRealVector14 = arrayRealVector11;
                double entry9 = arrayRealVector14.getEntry(i26);
                double d32 = d29;
                ArrayRealVector arrayRealVector15 = arrayRealVector13;
                arrayRealVector15.setEntry(i26, 0.0d);
                double d33 = d30;
                if (FastMath.min(bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i26) - bOBYQAOptimizer.lowerDifference.getEntry(i26), entry9) > 0.0d || FastMath.max(bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i26) - bOBYQAOptimizer.upperDifference.getEntry(i26), entry9) < 0.0d) {
                    arrayRealVector15.setEntry(i26, d28);
                    d31 += entry9 * entry9;
                }
                i26++;
                arrayRealVector11 = arrayRealVector14;
                arrayRealVector13 = arrayRealVector15;
                d29 = d32;
                d30 = d33;
            }
            double d34 = d30;
            double d35 = d29;
            arrayRealVector13 = arrayRealVector13;
            ArrayRealVector arrayRealVector16 = arrayRealVector11;
            if (d31 == 0.0d) {
                return new double[]{d27, 0.0d};
            }
            double d36 = (d2 * d2) - 0.0d;
            if (d36 > 0.0d) {
                double dSqrt2 = FastMath.sqrt(d36 / d31);
                for (int i27 = 0; i27 < dimension; i27++) {
                    if (arrayRealVector13.getEntry(i27) == d28) {
                        double entry10 = bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i27) - (arrayRealVector16.getEntry(i27) * dSqrt2);
                        if (entry10 <= bOBYQAOptimizer.lowerDifference.getEntry(i27)) {
                            arrayRealVector13.setEntry(i27, bOBYQAOptimizer.lowerDifference.getEntry(i27) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i27));
                            arrayRealVector13.getEntry(i27);
                        } else if (entry10 >= bOBYQAOptimizer.upperDifference.getEntry(i27)) {
                            arrayRealVector13.setEntry(i27, bOBYQAOptimizer.upperDifference.getEntry(i27) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i27));
                            arrayRealVector13.getEntry(i27);
                        } else {
                            arrayRealVector16.getEntry(i27);
                        }
                    }
                }
                d3 = dSqrt2;
            } else {
                d3 = d35;
            }
            int i28 = 0;
            double entry11 = 0.0d;
            while (i28 < dimension) {
                double entry12 = arrayRealVector16.getEntry(i28);
                if (arrayRealVector13.getEntry(i28) == d28) {
                    d6 = d28;
                    arrayRealVector13.setEntry(i28, (-d3) * entry12);
                    i3 = i28;
                    d7 = d3;
                    bOBYQAOptimizer.alternativeNewPoint.setEntry(i3, FastMath.max(bOBYQAOptimizer.lowerDifference.getEntry(i3), FastMath.min(bOBYQAOptimizer.upperDifference.getEntry(i28), bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i28) + arrayRealVector13.getEntry(i28))));
                } else {
                    d6 = d28;
                    i3 = i28;
                    d7 = d3;
                    if (arrayRealVector13.getEntry(i3) == 0.0d) {
                        bOBYQAOptimizer.alternativeNewPoint.setEntry(i3, bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i3));
                    } else if (entry12 > 0.0d) {
                        bOBYQAOptimizer.alternativeNewPoint.setEntry(i3, bOBYQAOptimizer.lowerDifference.getEntry(i3));
                    } else {
                        bOBYQAOptimizer.alternativeNewPoint.setEntry(i3, bOBYQAOptimizer.upperDifference.getEntry(i3));
                    }
                }
                entry11 += entry12 * arrayRealVector13.getEntry(i3);
                i28 = i3 + 1;
                d28 = d6;
                d3 = d7;
            }
            double d37 = d28;
            double d38 = d3;
            double entry13 = 0.0d;
            i22 = i22;
            for (int i29 = 0; i29 < i22; i29++) {
                double entry14 = 0.0d;
                for (int i30 = 0; i30 < dimension; i30++) {
                    entry14 += bOBYQAOptimizer.interpolationPoints.getEntry(i29, i30) * arrayRealVector13.getEntry(i30);
                }
                entry13 += arrayRealVector12.getEntry(i29) * entry14 * entry14;
            }
            ArrayRealVector arrayRealVector17 = arrayRealVector12;
            if (z) {
                entry13 = -entry13;
            }
            double d39 = -entry11;
            if (entry13 <= d39 || entry13 >= (FastMath.sqrt(TWO) + 1.0d) * d39) {
                double d40 = HALF;
                d4 = entry11 + (entry13 * d40);
            } else {
                double d41 = d39 / entry13;
                int i31 = 0;
                while (i31 < dimension) {
                    bOBYQAOptimizer.alternativeNewPoint.setEntry(i31, FastMath.max(bOBYQAOptimizer.lowerDifference.getEntry(i31), FastMath.min(bOBYQAOptimizer.upperDifference.getEntry(i31), bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i31) + (arrayRealVector13.getEntry(i31) * d41))));
                    i31++;
                    bOBYQAOptimizer = this;
                    z = z;
                    i22 = i22;
                    arrayRealVector13 = arrayRealVector13;
                }
                z = z;
                i22 = i22;
                arrayRealVector13 = arrayRealVector13;
                d4 = entry11 * HALF * d41;
            }
            double d42 = d4 * d4;
            if (z) {
                if (d34 > d42) {
                    for (int i32 = 0; i32 < dimension; i32++) {
                        this.alternativeNewPoint.setEntry(i32, arrayRealVector9.getEntry(i32));
                    }
                    d5 = d34;
                } else {
                    d5 = d42;
                }
                return new double[]{d27, d5};
            }
            for (int i33 = 0; i33 < dimension; i33++) {
                arrayRealVector16.setEntry(i33, -arrayRealVector16.getEntry(i33));
                arrayRealVector9.setEntry(i33, this.alternativeNewPoint.getEntry(i33));
            }
            bOBYQAOptimizer = this;
            d30 = d42;
            arrayRealVector12 = arrayRealVector17;
            arrayRealVector11 = arrayRealVector16;
            d28 = d37;
            d29 = d38;
            z = true;
        }
    }

    private double bobyqa(double[] dArr, double[] dArr2) {
        printMethod();
        int dimension = this.currentBest.getDimension();
        for (int i = 0; i < dimension; i++) {
            double d2 = this.boundDifference[i];
            this.lowerDifference.setEntry(i, dArr[i] - this.currentBest.getEntry(i));
            this.upperDifference.setEntry(i, dArr2[i] - this.currentBest.getEntry(i));
            if (this.lowerDifference.getEntry(i) >= (-this.initialTrustRegionRadius)) {
                if (this.lowerDifference.getEntry(i) >= 0.0d) {
                    this.currentBest.setEntry(i, dArr[i]);
                    this.lowerDifference.setEntry(i, 0.0d);
                    this.upperDifference.setEntry(i, d2);
                } else {
                    this.currentBest.setEntry(i, dArr[i] + this.initialTrustRegionRadius);
                    this.lowerDifference.setEntry(i, -this.initialTrustRegionRadius);
                    this.upperDifference.setEntry(i, FastMath.max(dArr2[i] - this.currentBest.getEntry(i), this.initialTrustRegionRadius));
                }
            } else if (this.upperDifference.getEntry(i) <= this.initialTrustRegionRadius) {
                if (this.upperDifference.getEntry(i) <= 0.0d) {
                    this.currentBest.setEntry(i, dArr2[i]);
                    this.lowerDifference.setEntry(i, -d2);
                    this.upperDifference.setEntry(i, 0.0d);
                } else {
                    this.currentBest.setEntry(i, dArr2[i] - this.initialTrustRegionRadius);
                    this.lowerDifference.setEntry(i, FastMath.min(dArr[i] - this.currentBest.getEntry(i), -this.initialTrustRegionRadius));
                    this.upperDifference.setEntry(i, this.initialTrustRegionRadius);
                }
            }
        }
        return bobyqb(dArr, dArr2);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0436  */
    /* JADX WARN: Code duplicated, block: B:107:0x0448  */
    /* JADX WARN: Code duplicated, block: B:109:0x045a  */
    /* JADX WARN: Code duplicated, block: B:114:0x047a A[LOOP:31: B:113:0x0478->B:114:0x047a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:117:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:120:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:122:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:124:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:126:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:128:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:129:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:132:0x04de  */
    /* JADX WARN: Code duplicated, block: B:135:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:137:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:139:0x04fd A[LOOP:33: B:138:0x04fb->B:139:0x04fd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:142:0x0521 A[LOOP:34: B:141:0x051f->B:142:0x0521, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:145:0x0548  */
    /* JADX WARN: Code duplicated, block: B:149:0x056c  */
    /* JADX WARN: Code duplicated, block: B:150:0x0571  */
    /* JADX WARN: Code duplicated, block: B:151:0x0577  */
    /* JADX WARN: Code duplicated, block: B:155:0x0593  */
    /* JADX WARN: Code duplicated, block: B:158:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:160:0x05d6 A[LOOP:36: B:159:0x05d4->B:160:0x05d6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:164:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:166:0x0607 A[LOOP:38: B:165:0x0605->B:166:0x0607, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:170:0x062c A[LOOP:39: B:169:0x062a->B:170:0x062c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:173:0x064a  */
    /* JADX WARN: Code duplicated, block: B:175:0x064f A[LOOP:41: B:174:0x064d->B:175:0x064f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:178:0x0667 A[LOOP:42: B:177:0x0665->B:178:0x0667, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x067f A[LOOP:43: B:180:0x067d->B:181:0x067f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:185:0x069d A[LOOP:44: B:184:0x069b->B:185:0x069d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:188:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:190:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:192:0x06d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:193:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:194:0x06f3  */
    /* JADX WARN: Code duplicated, block: B:199:0x071f  */
    /* JADX WARN: Code duplicated, block: B:201:0x0724 A[LOOP:48: B:200:0x0722->B:201:0x0724, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:204:0x0742 A[LOOP:49: B:203:0x0740->B:204:0x0742, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:207:0x0766  */
    /* JADX WARN: Code duplicated, block: B:209:0x0769  */
    /* JADX WARN: Code duplicated, block: B:211:0x076c A[LOOP:50: B:210:0x076a->B:211:0x076c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:214:0x078f  */
    /* JADX WARN: Code duplicated, block: B:216:0x0794 A[LOOP:52: B:215:0x0792->B:216:0x0794, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:219:0x07aa A[LOOP:53: B:218:0x07a8->B:219:0x07aa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:223:0x07c8  */
    /* JADX WARN: Code duplicated, block: B:225:0x07cd A[LOOP:55: B:224:0x07cb->B:225:0x07cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:229:0x080a  */
    /* JADX WARN: Code duplicated, block: B:231:0x0811 A[LOOP:57: B:230:0x080f->B:231:0x0811, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:234:0x0844  */
    /* JADX WARN: Code duplicated, block: B:235:0x085d  */
    /* JADX WARN: Code duplicated, block: B:237:0x086f  */
    /* JADX WARN: Code duplicated, block: B:238:0x0885  */
    /* JADX WARN: Code duplicated, block: B:243:0x08b0  */
    /* JADX WARN: Code duplicated, block: B:246:0x08b6  */
    /* JADX WARN: Code duplicated, block: B:248:0x08be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:249:0x08c0  */
    /* JADX WARN: Code duplicated, block: B:251:0x08cf  */
    /* JADX WARN: Code duplicated, block: B:253:0x08da  */
    /* JADX WARN: Code duplicated, block: B:256:0x08e8  */
    /* JADX WARN: Code duplicated, block: B:257:0x08eb  */
    /* JADX WARN: Code duplicated, block: B:260:0x0920  */
    /* JADX WARN: Code duplicated, block: B:266:0x094f  */
    /* JADX WARN: Code duplicated, block: B:268:0x0954 A[LOOP:60: B:267:0x0952->B:268:0x0954, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:271:0x096f  */
    /* JADX WARN: Code duplicated, block: B:276:0x0981  */
    /* JADX WARN: Code duplicated, block: B:278:0x098f  */
    /* JADX WARN: Code duplicated, block: B:279:0x0991  */
    /* JADX WARN: Code duplicated, block: B:281:0x09af  */
    /* JADX WARN: Code duplicated, block: B:284:0x09c0  */
    /* JADX WARN: Code duplicated, block: B:288:0x09d4  */
    /* JADX WARN: Code duplicated, block: B:291:0x09e7  */
    /* JADX WARN: Code duplicated, block: B:297:0x09ff  */
    /* JADX WARN: Code duplicated, block: B:299:0x0a08  */
    /* JADX WARN: Code duplicated, block: B:300:0x0a11  */
    /* JADX WARN: Code duplicated, block: B:304:0x0a34  */
    /* JADX WARN: Code duplicated, block: B:378:0x0d59  */
    /* JADX WARN: Code duplicated, block: B:381:0x0d64  */
    /* JADX WARN: Code duplicated, block: B:383:0x0d75 A[LOOP:5: B:382:0x0d73->B:383:0x0d75, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:386:0x0d9d  */
    /* JADX WARN: Code duplicated, block: B:388:0x0dc4 A[LOOP:7: B:387:0x0dc2->B:388:0x0dc4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:393:0x0e0c  */
    /* JADX WARN: Code duplicated, block: B:395:0x0e13 A[LOOP:9: B:394:0x0e11->B:395:0x0e13, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:398:0x0e43  */
    /* JADX WARN: Code duplicated, block: B:400:0x0e56 A[LOOP:11: B:399:0x0e54->B:400:0x0e56, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:403:0x0e6f A[LOOP:12: B:402:0x0e6d->B:403:0x0e6f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:407:0x0e95  */
    /* JADX WARN: Code duplicated, block: B:409:0x0e9e A[LOOP:14: B:408:0x0e9c->B:409:0x0e9e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:414:0x0ec3  */
    /* JADX WARN: Code duplicated, block: B:416:0x0ed3 A[LOOP:16: B:415:0x0ed1->B:416:0x0ed3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:419:0x0eff A[LOOP:17: B:418:0x0efd->B:419:0x0eff, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:423:0x0f3a A[LOOP:18: B:422:0x0f38->B:423:0x0f3a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:425:0x0f89  */
    /* JADX WARN: Code duplicated, block: B:427:0x0f93  */
    /* JADX WARN: Code duplicated, block: B:428:0x0faa  */
    /* JADX WARN: Code duplicated, block: B:437:0x0408 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:438:0x057f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:439:0x08f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:440:0x08f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:441:0x097a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:442:0x09b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:443:0x09c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:444:0x09de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:445:0x0a31 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:446:0x09f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:447:0x00b3 A[EDGE_INSN: B:447:0x00b3->B:23:0x00b3 BREAK  A[LOOP:1: B:6:0x0081->B:463:0x0081], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:449:0x0929 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:450:0x0428 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:503:0x03f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:507:0x045c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:511:0x054d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:543:0x08e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x0973 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:92:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:95:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:99:0x0403  */
    private double bobyqb(double[] dArr, double[] dArr2) {
        double d2;
        int i;
        double d3;
        int i2;
        int i3;
        double d4;
        int i4;
        double entry;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        double d5;
        double entry2;
        int i12;
        int i13;
        int i14;
        int i15;
        double entry3;
        int i16;
        double entry4;
        int i17;
        int i18;
        double entry5;
        int i19;
        double d6;
        int i20;
        int i21;
        int i22;
        double d7;
        ArrayRealVector arrayRealVector;
        double entry6;
        int i23;
        int i24;
        ArrayRealVector arrayRealVector2;
        double d8;
        ArrayRealVector arrayRealVector3;
        int i25;
        int i26;
        double d9;
        double d10;
        double dSqrt;
        double d11;
        int i27;
        int i28;
        double dSqrt2;
        double dMin;
        int i29;
        double d12;
        int i30;
        ArrayRealVector arrayRealVector4;
        double d13;
        ArrayRealVector arrayRealVector5;
        int i31;
        int i32;
        int i33;
        double dComputeObjectiveValue;
        double d14;
        double entry7;
        double entry8;
        int i34;
        int i35;
        int i36;
        double entry9;
        int i37;
        ArrayRealVector arrayRealVector6;
        double d15;
        double d16;
        double dAbs;
        double d17;
        double d18;
        double d19;
        int i38;
        double d20;
        double d21;
        double entry10;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        ArrayRealVector arrayRealVector7;
        int i44;
        int i45;
        int i46;
        int i47;
        double d22;
        int i48;
        ArrayRealVector arrayRealVector8;
        int i49;
        int i50;
        double d23;
        double d24;
        int i51;
        int i52;
        int iMax;
        int i53;
        int i54;
        double entry11;
        int i55;
        double d25;
        int i56;
        double entry12;
        int i57;
        double entry13;
        int i58;
        int i59;
        double d26;
        int i60;
        int i61;
        int i62;
        double entry14;
        double entry15;
        int i63;
        int i64;
        int i65;
        double entry16;
        int i66;
        double entry17;
        double d27;
        int i67;
        double entry18;
        int i68;
        double entry19;
        int i69;
        double d28;
        double dMax;
        double d29;
        double dMax2;
        double d30;
        double d31;
        int i70;
        int i71;
        double d32;
        double d33;
        int i72;
        int i73;
        double d34;
        double d35;
        int i74;
        double d36;
        int i75;
        double entry20;
        BOBYQAOptimizer bOBYQAOptimizer = this;
        printMethod();
        int dimension = bOBYQAOptimizer.currentBest.getDimension();
        int i76 = bOBYQAOptimizer.numberOfInterpolationPoints;
        int i77 = dimension + 1;
        int i78 = i76 - i77;
        int i79 = (i77 * dimension) / 2;
        ArrayRealVector arrayRealVector9 = new ArrayRealVector(dimension);
        ArrayRealVector arrayRealVector10 = new ArrayRealVector(i76);
        ArrayRealVector arrayRealVector11 = new ArrayRealVector(i76);
        bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex = 0;
        prelim(dArr, dArr2);
        double d37 = 0.0d;
        for (int i80 = 0; i80 < dimension; i80++) {
            bOBYQAOptimizer.trustRegionCenterOffset.setEntry(i80, bOBYQAOptimizer.interpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex, i80));
            double entry21 = bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i80);
            d37 += entry21 * entry21;
        }
        double entry22 = bOBYQAOptimizer.fAtInterpolationPoints.getEntry(0);
        int evaluations = getEvaluations();
        double d38 = bOBYQAOptimizer.initialTrustRegionRadius;
        int i81 = 60;
        double d39 = d37;
        double d40 = entry22;
        double dMax3 = d38;
        double d41 = Double.NaN;
        double d42 = Double.NaN;
        double d43 = Double.NaN;
        int i82 = 0;
        double d44 = 0.0d;
        int i83 = 0;
        double d45 = 0.0d;
        double d46 = 0.0d;
        int i84 = 0;
        double d47 = 0.0d;
        double d48 = 0.0d;
        double d49 = 0.0d;
        double dMin2 = 0.0d;
        double d50 = 0.0d;
        double d51 = 0.0d;
        double dMax4 = 0.0d;
        int evaluations2 = evaluations;
        int i85 = 20;
        while (true) {
            double d52 = d41;
            if (i85 == 20) {
                int i86 = i84;
                d2 = d38;
                printState(20);
                if (bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex != 0) {
                    int i87 = 0;
                    for (int i88 = 0; i88 < dimension; i88++) {
                        int i89 = 0;
                        while (i89 <= i88) {
                            if (i89 < i88) {
                                ArrayRealVector arrayRealVector12 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                arrayRealVector12.setEntry(i88, arrayRealVector12.getEntry(i88) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i87) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i89)));
                            }
                            bOBYQAOptimizer = this;
                            ArrayRealVector arrayRealVector13 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                            arrayRealVector13.setEntry(i89, arrayRealVector13.getEntry(i89) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i87) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i88)));
                            i87++;
                            i89++;
                            i86 = i86;
                            i79 = i79;
                        }
                    }
                    i = i86;
                    i79 = i79;
                    if (getEvaluations() > i76) {
                        for (int i90 = 0; i90 < i76; i90++) {
                            double entry23 = 0.0d;
                            for (int i91 = 0; i91 < dimension; i91++) {
                                entry23 += bOBYQAOptimizer.interpolationPoints.getEntry(i90, i91) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i91);
                            }
                            double entry24 = entry23 * bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i90);
                            for (int i92 = 0; i92 < dimension; i92++) {
                                ArrayRealVector arrayRealVector14 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                arrayRealVector14.setEntry(i92, arrayRealVector14.getEntry(i92) + (bOBYQAOptimizer.interpolationPoints.getEntry(i90, i92) * entry24));
                            }
                        }
                    }
                } else {
                    i = i86;
                    i79 = i79;
                }
                i81 = 60;
            } else if (i85 == i81) {
                d2 = d38;
                i79 = i79;
                i = i84;
            } else if (i85 != 90) {
                double d53 = dMax3;
                if (i85 == 210) {
                    printState(210);
                    i23 = i83;
                    double d54 = d45;
                    double[] dArrAltmov = bOBYQAOptimizer.altmov(i23, d54);
                    double d55 = dArrAltmov[0];
                    double d56 = dArrAltmov[1];
                    int i93 = 0;
                    while (i93 < dimension) {
                        bOBYQAOptimizer.trialStepPoint.setEntry(i93, bOBYQAOptimizer.newPoint.getEntry(i93) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i93));
                        i93++;
                        d54 = d54;
                    }
                    d45 = d54;
                    i24 = 230;
                    d42 = d56;
                    d43 = d55;
                } else if (i85 == 230) {
                    i23 = i83;
                    d45 = d45;
                    i24 = 230;
                } else if (i85 == 360) {
                    d13 = d38;
                    i30 = i78;
                    i31 = i79;
                    arrayRealVector5 = arrayRealVector9;
                    arrayRealVector4 = arrayRealVector10;
                    arrayRealVector11 = arrayRealVector11;
                    i23 = i83;
                    d45 = d45;
                    i84 = i84;
                    i32 = 360;
                    printState(i32);
                    for (i33 = 0; i33 < dimension; i33++) {
                        bOBYQAOptimizer.currentBest.setEntry(i33, FastMath.min(FastMath.max(dArr[i33], bOBYQAOptimizer.originShift.getEntry(i33) + bOBYQAOptimizer.newPoint.getEntry(i33)), dArr2[i33]));
                        if (bOBYQAOptimizer.newPoint.getEntry(i33) == bOBYQAOptimizer.lowerDifference.getEntry(i33)) {
                            bOBYQAOptimizer.currentBest.setEntry(i33, dArr[i33]);
                        }
                        if (bOBYQAOptimizer.newPoint.getEntry(i33) == bOBYQAOptimizer.upperDifference.getEntry(i33)) {
                            bOBYQAOptimizer.currentBest.setEntry(i33, dArr2[i33]);
                        }
                    }
                    dComputeObjectiveValue = bOBYQAOptimizer.computeObjectiveValue(bOBYQAOptimizer.currentBest.toArray());
                    if (!bOBYQAOptimizer.isMinimize) {
                        dComputeObjectiveValue = -dComputeObjectiveValue;
                    }
                    d14 = dComputeObjectiveValue;
                    if (i84 == -1) {
                        i83 = i23;
                        i84 = i84;
                        d40 = d14;
                        d46 = d40;
                        i79 = i31;
                        d41 = d52;
                        dMax3 = d53;
                        arrayRealVector9 = arrayRealVector5;
                        d45 = d45;
                        d38 = d13;
                        arrayRealVector10 = arrayRealVector4;
                        arrayRealVector11 = arrayRealVector11;
                        i78 = i30;
                        i85 = 720;
                        i81 = 60;
                    } else {
                        entry7 = bOBYQAOptimizer.fAtInterpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex);
                        entry8 = 0.0d;
                        i34 = 0;
                        for (i35 = 0; i35 < dimension; i35++) {
                            entry8 += bOBYQAOptimizer.trialStepPoint.getEntry(i35) * bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i35);
                            i75 = 0;
                            while (i75 <= i35) {
                                int i94 = i23;
                                entry20 = bOBYQAOptimizer.trialStepPoint.getEntry(i75) * bOBYQAOptimizer.trialStepPoint.getEntry(i35);
                                if (i75 == i35) {
                                    entry20 *= HALF;
                                }
                                entry8 += bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i34) * entry20;
                                i34++;
                                i75++;
                                i23 = i94;
                            }
                        }
                        i36 = i23;
                        entry9 = entry8;
                        for (i37 = 0; i37 < i76; i37++) {
                            double entry25 = arrayRealVector4.getEntry(i37);
                            entry9 += bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i37) * HALF * entry25 * entry25;
                        }
                        arrayRealVector6 = arrayRealVector4;
                        d15 = d14 - entry7;
                        d16 = d15 - entry9;
                        dAbs = FastMath.abs(d16);
                        d17 = dMin2;
                        if (d17 > d13) {
                            evaluations2 = getEvaluations();
                        }
                        if (i84 > 0) {
                            d19 = 0.0d;
                            if (entry9 < 0.0d) {
                                throw new MathIllegalStateException(LocalizedFormats.TRUST_REGION_STEP_FAILED, Double.valueOf(entry9));
                            }
                            d51 = d15 / entry9;
                            d28 = d53 * HALF;
                            if (d51 <= ONE_OVER_TEN) {
                                dMax = FastMath.min(d28, d17);
                            } else {
                                if (d51 <= 0.7d) {
                                    dMax = FastMath.max(d28, d17);
                                } else {
                                    dMax = FastMath.max(d28, d17 * TWO);
                                }
                                if (dMax <= d13 * 1.5d) {
                                    dMax = d13;
                                }
                                if (d14 < entry7) {
                                    d29 = dMax * dMax;
                                    d18 = d17;
                                    dMax2 = 0.0d;
                                    d30 = d50;
                                    d31 = dMax4;
                                    i70 = 0;
                                    i71 = 0;
                                    d32 = 0.0d;
                                    while (i70 < i76) {
                                        double d57 = dMax;
                                        d33 = 0.0d;
                                        i72 = i30;
                                        i73 = 0;
                                        while (i73 < i72) {
                                            double entry26 = bOBYQAOptimizer.zMatrix.getEntry(i70, i73);
                                            d33 += entry26 * entry26;
                                            i73++;
                                            i72 = i72;
                                        }
                                        i30 = i72;
                                        double entry27 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                        d34 = (d33 * d44) + (entry27 * entry27);
                                        d35 = 0.0d;
                                        for (i74 = 0; i74 < dimension; i74++) {
                                            double entry28 = bOBYQAOptimizer.interpolationPoints.getEntry(i70, i74) - bOBYQAOptimizer.newPoint.getEntry(i74);
                                            d35 += entry28 * entry28;
                                        }
                                        double d58 = d35 / d29;
                                        double d59 = d29;
                                        double dMax5 = FastMath.max(1.0d, d58 * d58);
                                        d36 = dMax5 * d34;
                                        if (d36 > d32) {
                                            i71 = i70;
                                            d32 = d36;
                                            d30 = d34;
                                        }
                                        double entry29 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                        dMax2 = FastMath.max(dMax2, dMax5 * entry29 * entry29);
                                        i70++;
                                        dMax = d57;
                                        d31 = d35;
                                        d29 = d59;
                                    }
                                    d20 = dMax;
                                    if (d32 <= dMax2 * HALF) {
                                        i38 = i36;
                                        dMax4 = d31;
                                    } else {
                                        i38 = i71;
                                        dMax4 = d31;
                                        d50 = d30;
                                    }
                                } else {
                                    d18 = d17;
                                    d20 = dMax;
                                    i38 = i36;
                                }
                            }
                            if (dMax <= d13 * 1.5d) {
                                dMax = d13;
                            }
                            if (d14 < entry7) {
                                d29 = dMax * dMax;
                                d18 = d17;
                                dMax2 = 0.0d;
                                d30 = d50;
                                d31 = dMax4;
                                i70 = 0;
                                i71 = 0;
                                d32 = 0.0d;
                                while (i70 < i76) {
                                    double d510 = dMax;
                                    d33 = 0.0d;
                                    i72 = i30;
                                    i73 = 0;
                                    while (i73 < i72) {
                                        double entry210 = bOBYQAOptimizer.zMatrix.getEntry(i70, i73);
                                        d33 += entry210 * entry210;
                                        i73++;
                                        i72 = i72;
                                    }
                                    i30 = i72;
                                    double entry211 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                    d34 = (d33 * d44) + (entry211 * entry211);
                                    d35 = 0.0d;
                                    while (i74 < dimension) {
                                        double entry212 = bOBYQAOptimizer.interpolationPoints.getEntry(i70, i74) - bOBYQAOptimizer.newPoint.getEntry(i74);
                                        d35 += entry212 * entry212;
                                    }
                                    double d511 = d35 / d29;
                                    double d512 = d29;
                                    double dMax6 = FastMath.max(1.0d, d511 * d511);
                                    d36 = dMax6 * d34;
                                    if (d36 > d32) {
                                        i71 = i70;
                                        d32 = d36;
                                        d30 = d34;
                                    }
                                    double entry213 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                    dMax2 = FastMath.max(dMax2, dMax6 * entry213 * entry213);
                                    i70++;
                                    dMax = d510;
                                    d31 = d35;
                                    d29 = d512;
                                }
                                d20 = dMax;
                                if (d32 <= dMax2 * HALF) {
                                    i38 = i36;
                                    dMax4 = d31;
                                } else {
                                    i38 = i71;
                                    dMax4 = d31;
                                    d50 = d30;
                                }
                            } else {
                                d18 = d17;
                                d20 = dMax;
                                i38 = i36;
                            }
                        } else {
                            d18 = d17;
                            d19 = 0.0d;
                            i38 = i36;
                            d20 = d53;
                        }
                        int i95 = i30;
                        d11 = d18;
                        d21 = d13;
                        update(d44, d50, i38);
                        entry10 = bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i38);
                        bOBYQAOptimizer.modelSecondDerivativesParameters.setEntry(i38, d19);
                        i39 = 0;
                        for (i40 = 0; i40 < dimension; i40++) {
                            entry19 = bOBYQAOptimizer.interpolationPoints.getEntry(i38, i40) * entry10;
                            for (i69 = 0; i69 <= i40; i69++) {
                                ArrayRealVector arrayRealVector15 = bOBYQAOptimizer.modelSecondDerivativesValues;
                                arrayRealVector15.setEntry(i39, arrayRealVector15.getEntry(i39) + (bOBYQAOptimizer.interpolationPoints.getEntry(i38, i69) * entry19));
                                i39++;
                            }
                        }
                        i41 = i95;
                        for (i42 = 0; i42 < i41; i42++) {
                            entry18 = bOBYQAOptimizer.zMatrix.getEntry(i38, i42) * d16;
                            i68 = 0;
                            while (i68 < i76) {
                                ArrayRealVector arrayRealVector16 = bOBYQAOptimizer.modelSecondDerivativesParameters;
                                arrayRealVector16.setEntry(i68, arrayRealVector16.getEntry(i68) + (bOBYQAOptimizer.zMatrix.getEntry(i68, i42) * entry18));
                                i68++;
                                entry18 = entry18;
                            }
                        }
                        bOBYQAOptimizer.fAtInterpolationPoints.setEntry(i38, d14);
                        for (i43 = 0; i43 < dimension; i43++) {
                            bOBYQAOptimizer.interpolationPoints.setEntry(i38, i43, bOBYQAOptimizer.newPoint.getEntry(i43));
                            arrayRealVector5.setEntry(i43, bOBYQAOptimizer.bMatrix.getEntry(i38, i43));
                        }
                        arrayRealVector7 = arrayRealVector5;
                        for (i44 = 0; i44 < i76; i44++) {
                            entry16 = 0.0d;
                            for (i65 = 0; i65 < i41; i65++) {
                                entry16 += bOBYQAOptimizer.zMatrix.getEntry(i38, i65) * bOBYQAOptimizer.zMatrix.getEntry(i44, i65);
                            }
                            entry17 = 0.0d;
                            for (i66 = 0; i66 < dimension; i66++) {
                                entry17 += bOBYQAOptimizer.interpolationPoints.getEntry(i44, i66) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i66);
                            }
                            d27 = entry16 * entry17;
                            i67 = 0;
                            while (i67 < dimension) {
                                arrayRealVector7.setEntry(i67, arrayRealVector7.getEntry(i67) + (bOBYQAOptimizer.interpolationPoints.getEntry(i44, i67) * d27));
                                i67++;
                                d27 = d27;
                            }
                        }
                        for (i45 = 0; i45 < dimension; i45++) {
                            ArrayRealVector arrayRealVector17 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                            arrayRealVector17.setEntry(i45, arrayRealVector17.getEntry(i45) + (arrayRealVector7.getEntry(i45) * d16));
                        }
                        if (d14 < entry7) {
                            bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex = i38;
                            i59 = 0;
                            d26 = 0.0d;
                            i60 = 0;
                            while (i60 < dimension) {
                                int i96 = i38;
                                bOBYQAOptimizer.trustRegionCenterOffset.setEntry(i60, bOBYQAOptimizer.newPoint.getEntry(i60));
                                double entry30 = bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i60);
                                d26 += entry30 * entry30;
                                i64 = 0;
                                while (i64 <= i60) {
                                    if (i64 < i60) {
                                        ArrayRealVector arrayRealVector18 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                        arrayRealVector18.setEntry(i60, arrayRealVector18.getEntry(i60) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i59) * bOBYQAOptimizer.trialStepPoint.getEntry(i64)));
                                    }
                                    ArrayRealVector arrayRealVector19 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                    arrayRealVector19.setEntry(i64, arrayRealVector19.getEntry(i64) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i59) * bOBYQAOptimizer.trialStepPoint.getEntry(i60)));
                                    i59++;
                                    i64++;
                                    d26 = d26;
                                }
                                i60++;
                                i38 = i96;
                            }
                            i46 = i38;
                            for (i61 = 0; i61 < i76; i61++) {
                                entry14 = 0.0d;
                                for (i62 = 0; i62 < dimension; i62++) {
                                    entry14 += bOBYQAOptimizer.interpolationPoints.getEntry(i61, i62) * bOBYQAOptimizer.trialStepPoint.getEntry(i62);
                                }
                                entry15 = entry14 * bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i61);
                                i63 = 0;
                                while (i63 < dimension) {
                                    ArrayRealVector arrayRealVector20 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                    arrayRealVector20.setEntry(i63, arrayRealVector20.getEntry(i63) + (bOBYQAOptimizer.interpolationPoints.getEntry(i61, i63) * entry15));
                                    i63++;
                                    d26 = d26;
                                }
                            }
                            d39 = d26;
                        } else {
                            i46 = i38;
                        }
                        if (i84 > 0) {
                            for (i48 = 0; i48 < i76; i48++) {
                                bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i48, bOBYQAOptimizer.fAtInterpolationPoints.getEntry(i48) - bOBYQAOptimizer.fAtInterpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex));
                                arrayRealVector11.setEntry(i48, 0.0d);
                            }
                            arrayRealVector8 = arrayRealVector11;
                            for (i49 = 0; i49 < i41; i49++) {
                                entry13 = 0.0d;
                                for (i57 = 0; i57 < i76; i57++) {
                                    entry13 += bOBYQAOptimizer.zMatrix.getEntry(i57, i49) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i57);
                                }
                                i58 = 0;
                                while (i58 < i76) {
                                    arrayRealVector8.setEntry(i58, arrayRealVector8.getEntry(i58) + (bOBYQAOptimizer.zMatrix.getEntry(i58, i49) * entry13));
                                    i58++;
                                    entry13 = entry13;
                                }
                            }
                            i50 = 0;
                            while (i50 < i76) {
                                entry12 = 0.0d;
                                for (i56 = 0; i56 < dimension; i56++) {
                                    entry12 += bOBYQAOptimizer.interpolationPoints.getEntry(i50, i56) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i56);
                                }
                                arrayRealVector6.setEntry(i50, arrayRealVector8.getEntry(i50));
                                arrayRealVector8.setEntry(i50, entry12 * arrayRealVector8.getEntry(i50));
                                i50++;
                                arrayRealVector7 = arrayRealVector7;
                                i41 = i41;
                            }
                            i25 = i41;
                            arrayRealVector2 = arrayRealVector7;
                            arrayRealVector3 = arrayRealVector6;
                            d23 = 0.0d;
                            d24 = 0.0d;
                            i51 = 0;
                            while (i51 < dimension) {
                                double d60 = d14;
                                entry11 = 0.0d;
                                for (i55 = 0; i55 < i76; i55++) {
                                    entry11 += (bOBYQAOptimizer.bMatrix.getEntry(i55, i51) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i55)) + (bOBYQAOptimizer.interpolationPoints.getEntry(i55, i51) * arrayRealVector8.getEntry(i55));
                                }
                                ArrayRealVector arrayRealVector21 = arrayRealVector8;
                                if (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i51) == bOBYQAOptimizer.lowerDifference.getEntry(i51)) {
                                    double dMin3 = FastMath.min(0.0d, bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i51));
                                    d23 += dMin3 * dMin3;
                                    double dMin4 = FastMath.min(0.0d, entry11);
                                    d24 += dMin4 * dMin4;
                                } else {
                                    if (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i51) == bOBYQAOptimizer.upperDifference.getEntry(i51)) {
                                        double dMax7 = FastMath.max(0.0d, bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i51));
                                        d23 += dMax7 * dMax7;
                                        double dMax8 = FastMath.max(0.0d, entry11);
                                        d25 = dMax8 * dMax8;
                                    } else {
                                        double entry31 = bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i51);
                                        d23 += entry31 * entry31;
                                        d25 = entry11 * entry11;
                                    }
                                    d24 += d25;
                                }
                                bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i76 + i51, entry11);
                                i51++;
                                d14 = d60;
                                i46 = i46;
                                arrayRealVector8 = arrayRealVector21;
                            }
                            arrayRealVector11 = arrayRealVector8;
                            i47 = i46;
                            d22 = d14;
                            i52 = i82 + 1;
                            if (d23 < d24 * 10.0d) {
                                i52 = 0;
                            }
                            i79 = i31;
                            if (i52 >= 3) {
                                iMax = FastMath.max(i76, i79);
                                i53 = i52;
                                i54 = 0;
                                while (i54 < iMax) {
                                    if (i54 < dimension) {
                                        bOBYQAOptimizer.gradientAtTrustRegionCenter.setEntry(i54, bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i76 + i54));
                                    }
                                    if (i54 < i76) {
                                        bOBYQAOptimizer.modelSecondDerivativesParameters.setEntry(i54, arrayRealVector3.getEntry(i54));
                                    }
                                    if (i54 < i79) {
                                        bOBYQAOptimizer.modelSecondDerivativesValues.setEntry(i54, 0.0d);
                                    }
                                    i54++;
                                    i53 = 0;
                                }
                                i82 = i53;
                            } else {
                                i82 = i52;
                            }
                        } else {
                            i47 = i46;
                            d22 = d14;
                            i25 = i41;
                            arrayRealVector2 = arrayRealVector7;
                            i79 = i31;
                        }
                        if (i84 == 0) {
                            arrayRealVector3 = arrayRealVector6;
                        } else {
                            arrayRealVector3 = arrayRealVector6;
                            if (d22 <= entry7 + (entry9 * ONE_OVER_TEN)) {
                                double d61 = TWO * d20;
                                d8 = d21;
                                double d62 = d8 * 10.0d;
                                dMax4 = FastMath.max(d61 * d61, d62 * d62);
                                d46 = d22;
                                d41 = d52;
                                dMax3 = d20;
                                i27 = 650;
                                double d63 = d47;
                                d47 = dAbs;
                                d49 = d48;
                                d48 = d63;
                                printState(i27);
                                i83 = -1;
                                for (i28 = 0; i28 < i76; i28++) {
                                    d12 = 0.0d;
                                    for (i29 = 0; i29 < dimension; i29++) {
                                        double entry32 = bOBYQAOptimizer.interpolationPoints.getEntry(i28, i29) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i29);
                                        d12 += entry32 * entry32;
                                    }
                                    if (d12 > dMax4) {
                                        i83 = i28;
                                        dMax4 = d12;
                                    }
                                }
                                if (i83 >= 0) {
                                    dSqrt2 = FastMath.sqrt(dMax4);
                                    if (i84 == -1) {
                                        dMin = FastMath.min(dMax3 * ONE_OVER_TEN, dSqrt2 * HALF);
                                        if (dMin <= d8 * 1.5d) {
                                            dMax3 = d8;
                                        } else {
                                            dMax3 = dMin;
                                        }
                                    }
                                    double dMax9 = FastMath.max(FastMath.min(dSqrt2 * ONE_OVER_TEN, dMax3), d8);
                                    d45 = dMax9;
                                    d41 = dMax9 * dMax9;
                                    arrayRealVector11 = arrayRealVector11;
                                    dMin2 = d11;
                                    i78 = i25;
                                    i85 = 90;
                                    i81 = 60;
                                    i84 = 0;
                                } else {
                                    if (i84 == -1) {
                                        i84 = i84;
                                        d45 = d45;
                                        arrayRealVector11 = arrayRealVector11;
                                        dMin2 = d11;
                                        i78 = i25;
                                        i85 = 680;
                                    } else {
                                        if (d51 <= 0.0d) {
                                            d9 = d11;
                                            if (FastMath.max(dMax3, d9) <= d8) {
                                                i26 = 680;
                                                printState(i26);
                                                d10 = d41;
                                                dSqrt = bOBYQAOptimizer.stoppingTrustRegionRadius;
                                                if (d8 > dSqrt) {
                                                    if (i84 == -1) {
                                                        break;
                                                        break;
                                                    }
                                                    dMin2 = d9;
                                                    i84 = i84;
                                                    d41 = d10;
                                                    d45 = d45;
                                                    arrayRealVector11 = arrayRealVector11;
                                                    i78 = i25;
                                                    i85 = 360;
                                                } else {
                                                    double d64 = d8 * HALF;
                                                    d51 = d8 / dSqrt;
                                                    if (d51 > SIXTEEN) {
                                                        if (d51 <= TWO_HUNDRED_FIFTY) {
                                                            dSqrt = FastMath.sqrt(d51) * bOBYQAOptimizer.stoppingTrustRegionRadius;
                                                        } else {
                                                            dSqrt = d8 * ONE_OVER_TEN;
                                                        }
                                                    }
                                                    dMax3 = FastMath.max(d64, dSqrt);
                                                    evaluations2 = getEvaluations();
                                                    arrayRealVector10 = arrayRealVector3;
                                                    dMin2 = d9;
                                                    arrayRealVector9 = arrayRealVector2;
                                                    d45 = d45;
                                                    arrayRealVector11 = arrayRealVector11;
                                                    i78 = i25;
                                                    i81 = 60;
                                                    i84 = 0;
                                                    d38 = dSqrt;
                                                    d41 = d10;
                                                    i85 = 60;
                                                }
                                            } else {
                                                dMin2 = d9;
                                            }
                                        } else {
                                            dMin2 = d11;
                                        }
                                        i78 = i25;
                                        i85 = 60;
                                    }
                                    i81 = 60;
                                }
                                arrayRealVector10 = arrayRealVector3;
                                d38 = d8;
                                arrayRealVector9 = arrayRealVector2;
                            }
                        }
                        arrayRealVector10 = arrayRealVector3;
                        i84 = i84;
                        d41 = d52;
                        arrayRealVector9 = arrayRealVector2;
                        arrayRealVector11 = arrayRealVector11;
                        dMax3 = d20;
                        dMin2 = d11;
                        d38 = d21;
                        i78 = i25;
                        i85 = 60;
                        i81 = 60;
                        double d65 = d22;
                        i83 = i47;
                        d46 = d65;
                        d45 = d45;
                        double d66 = d47;
                        d47 = dAbs;
                        d49 = d48;
                        d48 = d66;
                    }
                } else if (i85 == 650) {
                    i25 = i78;
                    arrayRealVector2 = arrayRealVector9;
                    arrayRealVector11 = arrayRealVector11;
                    d45 = d45;
                    i84 = i84;
                    d11 = dMin2;
                    d41 = d52;
                    dMax3 = d53;
                    i27 = 650;
                    double d67 = d38;
                    arrayRealVector3 = arrayRealVector10;
                    d8 = d67;
                    printState(i27);
                    i83 = -1;
                    while (i28 < i76) {
                        d12 = 0.0d;
                        while (i29 < dimension) {
                            double entry33 = bOBYQAOptimizer.interpolationPoints.getEntry(i28, i29) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i29);
                            d12 += entry33 * entry33;
                        }
                        if (d12 > dMax4) {
                            i83 = i28;
                            dMax4 = d12;
                        }
                    }
                    if (i83 >= 0) {
                        dSqrt2 = FastMath.sqrt(dMax4);
                        if (i84 == -1) {
                            dMin = FastMath.min(dMax3 * ONE_OVER_TEN, dSqrt2 * HALF);
                            if (dMin <= d8 * 1.5d) {
                                dMax3 = d8;
                            } else {
                                dMax3 = dMin;
                            }
                        }
                        double dMax10 = FastMath.max(FastMath.min(dSqrt2 * ONE_OVER_TEN, dMax3), d8);
                        d45 = dMax10;
                        d41 = dMax10 * dMax10;
                        arrayRealVector11 = arrayRealVector11;
                        dMin2 = d11;
                        i78 = i25;
                        i85 = 90;
                        i81 = 60;
                        i84 = 0;
                    } else {
                        if (i84 == -1) {
                            i84 = i84;
                            d45 = d45;
                            arrayRealVector11 = arrayRealVector11;
                            dMin2 = d11;
                            i78 = i25;
                            i85 = 680;
                        } else {
                            if (d51 <= 0.0d) {
                                d9 = d11;
                                if (FastMath.max(dMax3, d9) <= d8) {
                                    i26 = 680;
                                    printState(i26);
                                    d10 = d41;
                                    dSqrt = bOBYQAOptimizer.stoppingTrustRegionRadius;
                                    if (d8 > dSqrt) {
                                        if (i84 == -1) {
                                            break;
                                            break;
                                        }
                                        dMin2 = d9;
                                        i84 = i84;
                                        d41 = d10;
                                        d45 = d45;
                                        arrayRealVector11 = arrayRealVector11;
                                        i78 = i25;
                                        i85 = 360;
                                    } else {
                                        double d68 = d8 * HALF;
                                        d51 = d8 / dSqrt;
                                        if (d51 > SIXTEEN) {
                                            if (d51 <= TWO_HUNDRED_FIFTY) {
                                                dSqrt = FastMath.sqrt(d51) * bOBYQAOptimizer.stoppingTrustRegionRadius;
                                            } else {
                                                dSqrt = d8 * ONE_OVER_TEN;
                                            }
                                        }
                                        dMax3 = FastMath.max(d68, dSqrt);
                                        evaluations2 = getEvaluations();
                                        arrayRealVector10 = arrayRealVector3;
                                        dMin2 = d9;
                                        arrayRealVector9 = arrayRealVector2;
                                        d45 = d45;
                                        arrayRealVector11 = arrayRealVector11;
                                        i78 = i25;
                                        i81 = 60;
                                        i84 = 0;
                                        d38 = dSqrt;
                                        d41 = d10;
                                        i85 = 60;
                                    }
                                } else {
                                    dMin2 = d9;
                                }
                            } else {
                                dMin2 = d11;
                            }
                            i78 = i25;
                            i85 = 60;
                        }
                        i81 = 60;
                    }
                    arrayRealVector10 = arrayRealVector3;
                    d38 = d8;
                    arrayRealVector9 = arrayRealVector2;
                } else {
                    if (i85 != 680) {
                        if (i85 == 720) {
                            break;
                        }
                        throw new MathIllegalStateException(LocalizedFormats.SIMPLE_MESSAGE, "bobyqb");
                    }
                    i25 = i78;
                    arrayRealVector2 = arrayRealVector9;
                    arrayRealVector11 = arrayRealVector11;
                    d45 = d45;
                    i84 = i84;
                    d41 = d52;
                    dMax3 = d53;
                    i26 = 680;
                    double d69 = d38;
                    arrayRealVector3 = arrayRealVector10;
                    d8 = d69;
                    d9 = dMin2;
                    printState(i26);
                    d10 = d41;
                    dSqrt = bOBYQAOptimizer.stoppingTrustRegionRadius;
                    if (d8 > dSqrt) {
                        if (i84 == -1) {
                            break;
                        }
                        dMin2 = d9;
                        i84 = i84;
                        d41 = d10;
                        d45 = d45;
                        arrayRealVector11 = arrayRealVector11;
                        i78 = i25;
                        i85 = 360;
                        i81 = 60;
                        arrayRealVector10 = arrayRealVector3;
                        d38 = d8;
                        arrayRealVector9 = arrayRealVector2;
                    } else {
                        double d610 = d8 * HALF;
                        d51 = d8 / dSqrt;
                        if (d51 > SIXTEEN) {
                            if (d51 <= TWO_HUNDRED_FIFTY) {
                                dSqrt = FastMath.sqrt(d51) * bOBYQAOptimizer.stoppingTrustRegionRadius;
                            } else {
                                dSqrt = d8 * ONE_OVER_TEN;
                            }
                        }
                        dMax3 = FastMath.max(d610, dSqrt);
                        evaluations2 = getEvaluations();
                        arrayRealVector10 = arrayRealVector3;
                        dMin2 = d9;
                        arrayRealVector9 = arrayRealVector2;
                        d45 = d45;
                        arrayRealVector11 = arrayRealVector11;
                        i78 = i25;
                        i81 = 60;
                        i84 = 0;
                        d38 = dSqrt;
                        d41 = d10;
                        i85 = 60;
                    }
                }
                printState(i24);
                int i97 = 0;
                while (i97 < i76) {
                    int i98 = i79;
                    ArrayRealVector arrayRealVector22 = arrayRealVector9;
                    double entry34 = 0.0d;
                    double entry35 = 0.0d;
                    double entry36 = 0.0d;
                    for (int i99 = 0; i99 < dimension; i99++) {
                        entry34 += bOBYQAOptimizer.interpolationPoints.getEntry(i97, i99) * bOBYQAOptimizer.trialStepPoint.getEntry(i99);
                        entry36 += bOBYQAOptimizer.interpolationPoints.getEntry(i97, i99) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i99);
                        entry35 += bOBYQAOptimizer.bMatrix.getEntry(i97, i99) * bOBYQAOptimizer.trialStepPoint.getEntry(i99);
                    }
                    arrayRealVector11.setEntry(i97, entry34 * ((entry34 * HALF) + entry36));
                    bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i97, entry35);
                    arrayRealVector10.setEntry(i97, entry34);
                    i97++;
                    i79 = i98;
                    arrayRealVector9 = arrayRealVector22;
                    d38 = d38;
                }
                d13 = d38;
                i31 = i79;
                arrayRealVector5 = arrayRealVector9;
                double d70 = 0.0d;
                for (int i100 = 0; i100 < i78; i100++) {
                    double entry37 = 0.0d;
                    for (int i101 = 0; i101 < i76; i101++) {
                        entry37 += bOBYQAOptimizer.zMatrix.getEntry(i101, i100) * arrayRealVector11.getEntry(i101);
                    }
                    d70 -= entry37 * entry37;
                    int i102 = 0;
                    while (i102 < i76) {
                        ArrayRealVector arrayRealVector23 = bOBYQAOptimizer.lagrangeValuesAtNewPoint;
                        arrayRealVector23.setEntry(i102, arrayRealVector23.getEntry(i102) + (bOBYQAOptimizer.zMatrix.getEntry(i102, i100) * entry37));
                        i102++;
                        d70 = d70;
                    }
                }
                double d71 = 0.0d;
                int i103 = 0;
                double entry38 = 0.0d;
                double entry39 = 0.0d;
                while (i103 < dimension) {
                    ArrayRealVector arrayRealVector24 = arrayRealVector10;
                    double entry40 = bOBYQAOptimizer.trialStepPoint.getEntry(i103);
                    double d72 = d71 + (entry40 * entry40);
                    int i104 = 0;
                    double entry41 = 0.0d;
                    while (i104 < i76) {
                        entry41 += arrayRealVector11.getEntry(i104) * bOBYQAOptimizer.bMatrix.getEntry(i104, i103);
                        i104++;
                        d72 = d72;
                    }
                    double d73 = d72;
                    double entry42 = entry39 + (bOBYQAOptimizer.trialStepPoint.getEntry(i103) * entry41);
                    int i105 = i76 + i103;
                    ArrayRealVector arrayRealVector25 = arrayRealVector11;
                    double entry43 = entry41;
                    int i106 = 0;
                    while (i106 < dimension) {
                        entry43 += bOBYQAOptimizer.bMatrix.getEntry(i105, i106) * bOBYQAOptimizer.trialStepPoint.getEntry(i106);
                        i106++;
                        i78 = i78;
                    }
                    bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i105, entry43);
                    entry39 = entry42 + (entry43 * bOBYQAOptimizer.trialStepPoint.getEntry(i103));
                    entry38 += bOBYQAOptimizer.trialStepPoint.getEntry(i103) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i103);
                    i103++;
                    arrayRealVector10 = arrayRealVector24;
                    d71 = d73;
                    arrayRealVector11 = arrayRealVector25;
                    i78 = i78;
                }
                i30 = i78;
                arrayRealVector4 = arrayRealVector10;
                arrayRealVector11 = arrayRealVector11;
                d44 = (((entry38 * entry38) + ((((d39 + entry38) + entry38) + (d71 * HALF)) * d71)) + d70) - entry39;
                ArrayRealVector arrayRealVector26 = bOBYQAOptimizer.lagrangeValuesAtNewPoint;
                int i107 = bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex;
                arrayRealVector26.setEntry(i107, arrayRealVector26.getEntry(i107) + 1.0d);
                i84 = i84;
                if (i84 == 0) {
                    double entry44 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i23);
                    d50 = (entry44 * entry44) + (d43 * d44);
                    if (d50 >= d42 || d42 <= 0.0d) {
                        d52 = d71;
                    } else {
                        for (int i108 = 0; i108 < dimension; i108++) {
                            bOBYQAOptimizer.newPoint.setEntry(i108, bOBYQAOptimizer.alternativeNewPoint.getEntry(i108));
                            bOBYQAOptimizer.trialStepPoint.setEntry(i108, bOBYQAOptimizer.newPoint.getEntry(i108) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i108));
                        }
                        i83 = i23;
                        d41 = d71;
                        i84 = i84;
                        i79 = i31;
                        dMax3 = d53;
                        arrayRealVector9 = arrayRealVector5;
                        d45 = d45;
                        d38 = d13;
                        arrayRealVector10 = arrayRealVector4;
                        arrayRealVector11 = arrayRealVector11;
                        i78 = i30;
                        i85 = 230;
                        i81 = 60;
                        d42 = 0.0d;
                    }
                } else {
                    double d74 = d53 * d53;
                    int i109 = 0;
                    double d75 = 0.0d;
                    int i110 = 0;
                    double dMax11 = 0.0d;
                    while (i109 < i76) {
                        if (i109 != bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex) {
                            int i111 = i30;
                            int i112 = 0;
                            double d76 = 0.0d;
                            while (i112 < i111) {
                                double entry45 = bOBYQAOptimizer.zMatrix.getEntry(i109, i112);
                                d76 += entry45 * entry45;
                                i112++;
                                i110 = i110;
                            }
                            int i113 = i110;
                            double entry46 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i109);
                            double d77 = (d76 * d44) + (entry46 * entry46);
                            double d78 = 0.0d;
                            for (int i114 = 0; i114 < dimension; i114++) {
                                double entry47 = bOBYQAOptimizer.interpolationPoints.getEntry(i109, i114) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i114);
                                d78 += entry47 * entry47;
                            }
                            double d79 = d78 / d74;
                            i30 = i111;
                            double dMax12 = FastMath.max(1.0d, d79 * d79);
                            double d80 = dMax12 * d77;
                            if (d80 > d75) {
                                i110 = i109;
                                d75 = d80;
                                d50 = d77;
                            } else {
                                i110 = i113;
                            }
                            double entry48 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i109);
                            dMax11 = FastMath.max(dMax11, dMax12 * entry48 * entry48);
                            dMax4 = d78;
                        }
                        i109++;
                        d71 = d71;
                        d74 = d74;
                    }
                    d52 = d71;
                    i23 = i110;
                }
                i32 = 360;
                printState(i32);
                while (i33 < dimension) {
                    bOBYQAOptimizer.currentBest.setEntry(i33, FastMath.min(FastMath.max(dArr[i33], bOBYQAOptimizer.originShift.getEntry(i33) + bOBYQAOptimizer.newPoint.getEntry(i33)), dArr2[i33]));
                    if (bOBYQAOptimizer.newPoint.getEntry(i33) == bOBYQAOptimizer.lowerDifference.getEntry(i33)) {
                        bOBYQAOptimizer.currentBest.setEntry(i33, dArr[i33]);
                    }
                    if (bOBYQAOptimizer.newPoint.getEntry(i33) == bOBYQAOptimizer.upperDifference.getEntry(i33)) {
                        bOBYQAOptimizer.currentBest.setEntry(i33, dArr2[i33]);
                    }
                }
                dComputeObjectiveValue = bOBYQAOptimizer.computeObjectiveValue(bOBYQAOptimizer.currentBest.toArray());
                if (!bOBYQAOptimizer.isMinimize) {
                    dComputeObjectiveValue = -dComputeObjectiveValue;
                }
                d14 = dComputeObjectiveValue;
                if (i84 == -1) {
                    i83 = i23;
                    i84 = i84;
                    d40 = d14;
                    d46 = d40;
                    i79 = i31;
                    d41 = d52;
                    dMax3 = d53;
                    arrayRealVector9 = arrayRealVector5;
                    d45 = d45;
                    d38 = d13;
                    arrayRealVector10 = arrayRealVector4;
                    arrayRealVector11 = arrayRealVector11;
                    i78 = i30;
                    i85 = 720;
                    i81 = 60;
                } else {
                    entry7 = bOBYQAOptimizer.fAtInterpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex);
                    entry8 = 0.0d;
                    i34 = 0;
                    while (i35 < dimension) {
                        entry8 += bOBYQAOptimizer.trialStepPoint.getEntry(i35) * bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i35);
                        i75 = 0;
                        while (i75 <= i35) {
                            int i910 = i23;
                            entry20 = bOBYQAOptimizer.trialStepPoint.getEntry(i75) * bOBYQAOptimizer.trialStepPoint.getEntry(i35);
                            if (i75 == i35) {
                                entry20 *= HALF;
                            }
                            entry8 += bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i34) * entry20;
                            i34++;
                            i75++;
                            i23 = i910;
                        }
                    }
                    i36 = i23;
                    entry9 = entry8;
                    while (i37 < i76) {
                        double entry214 = arrayRealVector4.getEntry(i37);
                        entry9 += bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i37) * HALF * entry214 * entry214;
                    }
                    arrayRealVector6 = arrayRealVector4;
                    d15 = d14 - entry7;
                    d16 = d15 - entry9;
                    dAbs = FastMath.abs(d16);
                    d17 = dMin2;
                    if (d17 > d13) {
                        evaluations2 = getEvaluations();
                    }
                    if (i84 > 0) {
                        d19 = 0.0d;
                        if (entry9 < 0.0d) {
                            throw new MathIllegalStateException(LocalizedFormats.TRUST_REGION_STEP_FAILED, Double.valueOf(entry9));
                        }
                        d51 = d15 / entry9;
                        d28 = d53 * HALF;
                        if (d51 <= ONE_OVER_TEN) {
                            dMax = FastMath.min(d28, d17);
                        } else {
                            if (d51 <= 0.7d) {
                                dMax = FastMath.max(d28, d17);
                            } else {
                                dMax = FastMath.max(d28, d17 * TWO);
                            }
                            if (dMax <= d13 * 1.5d) {
                                dMax = d13;
                            }
                            if (d14 < entry7) {
                                d29 = dMax * dMax;
                                d18 = d17;
                                dMax2 = 0.0d;
                                d30 = d50;
                                d31 = dMax4;
                                i70 = 0;
                                i71 = 0;
                                d32 = 0.0d;
                                while (i70 < i76) {
                                    double d513 = dMax;
                                    d33 = 0.0d;
                                    i72 = i30;
                                    i73 = 0;
                                    while (i73 < i72) {
                                        double entry215 = bOBYQAOptimizer.zMatrix.getEntry(i70, i73);
                                        d33 += entry215 * entry215;
                                        i73++;
                                        i72 = i72;
                                    }
                                    i30 = i72;
                                    double entry216 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                    d34 = (d33 * d44) + (entry216 * entry216);
                                    d35 = 0.0d;
                                    while (i74 < dimension) {
                                        double entry217 = bOBYQAOptimizer.interpolationPoints.getEntry(i70, i74) - bOBYQAOptimizer.newPoint.getEntry(i74);
                                        d35 += entry217 * entry217;
                                    }
                                    double d514 = d35 / d29;
                                    double d515 = d29;
                                    double dMax13 = FastMath.max(1.0d, d514 * d514);
                                    d36 = dMax13 * d34;
                                    if (d36 > d32) {
                                        i71 = i70;
                                        d32 = d36;
                                        d30 = d34;
                                    }
                                    double entry218 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                    dMax2 = FastMath.max(dMax2, dMax13 * entry218 * entry218);
                                    i70++;
                                    dMax = d513;
                                    d31 = d35;
                                    d29 = d515;
                                }
                                d20 = dMax;
                                if (d32 <= dMax2 * HALF) {
                                    i38 = i36;
                                    dMax4 = d31;
                                } else {
                                    i38 = i71;
                                    dMax4 = d31;
                                    d50 = d30;
                                }
                            } else {
                                d18 = d17;
                                d20 = dMax;
                                i38 = i36;
                            }
                        }
                        if (dMax <= d13 * 1.5d) {
                            dMax = d13;
                        }
                        if (d14 < entry7) {
                            d29 = dMax * dMax;
                            d18 = d17;
                            dMax2 = 0.0d;
                            d30 = d50;
                            d31 = dMax4;
                            i70 = 0;
                            i71 = 0;
                            d32 = 0.0d;
                            while (i70 < i76) {
                                double d516 = dMax;
                                d33 = 0.0d;
                                i72 = i30;
                                i73 = 0;
                                while (i73 < i72) {
                                    double entry219 = bOBYQAOptimizer.zMatrix.getEntry(i70, i73);
                                    d33 += entry219 * entry219;
                                    i73++;
                                    i72 = i72;
                                }
                                i30 = i72;
                                double entry2110 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                d34 = (d33 * d44) + (entry2110 * entry2110);
                                d35 = 0.0d;
                                while (i74 < dimension) {
                                    double entry2111 = bOBYQAOptimizer.interpolationPoints.getEntry(i70, i74) - bOBYQAOptimizer.newPoint.getEntry(i74);
                                    d35 += entry2111 * entry2111;
                                }
                                double d517 = d35 / d29;
                                double d518 = d29;
                                double dMax14 = FastMath.max(1.0d, d517 * d517);
                                d36 = dMax14 * d34;
                                if (d36 > d32) {
                                    i71 = i70;
                                    d32 = d36;
                                    d30 = d34;
                                }
                                double entry2112 = bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i70);
                                dMax2 = FastMath.max(dMax2, dMax14 * entry2112 * entry2112);
                                i70++;
                                dMax = d516;
                                d31 = d35;
                                d29 = d518;
                            }
                            d20 = dMax;
                            if (d32 <= dMax2 * HALF) {
                                i38 = i36;
                                dMax4 = d31;
                            } else {
                                i38 = i71;
                                dMax4 = d31;
                                d50 = d30;
                            }
                        } else {
                            d18 = d17;
                            d20 = dMax;
                            i38 = i36;
                        }
                    } else {
                        d18 = d17;
                        d19 = 0.0d;
                        i38 = i36;
                        d20 = d53;
                    }
                    int i911 = i30;
                    d11 = d18;
                    d21 = d13;
                    update(d44, d50, i38);
                    entry10 = bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i38);
                    bOBYQAOptimizer.modelSecondDerivativesParameters.setEntry(i38, d19);
                    i39 = 0;
                    while (i40 < dimension) {
                        entry19 = bOBYQAOptimizer.interpolationPoints.getEntry(i38, i40) * entry10;
                        while (i69 <= i40) {
                            ArrayRealVector arrayRealVector110 = bOBYQAOptimizer.modelSecondDerivativesValues;
                            arrayRealVector110.setEntry(i39, arrayRealVector110.getEntry(i39) + (bOBYQAOptimizer.interpolationPoints.getEntry(i38, i69) * entry19));
                            i39++;
                        }
                    }
                    i41 = i911;
                    while (i42 < i41) {
                        entry18 = bOBYQAOptimizer.zMatrix.getEntry(i38, i42) * d16;
                        i68 = 0;
                        while (i68 < i76) {
                            ArrayRealVector arrayRealVector111 = bOBYQAOptimizer.modelSecondDerivativesParameters;
                            arrayRealVector111.setEntry(i68, arrayRealVector111.getEntry(i68) + (bOBYQAOptimizer.zMatrix.getEntry(i68, i42) * entry18));
                            i68++;
                            entry18 = entry18;
                        }
                    }
                    bOBYQAOptimizer.fAtInterpolationPoints.setEntry(i38, d14);
                    while (i43 < dimension) {
                        bOBYQAOptimizer.interpolationPoints.setEntry(i38, i43, bOBYQAOptimizer.newPoint.getEntry(i43));
                        arrayRealVector5.setEntry(i43, bOBYQAOptimizer.bMatrix.getEntry(i38, i43));
                    }
                    arrayRealVector7 = arrayRealVector5;
                    while (i44 < i76) {
                        entry16 = 0.0d;
                        while (i65 < i41) {
                            entry16 += bOBYQAOptimizer.zMatrix.getEntry(i38, i65) * bOBYQAOptimizer.zMatrix.getEntry(i44, i65);
                        }
                        entry17 = 0.0d;
                        while (i66 < dimension) {
                            entry17 += bOBYQAOptimizer.interpolationPoints.getEntry(i44, i66) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i66);
                        }
                        d27 = entry16 * entry17;
                        i67 = 0;
                        while (i67 < dimension) {
                            arrayRealVector7.setEntry(i67, arrayRealVector7.getEntry(i67) + (bOBYQAOptimizer.interpolationPoints.getEntry(i44, i67) * d27));
                            i67++;
                            d27 = d27;
                        }
                    }
                    while (i45 < dimension) {
                        ArrayRealVector arrayRealVector112 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                        arrayRealVector112.setEntry(i45, arrayRealVector112.getEntry(i45) + (arrayRealVector7.getEntry(i45) * d16));
                    }
                    if (d14 < entry7) {
                        bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex = i38;
                        i59 = 0;
                        d26 = 0.0d;
                        i60 = 0;
                        while (i60 < dimension) {
                            int i912 = i38;
                            bOBYQAOptimizer.trustRegionCenterOffset.setEntry(i60, bOBYQAOptimizer.newPoint.getEntry(i60));
                            double entry310 = bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i60);
                            d26 += entry310 * entry310;
                            i64 = 0;
                            while (i64 <= i60) {
                                if (i64 < i60) {
                                    ArrayRealVector arrayRealVector113 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                    arrayRealVector113.setEntry(i60, arrayRealVector113.getEntry(i60) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i59) * bOBYQAOptimizer.trialStepPoint.getEntry(i64)));
                                }
                                ArrayRealVector arrayRealVector114 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                arrayRealVector114.setEntry(i64, arrayRealVector114.getEntry(i64) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i59) * bOBYQAOptimizer.trialStepPoint.getEntry(i60)));
                                i59++;
                                i64++;
                                d26 = d26;
                            }
                            i60++;
                            i38 = i912;
                        }
                        i46 = i38;
                        while (i61 < i76) {
                            entry14 = 0.0d;
                            while (i62 < dimension) {
                                entry14 += bOBYQAOptimizer.interpolationPoints.getEntry(i61, i62) * bOBYQAOptimizer.trialStepPoint.getEntry(i62);
                            }
                            entry15 = entry14 * bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i61);
                            i63 = 0;
                            while (i63 < dimension) {
                                ArrayRealVector arrayRealVector27 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                arrayRealVector27.setEntry(i63, arrayRealVector27.getEntry(i63) + (bOBYQAOptimizer.interpolationPoints.getEntry(i61, i63) * entry15));
                                i63++;
                                d26 = d26;
                            }
                        }
                        d39 = d26;
                    } else {
                        i46 = i38;
                    }
                    if (i84 > 0) {
                        while (i48 < i76) {
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i48, bOBYQAOptimizer.fAtInterpolationPoints.getEntry(i48) - bOBYQAOptimizer.fAtInterpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex));
                            arrayRealVector11.setEntry(i48, 0.0d);
                        }
                        arrayRealVector8 = arrayRealVector11;
                        while (i49 < i41) {
                            entry13 = 0.0d;
                            while (i57 < i76) {
                                entry13 += bOBYQAOptimizer.zMatrix.getEntry(i57, i49) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i57);
                            }
                            i58 = 0;
                            while (i58 < i76) {
                                arrayRealVector8.setEntry(i58, arrayRealVector8.getEntry(i58) + (bOBYQAOptimizer.zMatrix.getEntry(i58, i49) * entry13));
                                i58++;
                                entry13 = entry13;
                            }
                        }
                        i50 = 0;
                        while (i50 < i76) {
                            entry12 = 0.0d;
                            while (i56 < dimension) {
                                entry12 += bOBYQAOptimizer.interpolationPoints.getEntry(i50, i56) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i56);
                            }
                            arrayRealVector6.setEntry(i50, arrayRealVector8.getEntry(i50));
                            arrayRealVector8.setEntry(i50, entry12 * arrayRealVector8.getEntry(i50));
                            i50++;
                            arrayRealVector7 = arrayRealVector7;
                            i41 = i41;
                        }
                        i25 = i41;
                        arrayRealVector2 = arrayRealVector7;
                        arrayRealVector3 = arrayRealVector6;
                        d23 = 0.0d;
                        d24 = 0.0d;
                        i51 = 0;
                        while (i51 < dimension) {
                            double d611 = d14;
                            entry11 = 0.0d;
                            while (i55 < i76) {
                                entry11 += (bOBYQAOptimizer.bMatrix.getEntry(i55, i51) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i55)) + (bOBYQAOptimizer.interpolationPoints.getEntry(i55, i51) * arrayRealVector8.getEntry(i55));
                            }
                            ArrayRealVector arrayRealVector28 = arrayRealVector8;
                            if (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i51) == bOBYQAOptimizer.lowerDifference.getEntry(i51)) {
                                double dMin5 = FastMath.min(0.0d, bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i51));
                                d23 += dMin5 * dMin5;
                                double dMin6 = FastMath.min(0.0d, entry11);
                                d24 += dMin6 * dMin6;
                            } else {
                                if (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i51) == bOBYQAOptimizer.upperDifference.getEntry(i51)) {
                                    double dMax15 = FastMath.max(0.0d, bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i51));
                                    d23 += dMax15 * dMax15;
                                    double dMax16 = FastMath.max(0.0d, entry11);
                                    d25 = dMax16 * dMax16;
                                } else {
                                    double entry311 = bOBYQAOptimizer.gradientAtTrustRegionCenter.getEntry(i51);
                                    d23 += entry311 * entry311;
                                    d25 = entry11 * entry11;
                                }
                                d24 += d25;
                            }
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i76 + i51, entry11);
                            i51++;
                            d14 = d611;
                            i46 = i46;
                            arrayRealVector8 = arrayRealVector28;
                        }
                        arrayRealVector11 = arrayRealVector8;
                        i47 = i46;
                        d22 = d14;
                        i52 = i82 + 1;
                        if (d23 < d24 * 10.0d) {
                            i52 = 0;
                        }
                        i79 = i31;
                        if (i52 >= 3) {
                            iMax = FastMath.max(i76, i79);
                            i53 = i52;
                            i54 = 0;
                            while (i54 < iMax) {
                                if (i54 < dimension) {
                                    bOBYQAOptimizer.gradientAtTrustRegionCenter.setEntry(i54, bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i76 + i54));
                                }
                                if (i54 < i76) {
                                    bOBYQAOptimizer.modelSecondDerivativesParameters.setEntry(i54, arrayRealVector3.getEntry(i54));
                                }
                                if (i54 < i79) {
                                    bOBYQAOptimizer.modelSecondDerivativesValues.setEntry(i54, 0.0d);
                                }
                                i54++;
                                i53 = 0;
                            }
                            i82 = i53;
                        } else {
                            i82 = i52;
                        }
                    } else {
                        i47 = i46;
                        d22 = d14;
                        i25 = i41;
                        arrayRealVector2 = arrayRealVector7;
                        i79 = i31;
                    }
                    if (i84 == 0) {
                        arrayRealVector3 = arrayRealVector6;
                    } else {
                        arrayRealVector3 = arrayRealVector6;
                        if (d22 <= entry7 + (entry9 * ONE_OVER_TEN)) {
                            double d612 = TWO * d20;
                            d8 = d21;
                            double d613 = d8 * 10.0d;
                            dMax4 = FastMath.max(d612 * d612, d613 * d613);
                            d46 = d22;
                            d41 = d52;
                            dMax3 = d20;
                            i27 = 650;
                            double d614 = d47;
                            d47 = dAbs;
                            d49 = d48;
                            d48 = d614;
                            printState(i27);
                            i83 = -1;
                            while (i28 < i76) {
                                d12 = 0.0d;
                                while (i29 < dimension) {
                                    double entry312 = bOBYQAOptimizer.interpolationPoints.getEntry(i28, i29) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i29);
                                    d12 += entry312 * entry312;
                                }
                                if (d12 > dMax4) {
                                    i83 = i28;
                                    dMax4 = d12;
                                }
                            }
                            if (i83 >= 0) {
                                dSqrt2 = FastMath.sqrt(dMax4);
                                if (i84 == -1) {
                                    dMin = FastMath.min(dMax3 * ONE_OVER_TEN, dSqrt2 * HALF);
                                    if (dMin <= d8 * 1.5d) {
                                        dMax3 = d8;
                                    } else {
                                        dMax3 = dMin;
                                    }
                                }
                                double dMax17 = FastMath.max(FastMath.min(dSqrt2 * ONE_OVER_TEN, dMax3), d8);
                                d45 = dMax17;
                                d41 = dMax17 * dMax17;
                                arrayRealVector11 = arrayRealVector11;
                                dMin2 = d11;
                                i78 = i25;
                                i85 = 90;
                                i81 = 60;
                                i84 = 0;
                            } else {
                                if (i84 == -1) {
                                    i84 = i84;
                                    d45 = d45;
                                    arrayRealVector11 = arrayRealVector11;
                                    dMin2 = d11;
                                    i78 = i25;
                                    i85 = 680;
                                } else {
                                    if (d51 <= 0.0d) {
                                        d9 = d11;
                                        if (FastMath.max(dMax3, d9) <= d8) {
                                            i26 = 680;
                                            printState(i26);
                                            d10 = d41;
                                            dSqrt = bOBYQAOptimizer.stoppingTrustRegionRadius;
                                            if (d8 > dSqrt) {
                                                if (i84 == -1) {
                                                    break;
                                                    break;
                                                }
                                                dMin2 = d9;
                                                i84 = i84;
                                                d41 = d10;
                                                d45 = d45;
                                                arrayRealVector11 = arrayRealVector11;
                                                i78 = i25;
                                                i85 = 360;
                                            } else {
                                                double d615 = d8 * HALF;
                                                d51 = d8 / dSqrt;
                                                if (d51 > SIXTEEN) {
                                                    if (d51 <= TWO_HUNDRED_FIFTY) {
                                                        dSqrt = FastMath.sqrt(d51) * bOBYQAOptimizer.stoppingTrustRegionRadius;
                                                    } else {
                                                        dSqrt = d8 * ONE_OVER_TEN;
                                                    }
                                                }
                                                dMax3 = FastMath.max(d615, dSqrt);
                                                evaluations2 = getEvaluations();
                                                arrayRealVector10 = arrayRealVector3;
                                                dMin2 = d9;
                                                arrayRealVector9 = arrayRealVector2;
                                                d45 = d45;
                                                arrayRealVector11 = arrayRealVector11;
                                                i78 = i25;
                                                i81 = 60;
                                                i84 = 0;
                                                d38 = dSqrt;
                                                d41 = d10;
                                                i85 = 60;
                                            }
                                        } else {
                                            dMin2 = d9;
                                        }
                                    } else {
                                        dMin2 = d11;
                                    }
                                    i78 = i25;
                                    i85 = 60;
                                }
                                i81 = 60;
                            }
                            arrayRealVector10 = arrayRealVector3;
                            d38 = d8;
                            arrayRealVector9 = arrayRealVector2;
                        }
                    }
                    arrayRealVector10 = arrayRealVector3;
                    i84 = i84;
                    d41 = d52;
                    arrayRealVector9 = arrayRealVector2;
                    arrayRealVector11 = arrayRealVector11;
                    dMax3 = d20;
                    dMin2 = d11;
                    d38 = d21;
                    i78 = i25;
                    i85 = 60;
                    i81 = 60;
                    double d616 = d22;
                    i83 = i47;
                    d46 = d616;
                    d45 = d45;
                    double d617 = d47;
                    d47 = dAbs;
                    d49 = d48;
                    d48 = d617;
                }
            } else {
                i78 = i78;
                ArrayRealVector arrayRealVector29 = arrayRealVector9;
                d45 = d45;
                d2 = d38;
                d3 = dMax3;
                i3 = dimension;
                i84 = i84;
                i79 = i79;
                arrayRealVector11 = arrayRealVector11;
                d41 = d52;
                arrayRealVector9 = arrayRealVector29;
                i2 = 90;
                arrayRealVector10 = arrayRealVector10;
                printState(i2);
                if (d41 <= ONE_OVER_A_THOUSAND * d39) {
                    d4 = ONE_OVER_FOUR * d39;
                    i4 = 0;
                    entry = 0.0d;
                    while (i4 < i76) {
                        entry += bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i4);
                        double d81 = d41;
                        entry5 = (-0.5d) * d39;
                        i19 = 0;
                        while (i19 < i3) {
                            entry5 += bOBYQAOptimizer.interpolationPoints.getEntry(i4, i19) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i19);
                            i19++;
                            d48 = d48;
                            d2 = d2;
                        }
                        double d82 = d48;
                        double d83 = d2;
                        arrayRealVector10.setEntry(i4, entry5);
                        d6 = d4 - (entry5 * HALF);
                        i20 = 0;
                        while (i20 < i3) {
                            arrayRealVector9.setEntry(i20, bOBYQAOptimizer.bMatrix.getEntry(i4, i20));
                            double d84 = entry5;
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i20, (bOBYQAOptimizer.interpolationPoints.getEntry(i4, i20) * entry5) + (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i20) * d6));
                            i21 = i76 + i20;
                            i22 = 0;
                            while (i22 <= i20) {
                                Array2DRowRealMatrix array2DRowRealMatrix = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix.setEntry(i21, i22, array2DRowRealMatrix.getEntry(i21, i22) + (arrayRealVector9.getEntry(i20) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i22)) + (bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i20) * arrayRealVector9.getEntry(i22)));
                                i22++;
                                d6 = d6;
                            }
                            i20++;
                            entry5 = d84;
                        }
                        i4++;
                        d41 = d81;
                        d48 = d82;
                        d2 = d83;
                    }
                    d41 = d41;
                    d48 = d48;
                    d38 = d2;
                    i5 = i78;
                    i6 = 0;
                    while (i6 < i5) {
                        d5 = 0.0d;
                        entry2 = 0.0d;
                        i12 = 0;
                        while (i12 < i76) {
                            double entry49 = d5 + bOBYQAOptimizer.zMatrix.getEntry(i12, i6);
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i12, arrayRealVector10.getEntry(i12) * bOBYQAOptimizer.zMatrix.getEntry(i12, i6));
                            entry2 += bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i12);
                            i12++;
                            d5 = entry49;
                            i5 = i5;
                        }
                        int i115 = i5;
                        i13 = 0;
                        while (i13 < i3) {
                            double d85 = d5;
                            entry4 = ((d4 * d5) - (entry2 * HALF)) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i13);
                            for (i17 = 0; i17 < i76; i17++) {
                                entry4 += bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i17) * bOBYQAOptimizer.interpolationPoints.getEntry(i17, i13);
                            }
                            arrayRealVector9.setEntry(i13, entry4);
                            i18 = 0;
                            while (i18 < i76) {
                                Array2DRowRealMatrix array2DRowRealMatrix2 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix2.setEntry(i18, i13, array2DRowRealMatrix2.getEntry(i18, i13) + (bOBYQAOptimizer.zMatrix.getEntry(i18, i6) * entry4));
                                i18++;
                                d4 = d4;
                            }
                            i13++;
                            d5 = d85;
                        }
                        double d86 = d4;
                        for (i14 = 0; i14 < i3; i14++) {
                            i15 = i14 + i76;
                            entry3 = arrayRealVector9.getEntry(i14);
                            for (i16 = 0; i16 <= i14; i16++) {
                                Array2DRowRealMatrix array2DRowRealMatrix3 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix3.setEntry(i15, i16, array2DRowRealMatrix3.getEntry(i15, i16) + (arrayRealVector9.getEntry(i16) * entry3));
                            }
                        }
                        i6++;
                        d4 = d86;
                        i5 = i115;
                    }
                    i78 = i5;
                    i7 = 0;
                    for (i8 = 0; i8 < i3; i8++) {
                        arrayRealVector9.setEntry(i8, entry * (-0.5d) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i8));
                        for (i10 = 0; i10 < i76; i10++) {
                            arrayRealVector9.setEntry(i8, arrayRealVector9.getEntry(i8) + (bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i10) * bOBYQAOptimizer.interpolationPoints.getEntry(i10, i8)));
                            Array2DRowRealMatrix array2DRowRealMatrix4 = bOBYQAOptimizer.interpolationPoints;
                            array2DRowRealMatrix4.setEntry(i10, i8, array2DRowRealMatrix4.getEntry(i10, i8) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i8));
                        }
                        for (i11 = 0; i11 <= i8; i11++) {
                            ArrayRealVector arrayRealVector30 = bOBYQAOptimizer.modelSecondDerivativesValues;
                            arrayRealVector30.setEntry(i7, arrayRealVector30.getEntry(i7) + (arrayRealVector9.getEntry(i11) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i8)) + (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i11) * arrayRealVector9.getEntry(i8)));
                            Array2DRowRealMatrix array2DRowRealMatrix5 = bOBYQAOptimizer.bMatrix;
                            array2DRowRealMatrix5.setEntry(i76 + i11, i8, array2DRowRealMatrix5.getEntry(i76 + i8, i11));
                            i7++;
                        }
                    }
                    for (i9 = 0; i9 < i3; i9++) {
                        ArrayRealVector arrayRealVector31 = bOBYQAOptimizer.originShift;
                        arrayRealVector31.setEntry(i9, arrayRealVector31.getEntry(i9) + bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        ArrayRealVector arrayRealVector32 = bOBYQAOptimizer.newPoint;
                        arrayRealVector32.setEntry(i9, arrayRealVector32.getEntry(i9) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        ArrayRealVector arrayRealVector33 = bOBYQAOptimizer.lowerDifference;
                        arrayRealVector33.setEntry(i9, arrayRealVector33.getEntry(i9) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        ArrayRealVector arrayRealVector34 = bOBYQAOptimizer.upperDifference;
                        arrayRealVector34.setEntry(i9, arrayRealVector34.getEntry(i9) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        bOBYQAOptimizer.trustRegionCenterOffset.setEntry(i9, 0.0d);
                    }
                    d39 = 0.0d;
                } else {
                    d41 = d41;
                    d48 = d48;
                    d38 = d2;
                }
                if (i84 == 0) {
                    i85 = 210;
                } else {
                    i85 = 230;
                }
                i81 = 60;
                dimension = i3;
                dMax3 = d3;
            }
            printState(i81);
            i83 = i83;
            int i116 = dimension;
            double d87 = dMax3;
            arrayRealVector10 = arrayRealVector10;
            arrayRealVector11 = arrayRealVector11;
            i2 = 90;
            i84 = -1;
            double[] dArrTrsbox = trsbox(dMax3, new ArrayRealVector(dimension), new ArrayRealVector(dimension), new ArrayRealVector(dimension), new ArrayRealVector(dimension), new ArrayRealVector(dimension));
            d41 = dArrTrsbox[0];
            double d88 = dArrTrsbox[1];
            dMin2 = FastMath.min(d87, FastMath.sqrt(d41));
            if (dMin2 < d2 * HALF) {
                double d89 = d2 * 10.0d;
                dMax4 = d89 * d89;
                if (getEvaluations() <= evaluations2 + 2) {
                    dMax3 = d87;
                    d38 = d2;
                    arrayRealVector10 = arrayRealVector10;
                    i79 = i79;
                    dimension = i116;
                    arrayRealVector11 = arrayRealVector11;
                    arrayRealVector9 = arrayRealVector9;
                    d45 = d45;
                    i78 = i78;
                    i85 = 650;
                    i81 = 60;
                    bOBYQAOptimizer = this;
                } else {
                    double d90 = d47;
                    double d91 = d48;
                    double d92 = d49;
                    double dMax18 = FastMath.max(FastMath.max(d90, d91), d92);
                    double d93 = ONE_OVER_EIGHT * d2 * d2;
                    if (d88 <= 0.0d || dMax18 <= d93 * d88) {
                        double d94 = dMax18 / d2;
                        i3 = i116;
                        int i117 = 0;
                        while (true) {
                            if (i117 >= i3) {
                                d49 = d92;
                                d7 = d90;
                                d3 = d87;
                                arrayRealVector = arrayRealVector9;
                                bOBYQAOptimizer = this;
                                break;
                            }
                            d3 = d87;
                            bOBYQAOptimizer = this;
                            if (bOBYQAOptimizer.newPoint.getEntry(i117) == bOBYQAOptimizer.lowerDifference.getEntry(i117)) {
                                arrayRealVector = arrayRealVector9;
                                entry6 = arrayRealVector.getEntry(i117);
                            } else {
                                arrayRealVector = arrayRealVector9;
                                entry6 = d94;
                            }
                            d49 = d92;
                            d7 = d90;
                            if (bOBYQAOptimizer.newPoint.getEntry(i117) == bOBYQAOptimizer.upperDifference.getEntry(i117)) {
                                entry6 = -arrayRealVector.getEntry(i117);
                            }
                            if (entry6 < d94) {
                                double entry50 = bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(((i117 * i117) + i117) / 2);
                                for (int i118 = 0; i118 < i76; i118++) {
                                    double entry51 = bOBYQAOptimizer.interpolationPoints.getEntry(i118, i117);
                                    entry50 += bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i118) * entry51 * entry51;
                                }
                                if (entry6 + (entry50 * HALF * d2) < d94) {
                                    break;
                                }
                            }
                            i117++;
                            arrayRealVector9 = arrayRealVector;
                            d92 = d49;
                            d90 = d7;
                            d87 = d3;
                        }
                        d48 = d91;
                        d38 = d2;
                        arrayRealVector10 = arrayRealVector10;
                        i79 = i79;
                        arrayRealVector11 = arrayRealVector11;
                        d41 = d41;
                        d47 = d7;
                        d45 = d45;
                        i78 = i78;
                        i85 = 680;
                        i81 = 60;
                        arrayRealVector9 = arrayRealVector;
                        dimension = i3;
                        dMax3 = d3;
                    } else {
                        d49 = d92;
                        dMax3 = d87;
                        d48 = d91;
                        i79 = i79;
                        dimension = i116;
                        d41 = d41;
                        i78 = i78;
                        i85 = 650;
                        i81 = 60;
                        bOBYQAOptimizer = this;
                        d47 = d90;
                        d38 = d2;
                        arrayRealVector10 = arrayRealVector10;
                        arrayRealVector11 = arrayRealVector11;
                        arrayRealVector9 = arrayRealVector9;
                        d45 = d45;
                    }
                }
            } else {
                d3 = d87;
                i3 = i116;
                arrayRealVector9 = arrayRealVector9;
                bOBYQAOptimizer = this;
                i84 = i + 1;
                printState(i2);
                if (d41 <= ONE_OVER_A_THOUSAND * d39) {
                    d4 = ONE_OVER_FOUR * d39;
                    i4 = 0;
                    entry = 0.0d;
                    while (i4 < i76) {
                        entry += bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i4);
                        double d810 = d41;
                        entry5 = (-0.5d) * d39;
                        i19 = 0;
                        while (i19 < i3) {
                            entry5 += bOBYQAOptimizer.interpolationPoints.getEntry(i4, i19) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i19);
                            i19++;
                            d48 = d48;
                            d2 = d2;
                        }
                        double d811 = d48;
                        double d812 = d2;
                        arrayRealVector10.setEntry(i4, entry5);
                        d6 = d4 - (entry5 * HALF);
                        i20 = 0;
                        while (i20 < i3) {
                            arrayRealVector9.setEntry(i20, bOBYQAOptimizer.bMatrix.getEntry(i4, i20));
                            double d813 = entry5;
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i20, (bOBYQAOptimizer.interpolationPoints.getEntry(i4, i20) * entry5) + (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i20) * d6));
                            i21 = i76 + i20;
                            i22 = 0;
                            while (i22 <= i20) {
                                Array2DRowRealMatrix array2DRowRealMatrix6 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix6.setEntry(i21, i22, array2DRowRealMatrix6.getEntry(i21, i22) + (arrayRealVector9.getEntry(i20) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i22)) + (bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i20) * arrayRealVector9.getEntry(i22)));
                                i22++;
                                d6 = d6;
                            }
                            i20++;
                            entry5 = d813;
                        }
                        i4++;
                        d41 = d810;
                        d48 = d811;
                        d2 = d812;
                    }
                    d41 = d41;
                    d48 = d48;
                    d38 = d2;
                    i5 = i78;
                    i6 = 0;
                    while (i6 < i5) {
                        d5 = 0.0d;
                        entry2 = 0.0d;
                        i12 = 0;
                        while (i12 < i76) {
                            double entry410 = d5 + bOBYQAOptimizer.zMatrix.getEntry(i12, i6);
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i12, arrayRealVector10.getEntry(i12) * bOBYQAOptimizer.zMatrix.getEntry(i12, i6));
                            entry2 += bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i12);
                            i12++;
                            d5 = entry410;
                            i5 = i5;
                        }
                        int i119 = i5;
                        i13 = 0;
                        while (i13 < i3) {
                            double d814 = d5;
                            entry4 = ((d4 * d5) - (entry2 * HALF)) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i13);
                            while (i17 < i76) {
                                entry4 += bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i17) * bOBYQAOptimizer.interpolationPoints.getEntry(i17, i13);
                            }
                            arrayRealVector9.setEntry(i13, entry4);
                            i18 = 0;
                            while (i18 < i76) {
                                Array2DRowRealMatrix array2DRowRealMatrix7 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix7.setEntry(i18, i13, array2DRowRealMatrix7.getEntry(i18, i13) + (bOBYQAOptimizer.zMatrix.getEntry(i18, i6) * entry4));
                                i18++;
                                d4 = d4;
                            }
                            i13++;
                            d5 = d814;
                        }
                        double d815 = d4;
                        while (i14 < i3) {
                            i15 = i14 + i76;
                            entry3 = arrayRealVector9.getEntry(i14);
                            while (i16 <= i14) {
                                Array2DRowRealMatrix array2DRowRealMatrix8 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix8.setEntry(i15, i16, array2DRowRealMatrix8.getEntry(i15, i16) + (arrayRealVector9.getEntry(i16) * entry3));
                            }
                        }
                        i6++;
                        d4 = d815;
                        i5 = i119;
                    }
                    i78 = i5;
                    i7 = 0;
                    while (i8 < i3) {
                        arrayRealVector9.setEntry(i8, entry * (-0.5d) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i8));
                        while (i10 < i76) {
                            arrayRealVector9.setEntry(i8, arrayRealVector9.getEntry(i8) + (bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i10) * bOBYQAOptimizer.interpolationPoints.getEntry(i10, i8)));
                            Array2DRowRealMatrix array2DRowRealMatrix9 = bOBYQAOptimizer.interpolationPoints;
                            array2DRowRealMatrix9.setEntry(i10, i8, array2DRowRealMatrix9.getEntry(i10, i8) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i8));
                        }
                        while (i11 <= i8) {
                            ArrayRealVector arrayRealVector35 = bOBYQAOptimizer.modelSecondDerivativesValues;
                            arrayRealVector35.setEntry(i7, arrayRealVector35.getEntry(i7) + (arrayRealVector9.getEntry(i11) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i8)) + (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i11) * arrayRealVector9.getEntry(i8)));
                            Array2DRowRealMatrix array2DRowRealMatrix10 = bOBYQAOptimizer.bMatrix;
                            array2DRowRealMatrix10.setEntry(i76 + i11, i8, array2DRowRealMatrix10.getEntry(i76 + i8, i11));
                            i7++;
                        }
                    }
                    while (i9 < i3) {
                        ArrayRealVector arrayRealVector36 = bOBYQAOptimizer.originShift;
                        arrayRealVector36.setEntry(i9, arrayRealVector36.getEntry(i9) + bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        ArrayRealVector arrayRealVector37 = bOBYQAOptimizer.newPoint;
                        arrayRealVector37.setEntry(i9, arrayRealVector37.getEntry(i9) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        ArrayRealVector arrayRealVector38 = bOBYQAOptimizer.lowerDifference;
                        arrayRealVector38.setEntry(i9, arrayRealVector38.getEntry(i9) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        ArrayRealVector arrayRealVector39 = bOBYQAOptimizer.upperDifference;
                        arrayRealVector39.setEntry(i9, arrayRealVector39.getEntry(i9) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i9));
                        bOBYQAOptimizer.trustRegionCenterOffset.setEntry(i9, 0.0d);
                    }
                    d39 = 0.0d;
                } else {
                    d41 = d41;
                    d48 = d48;
                    d38 = d2;
                }
                if (i84 == 0) {
                    i85 = 210;
                } else {
                    i85 = 230;
                }
                i81 = 60;
                dimension = i3;
                dMax3 = d3;
            }
        }
        printState(720);
        if (bOBYQAOptimizer.fAtInterpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex) > d40) {
            return d46;
        }
        for (int i120 = 0; i120 < dimension; i120++) {
            bOBYQAOptimizer.currentBest.setEntry(i120, FastMath.min(FastMath.max(dArr[i120], bOBYQAOptimizer.originShift.getEntry(i120) + bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i120)), dArr2[i120]));
            if (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i120) == bOBYQAOptimizer.lowerDifference.getEntry(i120)) {
                bOBYQAOptimizer.currentBest.setEntry(i120, dArr[i120]);
            }
            if (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i120) == bOBYQAOptimizer.upperDifference.getEntry(i120)) {
                bOBYQAOptimizer.currentBest.setEntry(i120, dArr2[i120]);
            }
        }
        return bOBYQAOptimizer.fAtInterpolationPoints.getEntry(bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String caller(int i) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i];
        return stackTraceElement.getMethodName() + " (at line " + stackTraceElement.getLineNumber() + ")";
    }

    private void prelim(double[] dArr, double[] dArr2) {
        int i;
        int i2;
        double d2;
        double d3;
        long j;
        double d4;
        int i3;
        int i4;
        double d5;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i5 = this.numberOfInterpolationPoints;
        int rowDimension = this.bMatrix.getRowDimension();
        double d6 = this.initialTrustRegionRadius;
        double d7 = d6 * d6;
        double d8 = 1.0d / d7;
        int i6 = dimension + 1;
        for (int i7 = 0; i7 < dimension; i7++) {
            this.originShift.setEntry(i7, this.currentBest.getEntry(i7));
            for (int i8 = 0; i8 < i5; i8++) {
                this.interpolationPoints.setEntry(i8, i7, 0.0d);
            }
            for (int i9 = 0; i9 < rowDimension; i9++) {
                this.bMatrix.setEntry(i9, i7, 0.0d);
            }
        }
        int i10 = (dimension * i6) / 2;
        for (int i11 = 0; i11 < i10; i11++) {
            this.modelSecondDerivativesValues.setEntry(i11, 0.0d);
        }
        for (int i12 = 0; i12 < i5; i12++) {
            this.modelSecondDerivativesParameters.setEntry(i12, 0.0d);
            int i13 = i5 - i6;
            for (int i14 = 0; i14 < i13; i14++) {
                this.zMatrix.setEntry(i12, i14, 0.0d);
            }
        }
        double d9 = Double.NaN;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            int evaluations = getEvaluations();
            int i17 = evaluations - dimension;
            int i18 = evaluations - 1;
            int i19 = i17 - 1;
            int i20 = dimension * 2;
            if (evaluations <= i20) {
                if (evaluations < 1 || evaluations > dimension) {
                    int i21 = i15;
                    i = i17;
                    if (evaluations > dimension) {
                        i = i;
                        double entry = this.interpolationPoints.getEntry(i, i19);
                        int i22 = i16;
                        d8 = d8;
                        double dMax = -this.initialTrustRegionRadius;
                        if (this.lowerDifference.getEntry(i19) == 0.0d) {
                            dMax = FastMath.min(this.initialTrustRegionRadius * TWO, this.upperDifference.getEntry(i19));
                        }
                        if (this.upperDifference.getEntry(i19) == 0.0d) {
                            dMax = FastMath.max(this.initialTrustRegionRadius * (-2.0d), this.lowerDifference.getEntry(i19));
                        }
                        this.interpolationPoints.setEntry(evaluations, i19, dMax);
                        d3 = entry;
                        double d10 = dMax;
                        i16 = i22;
                        i2 = i21;
                        d2 = d10;
                    } else {
                        i2 = i21;
                        d3 = 0.0d;
                    }
                } else {
                    i = i17;
                    d3 = this.initialTrustRegionRadius;
                    int i23 = i15;
                    if (this.upperDifference.getEntry(i18) == 0.0d) {
                        d3 = -d3;
                    }
                    this.interpolationPoints.setEntry(evaluations, i18, d3);
                    i2 = i23;
                }
                d2 = 0.0d;
            } else {
                d8 = d8;
                i = i17;
                int i24 = (evaluations - i6) / dimension;
                i16 = (evaluations - (i24 * dimension)) - dimension;
                i2 = i24 + i16;
                if (i2 > dimension) {
                    i16 = i2 - dimension;
                    i2 = i16;
                }
                int i25 = i2 - 1;
                int i26 = i16 - 1;
                Array2DRowRealMatrix array2DRowRealMatrix = this.interpolationPoints;
                array2DRowRealMatrix.setEntry(evaluations, i25, array2DRowRealMatrix.getEntry(i2, i25));
                Array2DRowRealMatrix array2DRowRealMatrix2 = this.interpolationPoints;
                array2DRowRealMatrix2.setEntry(evaluations, i26, array2DRowRealMatrix2.getEntry(i16, i26));
                d2 = 0.0d;
                d3 = 0.0d;
            }
            int i27 = 0;
            while (i27 < dimension) {
                int i28 = i2;
                double d11 = d2;
                int i29 = dimension;
                int i30 = i5;
                this.currentBest.setEntry(i27, FastMath.min(FastMath.max(dArr[i27], this.originShift.getEntry(i27) + this.interpolationPoints.getEntry(evaluations, i27)), dArr2[i27]));
                if (this.interpolationPoints.getEntry(evaluations, i27) == this.lowerDifference.getEntry(i27)) {
                    this.currentBest.setEntry(i27, dArr[i27]);
                }
                if (this.interpolationPoints.getEntry(evaluations, i27) == this.upperDifference.getEntry(i27)) {
                    this.currentBest.setEntry(i27, dArr2[i27]);
                }
                i27++;
                dimension = i29;
                i2 = i28;
                d2 = d11;
                i5 = i30;
            }
            int i31 = i5;
            int i32 = i2;
            double d12 = d2;
            int i33 = dimension;
            double dComputeObjectiveValue = computeObjectiveValue(this.currentBest.toArray());
            if (!this.isMinimize) {
                dComputeObjectiveValue = -dComputeObjectiveValue;
            }
            int evaluations2 = getEvaluations();
            this.fAtInterpolationPoints.setEntry(evaluations, dComputeObjectiveValue);
            if (evaluations2 == 1) {
                this.trustRegionCenterInterpolationPointIndex = 0;
                d9 = dComputeObjectiveValue;
            } else if (dComputeObjectiveValue < this.fAtInterpolationPoints.getEntry(this.trustRegionCenterInterpolationPointIndex)) {
                this.trustRegionCenterInterpolationPointIndex = evaluations;
            }
            if (evaluations2 > i20 + 1) {
                i33 = i33;
                j = 0;
                d4 = d8;
                this.zMatrix.setEntry(0, i19, d4);
                this.zMatrix.setEntry(evaluations, i19, d4);
                double d13 = -d4;
                i3 = i32;
                this.zMatrix.setEntry(i3, i19, d13);
                this.zMatrix.setEntry(i16, i19, d13);
                int i34 = i3 - 1;
                this.modelSecondDerivativesValues.setEntry((((i3 * i34) / 2) + i16) - 1, (((d9 - this.fAtInterpolationPoints.getEntry(i3)) - this.fAtInterpolationPoints.getEntry(i16)) + dComputeObjectiveValue) / (this.interpolationPoints.getEntry(evaluations, i34) * this.interpolationPoints.getEntry(evaluations, i16 - 1)));
            } else if (evaluations2 < 2 || evaluations2 > i6) {
                i31 = i31;
                if (evaluations2 >= i33 + 2) {
                    double d14 = (dComputeObjectiveValue - d9) / d12;
                    double d15 = d12 - d3;
                    this.modelSecondDerivativesValues.setEntry((((i + 1) * i) / 2) - 1, ((d14 - this.gradientAtTrustRegionCenter.getEntry(i19)) * TWO) / d15);
                    ArrayRealVector arrayRealVector = this.gradientAtTrustRegionCenter;
                    arrayRealVector.setEntry(i19, ((arrayRealVector.getEntry(i19) * d12) - (d14 * d3)) / d15);
                    double d16 = d3 * d12;
                    j = 0;
                    if (d16 < 0.0d) {
                        i4 = i;
                        if (dComputeObjectiveValue < this.fAtInterpolationPoints.getEntry(i4)) {
                            ArrayRealVector arrayRealVector2 = this.fAtInterpolationPoints;
                            i31 = i31;
                            i33 = i33;
                            arrayRealVector2.setEntry(evaluations, arrayRealVector2.getEntry(i4));
                            this.fAtInterpolationPoints.setEntry(i4, dComputeObjectiveValue);
                            if (this.trustRegionCenterInterpolationPointIndex == evaluations) {
                                this.trustRegionCenterInterpolationPointIndex = i4;
                            }
                            d5 = d12;
                            this.interpolationPoints.setEntry(i4, i19, d5);
                            this.interpolationPoints.setEntry(evaluations, i19, d3);
                        }
                        this.bMatrix.setEntry(0, i19, (-(d3 + d5)) / d16);
                        this.bMatrix.setEntry(evaluations, i19, (-0.5d) / this.interpolationPoints.getEntry(i4, i19));
                        Array2DRowRealMatrix array2DRowRealMatrix3 = this.bMatrix;
                        array2DRowRealMatrix3.setEntry(i4, i19, (-array2DRowRealMatrix3.getEntry(0, i19)) - this.bMatrix.getEntry(evaluations, i19));
                        this.zMatrix.setEntry(0, i19, FastMath.sqrt(TWO) / d16);
                        this.zMatrix.setEntry(evaluations, i19, FastMath.sqrt(HALF) / d7);
                        Array2DRowRealMatrix array2DRowRealMatrix4 = this.zMatrix;
                        array2DRowRealMatrix4.setEntry(i4, i19, (-array2DRowRealMatrix4.getEntry(0, i19)) - this.zMatrix.getEntry(evaluations, i19));
                    } else {
                        i4 = i;
                    }
                    d5 = d12;
                    this.bMatrix.setEntry(0, i19, (-(d3 + d5)) / d16);
                    this.bMatrix.setEntry(evaluations, i19, (-0.5d) / this.interpolationPoints.getEntry(i4, i19));
                    Array2DRowRealMatrix array2DRowRealMatrix5 = this.bMatrix;
                    array2DRowRealMatrix5.setEntry(i4, i19, (-array2DRowRealMatrix5.getEntry(0, i19)) - this.bMatrix.getEntry(evaluations, i19));
                    this.zMatrix.setEntry(0, i19, FastMath.sqrt(TWO) / d16);
                    this.zMatrix.setEntry(evaluations, i19, FastMath.sqrt(HALF) / d7);
                    Array2DRowRealMatrix array2DRowRealMatrix6 = this.zMatrix;
                    array2DRowRealMatrix6.setEntry(i4, i19, (-array2DRowRealMatrix6.getEntry(0, i19)) - this.zMatrix.getEntry(evaluations, i19));
                } else {
                    i31 = i31;
                    i33 = i33;
                    j = 0;
                }
                i3 = i32;
                d4 = d8;
            } else {
                this.gradientAtTrustRegionCenter.setEntry(i18, (dComputeObjectiveValue - d9) / d3);
                if (i31 < evaluations2 + i33) {
                    double d17 = 1.0d / d3;
                    this.bMatrix.setEntry(0, i18, -d17);
                    this.bMatrix.setEntry(evaluations, i18, d17);
                    this.bMatrix.setEntry(i31 + i18, i18, (-0.5d) * d7);
                }
                i31 = i31;
                i33 = i33;
                i3 = i32;
                d4 = d8;
                j = 0;
            }
            i5 = i31;
            if (getEvaluations() >= i5) {
                return;
            }
            d8 = d4;
            dimension = i33;
            i15 = i3;
            d7 = d7;
        }
    }

    private static void printMethod() {
    }

    private static void printState(int i) {
    }

    private void setup(double[] dArr, double[] dArr2) {
        printMethod();
        int length = getStartPoint().length;
        if (length < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
        }
        int i = length + 2;
        int i2 = length + 1;
        int[] iArr = {i, (i * i2) / 2};
        int i3 = this.numberOfInterpolationPoints;
        if (i3 < iArr[0] || i3 > iArr[1]) {
            throw new OutOfRangeException(LocalizedFormats.NUMBER_OF_INTERPOLATION_POINTS, Integer.valueOf(this.numberOfInterpolationPoints), Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
        }
        this.boundDifference = new double[length];
        double d2 = this.initialTrustRegionRadius * TWO;
        double dMin = Double.POSITIVE_INFINITY;
        for (int i4 = 0; i4 < length; i4++) {
            double[] dArr3 = this.boundDifference;
            dArr3[i4] = dArr2[i4] - dArr[i4];
            dMin = FastMath.min(dMin, dArr3[i4]);
        }
        if (dMin < d2) {
            this.initialTrustRegionRadius = dMin / 3.0d;
        }
        this.bMatrix = new Array2DRowRealMatrix(this.numberOfInterpolationPoints + length, length);
        int i5 = this.numberOfInterpolationPoints;
        this.zMatrix = new Array2DRowRealMatrix(i5, (i5 - length) - 1);
        this.interpolationPoints = new Array2DRowRealMatrix(this.numberOfInterpolationPoints, length);
        this.originShift = new ArrayRealVector(length);
        this.fAtInterpolationPoints = new ArrayRealVector(this.numberOfInterpolationPoints);
        this.trustRegionCenterOffset = new ArrayRealVector(length);
        this.gradientAtTrustRegionCenter = new ArrayRealVector(length);
        this.lowerDifference = new ArrayRealVector(length);
        this.upperDifference = new ArrayRealVector(length);
        this.modelSecondDerivativesParameters = new ArrayRealVector(this.numberOfInterpolationPoints);
        this.newPoint = new ArrayRealVector(length);
        this.alternativeNewPoint = new ArrayRealVector(length);
        this.trialStepPoint = new ArrayRealVector(length);
        this.lagrangeValuesAtNewPoint = new ArrayRealVector(this.numberOfInterpolationPoints + length);
        this.modelSecondDerivativesValues = new ArrayRealVector((length * i2) / 2);
    }

    /* JADX WARN: Code duplicated, block: B:223:0x07a4  */
    /* JADX WARN: Code duplicated, block: B:226:0x07c4  */
    /* JADX WARN: Code duplicated, block: B:228:0x07cd  */
    /* JADX WARN: Code duplicated, block: B:230:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:231:0x0801  */
    /* JADX WARN: Code duplicated, block: B:248:0x08a1 A[PHI: r7 r30
      0x08a1: PHI (r7v9 int) = (r54v1 int), (r7v4 int) binds: [B:247:0x089f, B:255:0x08d2] A[DONT_GENERATE, DONT_INLINE]
      0x08a1: PHI (r30v5 double) = (r30v1 double), (r30v2 double) binds: [B:247:0x089f, B:255:0x08d2] A[DONT_GENERATE, DONT_INLINE]] */
    private double[] trsbox(double d2, ArrayRealVector arrayRealVector, ArrayRealVector arrayRealVector2, ArrayRealVector arrayRealVector3, ArrayRealVector arrayRealVector4, ArrayRealVector arrayRealVector5) {
        int i;
        int i2;
        double d3;
        int i3;
        int i4;
        int i5;
        int i6;
        ArrayRealVector arrayRealVector6;
        double d4;
        double d5;
        int i7;
        double d6;
        int i8;
        int i9;
        double d7;
        double d8;
        double d9;
        double dMin;
        double entry;
        double entry2;
        ArrayRealVector arrayRealVector7 = arrayRealVector2;
        ArrayRealVector arrayRealVector8 = arrayRealVector3;
        ArrayRealVector arrayRealVector9 = arrayRealVector5;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i10 = this.numberOfInterpolationPoints;
        int i11 = 0;
        for (int i12 = 0; i12 < dimension; i12++) {
            arrayRealVector7.setEntry(i12, 0.0d);
            if (this.trustRegionCenterOffset.getEntry(i12) <= this.lowerDifference.getEntry(i12)) {
                if (this.gradientAtTrustRegionCenter.getEntry(i12) >= 0.0d) {
                    arrayRealVector7.setEntry(i12, MINUS_ONE);
                }
            } else if (this.trustRegionCenterOffset.getEntry(i12) >= this.upperDifference.getEntry(i12) && this.gradientAtTrustRegionCenter.getEntry(i12) <= 0.0d) {
                arrayRealVector7.setEntry(i12, 1.0d);
            }
            if (arrayRealVector7.getEntry(i12) != 0.0d) {
                i11++;
            }
            this.trialStepPoint.setEntry(i12, 0.0d);
            arrayRealVector.setEntry(i12, this.gradientAtTrustRegionCenter.getEntry(i12));
        }
        double d10 = d2 * d2;
        char c = 'Z';
        char c2 = '2';
        char c3 = 30;
        char c4 = 20;
        char c5 = 20;
        double d11 = 0.0d;
        double d12 = 0.0d;
        int i13 = 0;
        double d13 = 0.0d;
        double d14 = 0.0d;
        double entry3 = 0.0d;
        double d15 = 0.0d;
        double d16 = 0.0d;
        int i14 = 0;
        double d17 = MINUS_ONE;
        double d18 = 0.0d;
        double d19 = 0.0d;
        double d20 = 0.0d;
        double d21 = 0.0d;
        int i15 = -1;
        double d22 = 0.0d;
        int i16 = 0;
        double d23 = 0.0d;
        while (true) {
            if (c5 == c4) {
                printState(20);
                i = 30;
                d12 = 0.0d;
            } else if (c5 == c3) {
                i = 30;
            } else if (c5 == c2) {
                arrayRealVector8 = arrayRealVector8;
                i2 = i10;
                d3 = d10;
                int i17 = i13;
                double d24 = d17;
                d22 = d22;
                arrayRealVector7 = arrayRealVector7;
                i14 = i14;
                int i18 = i15;
                printState(50);
                double d25 = d3;
                double entry4 = 0.0d;
                double entry5 = 0.0d;
                for (int i19 = 0; i19 < dimension; i19++) {
                    if (arrayRealVector7.getEntry(i19) == 0.0d) {
                        double entry6 = this.trialStepPoint.getEntry(i19);
                        d25 -= entry6 * entry6;
                        entry4 += arrayRealVector8.getEntry(i19) * this.trialStepPoint.getEntry(i19);
                        entry5 += arrayRealVector8.getEntry(i19) * arrayRealVector4.getEntry(i19);
                    }
                }
                if (d25 <= 0.0d) {
                    i15 = i18;
                    arrayRealVector7 = arrayRealVector7;
                    arrayRealVector8 = arrayRealVector8;
                    d22 = d22;
                    i14 = i14;
                    d10 = d3;
                    i10 = i2;
                    i13 = i17;
                    d17 = d24;
                    c5 = 'Z';
                    c = 'Z';
                    c2 = '2';
                    c3 = 30;
                    c4 = 20;
                    arrayRealVector9 = arrayRealVector5;
                } else {
                    double dSqrt = FastMath.sqrt((d11 * d25) + (entry4 * entry4));
                    double d26 = entry4 < 0.0d ? (dSqrt - entry4) / d11 : d25 / (dSqrt + entry4);
                    double dMin2 = entry5 > 0.0d ? FastMath.min(d26, d13 / entry5) : d26;
                    i4 = -1;
                    for (int i20 = 0; i20 < dimension; i20++) {
                        if (arrayRealVector8.getEntry(i20) != 0.0d) {
                            double entry7 = this.trustRegionCenterOffset.getEntry(i20) + this.trialStepPoint.getEntry(i20);
                            if (arrayRealVector8.getEntry(i20) > 0.0d) {
                                entry = this.upperDifference.getEntry(i20) - entry7;
                                entry2 = arrayRealVector8.getEntry(i20);
                            } else {
                                entry = this.lowerDifference.getEntry(i20) - entry7;
                                entry2 = arrayRealVector8.getEntry(i20);
                            }
                            double d27 = entry / entry2;
                            if (d27 < dMin2) {
                                i4 = i20;
                                dMin2 = d27;
                            }
                        }
                    }
                    if (dMin2 > 0.0d) {
                        i13 = i17 + 1;
                        double d28 = entry5 / d11;
                        if (i4 != -1 || d28 <= 0.0d) {
                            d7 = d26;
                            dMin = d24;
                        } else {
                            d7 = d26;
                            dMin = FastMath.min(d24, d28);
                            if (dMin == MINUS_ONE) {
                                dMin = d28;
                            }
                        }
                        int i21 = 0;
                        double d29 = 0.0d;
                        while (i21 < dimension) {
                            double d30 = dMin;
                            arrayRealVector.setEntry(i21, arrayRealVector.getEntry(i21) + (arrayRealVector4.getEntry(i21) * dMin2));
                            if (arrayRealVector7.getEntry(i21) == 0.0d) {
                                double entry8 = arrayRealVector.getEntry(i21);
                                d29 += entry8 * entry8;
                            }
                            ArrayRealVector arrayRealVector10 = this.trialStepPoint;
                            arrayRealVector10.setEntry(i21, arrayRealVector10.getEntry(i21) + (arrayRealVector8.getEntry(i21) * dMin2));
                            i21++;
                            dMin = d30;
                        }
                        d17 = dMin;
                        double dMax = FastMath.max((d13 - ((HALF * dMin2) * entry5)) * dMin2, 0.0d);
                        d15 += dMax;
                        d8 = 0.0d;
                        d9 = dMax;
                        double d31 = d13;
                        d13 = d29;
                        d23 = d31;
                    } else {
                        d7 = d26;
                        d8 = 0.0d;
                        d17 = d24;
                        i13 = i17;
                        d9 = 0.0d;
                    }
                    if (i4 >= 0) {
                        i11++;
                        arrayRealVector7.setEntry(i4, 1.0d);
                        if (arrayRealVector8.getEntry(i4) < d8) {
                            arrayRealVector7.setEntry(i4, MINUS_ONE);
                        }
                        double entry9 = this.trialStepPoint.getEntry(i4);
                        double d32 = d3 - (entry9 * entry9);
                        c5 = d32 <= d8 ? (char) 190 : (char) 20;
                        c = 'Z';
                        c2 = '2';
                        c3 = 30;
                        c4 = 20;
                        arrayRealVector9 = arrayRealVector5;
                        i15 = i4;
                        d10 = d32;
                        i10 = i2;
                    } else {
                        i5 = i16;
                        if (dMin2 >= d7) {
                            i3 = i13;
                            i6 = 90;
                            printState(i6);
                            i14 = i3;
                            i8 = 100;
                            d6 = 0.0d;
                            printState(i8);
                            if (i11 >= dimension - 1) {
                                arrayRealVector7 = arrayRealVector7;
                                arrayRealVector8 = arrayRealVector8;
                                i16 = i5;
                                i13 = i14;
                                i14 = i14;
                                d22 = d22;
                                i10 = i2;
                                d17 = d6;
                                c5 = 190;
                            } else {
                                d13 = 0.0d;
                                d14 = 0.0d;
                                entry3 = 0.0d;
                                for (i9 = 0; i9 < dimension; i9++) {
                                    if (arrayRealVector7.getEntry(i9) == 0.0d) {
                                        double entry10 = this.trialStepPoint.getEntry(i9);
                                        d14 += entry10 * entry10;
                                        entry3 += this.trialStepPoint.getEntry(i9) * arrayRealVector.getEntry(i9);
                                        double entry11 = arrayRealVector.getEntry(i9);
                                        d13 += entry11 * entry11;
                                        arrayRealVector8.setEntry(i9, this.trialStepPoint.getEntry(i9));
                                    } else {
                                        arrayRealVector8.setEntry(i9, 0.0d);
                                    }
                                }
                                arrayRealVector7 = arrayRealVector7;
                                arrayRealVector8 = arrayRealVector8;
                                i16 = i5;
                                i13 = i14;
                                d22 = d22;
                                i10 = i2;
                                d17 = d6;
                                c5 = 210;
                            }
                        } else if (i13 != i5 && d9 > 0.01d * d15) {
                            d12 = d13 / d23;
                            i13 = i13;
                            arrayRealVector7 = arrayRealVector7;
                            arrayRealVector8 = arrayRealVector8;
                            i16 = i5;
                            i14 = i14;
                            d22 = d22;
                            d17 = d17;
                            i10 = i2;
                            c5 = 30;
                        } else {
                            i13 = i13;
                            arrayRealVector7 = arrayRealVector7;
                            arrayRealVector8 = arrayRealVector8;
                            i16 = i5;
                            i14 = i14;
                            d22 = d22;
                            d17 = d17;
                            i10 = i2;
                            c5 = 190;
                        }
                        c = 'Z';
                        c2 = '2';
                        c3 = 30;
                        c4 = 20;
                        arrayRealVector9 = arrayRealVector5;
                        i15 = i4;
                        d10 = d3;
                    }
                }
            } else if (c5 == c) {
                arrayRealVector8 = arrayRealVector8;
                i2 = i10;
                d3 = d10;
                i3 = i13;
                i14 = i14;
                arrayRealVector7 = arrayRealVector7;
                i4 = i15;
                d22 = d22;
                i5 = i16;
                i6 = 90;
                printState(i6);
                i14 = i3;
                i8 = 100;
                d6 = 0.0d;
                printState(i8);
                if (i11 >= dimension - 1) {
                    arrayRealVector7 = arrayRealVector7;
                    arrayRealVector8 = arrayRealVector8;
                    i16 = i5;
                    i13 = i14;
                    i14 = i14;
                    d22 = d22;
                    i10 = i2;
                    d17 = d6;
                    c5 = 190;
                } else {
                    d13 = 0.0d;
                    d14 = 0.0d;
                    entry3 = 0.0d;
                    while (i9 < dimension) {
                        if (arrayRealVector7.getEntry(i9) == 0.0d) {
                            double entry12 = this.trialStepPoint.getEntry(i9);
                            d14 += entry12 * entry12;
                            entry3 += this.trialStepPoint.getEntry(i9) * arrayRealVector.getEntry(i9);
                            double entry13 = arrayRealVector.getEntry(i9);
                            d13 += entry13 * entry13;
                            arrayRealVector8.setEntry(i9, this.trialStepPoint.getEntry(i9));
                        } else {
                            arrayRealVector8.setEntry(i9, 0.0d);
                        }
                    }
                    arrayRealVector7 = arrayRealVector7;
                    arrayRealVector8 = arrayRealVector8;
                    i16 = i5;
                    i13 = i14;
                    d22 = d22;
                    i10 = i2;
                    d17 = d6;
                    c5 = 210;
                }
                c = 'Z';
                c2 = '2';
                c3 = 30;
                c4 = 20;
                arrayRealVector9 = arrayRealVector5;
                i15 = i4;
                d10 = d3;
            } else if (c5 != 'd') {
                if (c5 == 'x') {
                    ArrayRealVector arrayRealVector11 = arrayRealVector7;
                    int i22 = i10;
                    double d33 = d10;
                    int i23 = i14;
                    double d34 = d17;
                    int i24 = i15;
                    double d35 = d22;
                    printState(120);
                    int i25 = i13 + 1;
                    double d36 = (d13 * d14) - (entry3 * entry3);
                    if (d36 <= 1.0E-4d * d15 * d15) {
                        i15 = i24;
                        arrayRealVector7 = arrayRealVector11;
                        i14 = i23;
                        d22 = d35;
                        i13 = i25;
                        d10 = d33;
                        i10 = i22;
                        d17 = d34;
                        c5 = 190;
                    } else {
                        double dSqrt2 = FastMath.sqrt(d36);
                        int i26 = 0;
                        while (i26 < dimension) {
                            int i27 = i25;
                            if (arrayRealVector11.getEntry(i26) == 0.0d) {
                                arrayRealVector3.setEntry(i26, ((this.trialStepPoint.getEntry(i26) * entry3) - (arrayRealVector.getEntry(i26) * d14)) / dSqrt2);
                            } else {
                                arrayRealVector3.setEntry(i26, 0.0d);
                            }
                            i26++;
                            i25 = i27;
                        }
                        int i28 = i25;
                        double d37 = 0.0d;
                        double d38 = -dSqrt2;
                        d22 = d35;
                        int i29 = 0;
                        d16 = 1.0d;
                        i15 = -1;
                        while (true) {
                            if (i29 >= dimension) {
                                d5 = d38;
                                break;
                            }
                            if (arrayRealVector11.getEntry(i29) == d37) {
                                double entry14 = (this.trustRegionCenterOffset.getEntry(i29) + this.trialStepPoint.getEntry(i29)) - this.lowerDifference.getEntry(i29);
                                d5 = d38;
                                double entry15 = (this.upperDifference.getEntry(i29) - this.trustRegionCenterOffset.getEntry(i29)) - this.trialStepPoint.getEntry(i29);
                                if (entry14 <= 0.0d) {
                                    i11++;
                                    arrayRealVector11.setEntry(i29, MINUS_ONE);
                                    break;
                                }
                                if (entry15 <= 0.0d) {
                                    i11++;
                                    arrayRealVector11.setEntry(i29, 1.0d);
                                    break;
                                }
                                double entry16 = this.trialStepPoint.getEntry(i29);
                                double entry17 = arrayRealVector3.getEntry(i29);
                                double d39 = (entry16 * entry16) + (entry17 * entry17);
                                i7 = i23;
                                double entry18 = this.trustRegionCenterOffset.getEntry(i29) - this.lowerDifference.getEntry(i29);
                                double d40 = d39 - (entry18 * entry18);
                                if (d40 > 0.0d) {
                                    double dSqrt3 = FastMath.sqrt(d40) - arrayRealVector3.getEntry(i29);
                                    if (d16 * dSqrt3 > entry14) {
                                        d16 = entry14 / dSqrt3;
                                        i15 = i29;
                                        d22 = MINUS_ONE;
                                    }
                                }
                                double entry19 = this.upperDifference.getEntry(i29) - this.trustRegionCenterOffset.getEntry(i29);
                                double d41 = d39 - (entry19 * entry19);
                                if (d41 > 0.0d) {
                                    double dSqrt4 = FastMath.sqrt(d41) + arrayRealVector3.getEntry(i29);
                                    if (d16 * dSqrt4 > entry15) {
                                        i15 = i29;
                                        d16 = entry15 / dSqrt4;
                                        d22 = 1.0d;
                                    }
                                }
                            } else {
                                d5 = d38;
                                i7 = i23;
                            }
                            i29++;
                            d38 = d5;
                            i23 = i7;
                            d37 = 0.0d;
                        }
                        arrayRealVector7 = arrayRealVector11;
                        arrayRealVector8 = arrayRealVector3;
                        i13 = i28;
                        d21 = d5;
                        i14 = i23;
                        d10 = d33;
                        i10 = i22;
                        d17 = d34;
                        c5 = 210;
                        c = 'Z';
                        c2 = '2';
                        c3 = 30;
                        c4 = 20;
                        arrayRealVector9 = arrayRealVector5;
                    }
                } else if (c5 == 150) {
                    double d42 = d10;
                    int i30 = i13;
                    i14 = i14;
                    double d43 = d17;
                    printState(150);
                    double entry20 = 0.0d;
                    double entry21 = 0.0d;
                    double entry22 = 0.0d;
                    for (int i31 = 0; i31 < dimension; i31++) {
                        if (arrayRealVector7.getEntry(i31) == 0.0d) {
                            entry20 += arrayRealVector8.getEntry(i31) * arrayRealVector4.getEntry(i31);
                            entry21 += this.trialStepPoint.getEntry(i31) * arrayRealVector4.getEntry(i31);
                            entry22 += this.trialStepPoint.getEntry(i31) * arrayRealVector9.getEntry(i31);
                        }
                    }
                    int i32 = (int) ((17.0d * d16) + 3.1d);
                    double d44 = d19;
                    double d45 = d20;
                    int i33 = -1;
                    int i34 = 0;
                    double d46 = d18;
                    double d47 = 0.0d;
                    double d48 = 0.0d;
                    while (i34 < i32) {
                        int i35 = i10;
                        int i36 = i30;
                        double d49 = d43;
                        d46 = (((double) i34) * d16) / ((double) i32);
                        double d50 = (d46 + d46) / ((d46 * d46) + 1.0d);
                        double d51 = d50 * (((d46 * entry3) - d21) - ((d50 * HALF) * (entry20 + ((((d46 * entry22) - entry21) - entry21) * d46))));
                        if (d51 > d47) {
                            d47 = d51;
                            i33 = i34;
                            d44 = d48;
                        } else if (i34 == i33 + 1) {
                            d45 = d51;
                        }
                        i34++;
                        d48 = d51;
                        i10 = i35;
                        i30 = i36;
                        d43 = d49;
                    }
                    int i37 = i10;
                    int i38 = i30;
                    d4 = d43;
                    if (i33 < 0) {
                        d18 = d46;
                    } else {
                        d18 = i33 < i32 ? ((((double) i33) + (((d45 - d44) / (((d47 + d47) - d44) - d45)) * HALF)) * d16) / ((double) i32) : d46;
                        double d52 = d18 * d18;
                        double d53 = 1.0d - d52;
                        double d54 = d52 + 1.0d;
                        double d55 = d53 / d54;
                        double d56 = (d18 + d18) / d54;
                        double d57 = (((d18 * entry3) - d21) - ((HALF * d56) * (entry20 + ((((entry22 * d18) - entry21) - entry21) * d18)))) * d56;
                        if (d57 > 0.0d) {
                            int i39 = 0;
                            d13 = 0.0d;
                            entry3 = 0.0d;
                            while (i39 < dimension) {
                                arrayRealVector.setEntry(i39, arrayRealVector.getEntry(i39) + ((d55 - 1.0d) * arrayRealVector9.getEntry(i39)) + (arrayRealVector4.getEntry(i39) * d56));
                                if (arrayRealVector7.getEntry(i39) == 0.0d) {
                                    ArrayRealVector arrayRealVector12 = this.trialStepPoint;
                                    arrayRealVector12.setEntry(i39, (arrayRealVector12.getEntry(i39) * d55) + (arrayRealVector8.getEntry(i39) * d56));
                                    entry3 += this.trialStepPoint.getEntry(i39) * arrayRealVector.getEntry(i39);
                                    double entry23 = arrayRealVector.getEntry(i39);
                                    d13 += entry23 * entry23;
                                }
                                arrayRealVector9.setEntry(i39, (arrayRealVector9.getEntry(i39) * d55) + (arrayRealVector4.getEntry(i39) * d56));
                                i39++;
                                arrayRealVector7 = arrayRealVector2;
                                arrayRealVector8 = arrayRealVector3;
                            }
                            d15 += d57;
                            int i40 = i15;
                            if (i40 < 0 || i33 != i32) {
                                arrayRealVector6 = arrayRealVector2;
                                double d58 = d22;
                                if (d57 <= 0.01d * d15) {
                                    break;
                                }
                                i15 = i40;
                                arrayRealVector7 = arrayRealVector6;
                                i14 = i14;
                                d22 = d58;
                                d10 = d42;
                                d19 = d44;
                                d20 = d45;
                                i10 = i37;
                                i13 = i38;
                                d17 = d4;
                                c5 = 'x';
                            } else {
                                i11++;
                                arrayRealVector2.setEntry(i40, d22);
                                i15 = i40;
                                arrayRealVector7 = arrayRealVector2;
                                i14 = i14;
                                d10 = d42;
                                d19 = d44;
                                d20 = d45;
                                i10 = i37;
                                i13 = i38;
                                d17 = d4;
                                c5 = 'd';
                            }
                        }
                    }
                    d10 = d42;
                    d19 = d44;
                    d20 = d45;
                    i10 = i37;
                    i13 = i38;
                    d17 = d4;
                    c5 = 190;
                    c = 'Z';
                    c2 = '2';
                    c3 = 30;
                    c4 = 20;
                } else {
                    if (c5 == 190) {
                        arrayRealVector6 = arrayRealVector7;
                        d4 = d17;
                        break;
                    }
                    if (c5 != 210) {
                        throw new MathIllegalStateException(LocalizedFormats.SIMPLE_MESSAGE, "trsbox");
                    }
                    printState(210);
                    int i41 = 0;
                    for (int i42 = 0; i42 < dimension; i42++) {
                        arrayRealVector4.setEntry(i42, 0.0d);
                        int i43 = 0;
                        while (i43 <= i42) {
                            if (i43 < i42) {
                                arrayRealVector4.setEntry(i42, arrayRealVector4.getEntry(i42) + (this.modelSecondDerivativesValues.getEntry(i41) * arrayRealVector8.getEntry(i43)));
                            }
                            arrayRealVector4.setEntry(i43, arrayRealVector4.getEntry(i43) + (this.modelSecondDerivativesValues.getEntry(i41) * arrayRealVector8.getEntry(i42)));
                            i41++;
                            i43++;
                            d10 = d10;
                        }
                    }
                    double d59 = d10;
                    RealVector realVectorEbeMultiply = this.interpolationPoints.operate(arrayRealVector8).ebeMultiply(this.modelSecondDerivativesParameters);
                    for (int i44 = 0; i44 < i10; i44++) {
                        if (this.modelSecondDerivativesParameters.getEntry(i44) != 0.0d) {
                            for (int i45 = 0; i45 < dimension; i45++) {
                                arrayRealVector4.setEntry(i45, arrayRealVector4.getEntry(i45) + (realVectorEbeMultiply.getEntry(i44) * this.interpolationPoints.getEntry(i44, i45)));
                            }
                        }
                    }
                    double d60 = d17;
                    if (d60 != 0.0d) {
                        d17 = d60;
                        d10 = d59;
                        c5 = '2';
                    } else {
                        int i46 = i13;
                        int i47 = i14;
                        if (i46 > i47) {
                            i13 = i46;
                            i14 = i47;
                            d17 = d60;
                            d10 = d59;
                            c5 = 150;
                        } else {
                            for (int i48 = 0; i48 < dimension; i48++) {
                                arrayRealVector9.setEntry(i48, arrayRealVector4.getEntry(i48));
                            }
                            i13 = i46;
                            i14 = i47;
                            d17 = d60;
                            d10 = d59;
                            c5 = 'x';
                        }
                    }
                    c = 'Z';
                    c2 = '2';
                    c3 = 30;
                    c4 = 20;
                }
                c = 'Z';
                c2 = '2';
                c3 = 30;
                c4 = 20;
                arrayRealVector8 = arrayRealVector3;
            } else {
                arrayRealVector8 = arrayRealVector8;
                i2 = i10;
                d3 = d10;
                d6 = d17;
                arrayRealVector7 = arrayRealVector7;
                i14 = i14;
                i4 = i15;
                d22 = d22;
                i5 = i16;
                i14 = i13;
                i8 = 100;
                printState(i8);
                if (i11 >= dimension - 1) {
                    arrayRealVector7 = arrayRealVector7;
                    arrayRealVector8 = arrayRealVector8;
                    i16 = i5;
                    i13 = i14;
                    i14 = i14;
                    d22 = d22;
                    i10 = i2;
                    d17 = d6;
                    c5 = 190;
                } else {
                    d13 = 0.0d;
                    d14 = 0.0d;
                    entry3 = 0.0d;
                    while (i9 < dimension) {
                        if (arrayRealVector7.getEntry(i9) == 0.0d) {
                            double entry110 = this.trialStepPoint.getEntry(i9);
                            d14 += entry110 * entry110;
                            entry3 += this.trialStepPoint.getEntry(i9) * arrayRealVector.getEntry(i9);
                            double entry111 = arrayRealVector.getEntry(i9);
                            d13 += entry111 * entry111;
                            arrayRealVector8.setEntry(i9, this.trialStepPoint.getEntry(i9));
                        } else {
                            arrayRealVector8.setEntry(i9, 0.0d);
                        }
                    }
                    arrayRealVector7 = arrayRealVector7;
                    arrayRealVector8 = arrayRealVector8;
                    i16 = i5;
                    i13 = i14;
                    d22 = d22;
                    i10 = i2;
                    d17 = d6;
                    c5 = 210;
                }
                c = 'Z';
                c2 = '2';
                c3 = 30;
                c4 = 20;
                arrayRealVector9 = arrayRealVector5;
                i15 = i4;
                d10 = d3;
            }
            printState(i);
            d11 = 0.0d;
            for (int i49 = 0; i49 < dimension; i49++) {
                if (arrayRealVector7.getEntry(i49) != 0.0d) {
                    arrayRealVector8.setEntry(i49, 0.0d);
                } else if (d12 == 0.0d) {
                    arrayRealVector8.setEntry(i49, -arrayRealVector.getEntry(i49));
                } else {
                    arrayRealVector8.setEntry(i49, (arrayRealVector8.getEntry(i49) * d12) - arrayRealVector.getEntry(i49));
                }
                double entry24 = arrayRealVector8.getEntry(i49);
                d11 += entry24 * entry24;
            }
            if (d11 != 0.0d) {
                if (d12 == 0.0d) {
                    i16 = (i13 + dimension) - i11;
                    d13 = d11;
                }
                if (d13 * d10 <= 1.0E-4d * d15 * d15) {
                    i16 = i16;
                    c5 = 190;
                } else {
                    i16 = i16;
                    c5 = 210;
                }
            } else {
                i16 = i16;
                c5 = 190;
            }
            c = 'Z';
            c4 = 20;
            i15 = i15;
            arrayRealVector7 = arrayRealVector7;
            arrayRealVector8 = arrayRealVector8;
            d17 = d17;
            c2 = '2';
            c3 = 30;
            arrayRealVector9 = arrayRealVector5;
        }
        printState(190);
        double d61 = 0.0d;
        for (int i50 = 0; i50 < dimension; i50++) {
            this.newPoint.setEntry(i50, FastMath.max(FastMath.min(this.trustRegionCenterOffset.getEntry(i50) + this.trialStepPoint.getEntry(i50), this.upperDifference.getEntry(i50)), this.lowerDifference.getEntry(i50)));
            if (arrayRealVector6.getEntry(i50) == MINUS_ONE) {
                this.newPoint.setEntry(i50, this.lowerDifference.getEntry(i50));
            }
            if (arrayRealVector6.getEntry(i50) == 1.0d) {
                this.newPoint.setEntry(i50, this.upperDifference.getEntry(i50));
            }
            this.trialStepPoint.setEntry(i50, this.newPoint.getEntry(i50) - this.trustRegionCenterOffset.getEntry(i50));
            double entry25 = this.trialStepPoint.getEntry(i50);
            d61 += entry25 * entry25;
        }
        return new double[]{d61, d4};
    }

    private void update(double d2, double d3, int i) {
        int i2 = i;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i3 = this.numberOfInterpolationPoints;
        int i4 = 1;
        int i5 = (i3 - dimension) - 1;
        ArrayRealVector arrayRealVector = new ArrayRealVector(i3 + dimension);
        int i6 = 0;
        double dMax = 0.0d;
        for (int i7 = 0; i7 < i3; i7++) {
            for (int i8 = 0; i8 < i5; i8++) {
                dMax = FastMath.max(dMax, FastMath.abs(this.zMatrix.getEntry(i7, i8)));
            }
        }
        double d4 = dMax * 1.0E-20d;
        while (i4 < i5) {
            if (FastMath.abs(this.zMatrix.getEntry(i2, i4)) > d4) {
                double entry = this.zMatrix.getEntry(i2, 0);
                double entry2 = this.zMatrix.getEntry(i2, i4);
                double dSqrt = FastMath.sqrt((entry * entry) + (entry2 * entry2));
                double entry3 = this.zMatrix.getEntry(i2, 0) / dSqrt;
                double entry4 = this.zMatrix.getEntry(i2, i4) / dSqrt;
                int i9 = 0;
                while (i9 < i3) {
                    double entry5 = (this.zMatrix.getEntry(i9, 0) * entry3) + (this.zMatrix.getEntry(i9, i4) * entry4);
                    Array2DRowRealMatrix array2DRowRealMatrix = this.zMatrix;
                    array2DRowRealMatrix.setEntry(i9, i4, (array2DRowRealMatrix.getEntry(i9, i4) * entry3) - (this.zMatrix.getEntry(i9, 0) * entry4));
                    this.zMatrix.setEntry(i9, 0, entry5);
                    i9++;
                    d4 = d4;
                }
            }
            this.zMatrix.setEntry(i2, i4, 0.0d);
            i4++;
            d4 = d4;
        }
        for (int i10 = 0; i10 < i3; i10++) {
            arrayRealVector.setEntry(i10, this.zMatrix.getEntry(i2, 0) * this.zMatrix.getEntry(i10, 0));
        }
        double entry6 = arrayRealVector.getEntry(i2);
        double entry7 = this.lagrangeValuesAtNewPoint.getEntry(i2);
        ArrayRealVector arrayRealVector2 = this.lagrangeValuesAtNewPoint;
        arrayRealVector2.setEntry(i2, arrayRealVector2.getEntry(i2) - 1.0d);
        double dSqrt2 = FastMath.sqrt(d3);
        double d5 = entry7 / dSqrt2;
        double entry8 = this.zMatrix.getEntry(i2, 0) / dSqrt2;
        int i11 = 0;
        while (i11 < i3) {
            Array2DRowRealMatrix array2DRowRealMatrix2 = this.zMatrix;
            double d6 = d5;
            double entry9 = (array2DRowRealMatrix2.getEntry(i11, i6) * d5) - (this.lagrangeValuesAtNewPoint.getEntry(i11) * entry8);
            i6 = 0;
            array2DRowRealMatrix2.setEntry(i11, 0, entry9);
            i11++;
            d5 = d6;
        }
        int i12 = 0;
        while (i12 < dimension) {
            int i13 = i3 + i12;
            arrayRealVector.setEntry(i13, this.bMatrix.getEntry(i2, i12));
            double entry10 = ((this.lagrangeValuesAtNewPoint.getEntry(i13) * entry6) - (arrayRealVector.getEntry(i13) * entry7)) / d3;
            int i14 = i12;
            double entry11 = (((-d2) * arrayRealVector.getEntry(i13)) - (this.lagrangeValuesAtNewPoint.getEntry(i13) * entry7)) / d3;
            int i15 = 0;
            while (i15 <= i13) {
                int i16 = dimension;
                Array2DRowRealMatrix array2DRowRealMatrix3 = this.bMatrix;
                double d7 = entry6;
                int i17 = i14;
                ArrayRealVector arrayRealVector3 = arrayRealVector;
                array2DRowRealMatrix3.setEntry(i15, i17, array2DRowRealMatrix3.getEntry(i15, i17) + (this.lagrangeValuesAtNewPoint.getEntry(i15) * entry10) + (arrayRealVector.getEntry(i15) * entry11));
                if (i15 >= i3) {
                    Array2DRowRealMatrix array2DRowRealMatrix4 = this.bMatrix;
                    array2DRowRealMatrix4.setEntry(i13, i15 - i3, array2DRowRealMatrix4.getEntry(i15, i17));
                }
                i15++;
                arrayRealVector = arrayRealVector3;
                dimension = i16;
                entry7 = entry7;
                i14 = i17;
                entry6 = d7;
            }
            i12 = i14 + 1;
            i2 = i;
            entry6 = entry6;
        }
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    protected PointValuePair doOptimize() {
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        setup(lowerBound, upperBound);
        this.isMinimize = getGoalType() == GoalType.MINIMIZE;
        this.currentBest = new ArrayRealVector(getStartPoint());
        double dBobyqa = bobyqa(lowerBound, upperBound);
        double[] dataRef = this.currentBest.getDataRef();
        if (!this.isMinimize) {
            dBobyqa = -dBobyqa;
        }
        return new PointValuePair(dataRef, dBobyqa);
    }

    public BOBYQAOptimizer(int i, double d2, double d3) {
        super(null);
        this.numberOfInterpolationPoints = i;
        this.initialTrustRegionRadius = d2;
        this.stoppingTrustRegionRadius = d3;
    }
}
