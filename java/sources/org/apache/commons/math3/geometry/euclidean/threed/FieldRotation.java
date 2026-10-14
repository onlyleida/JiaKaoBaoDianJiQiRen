package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class FieldRotation<T extends RealFieldElement<T>> implements Serializable {
    private static final long serialVersionUID = 20130224;
    private final T q0;
    private final T q1;
    private final T q2;
    private final T q3;

    public FieldRotation(T t, T t2, T t3, T t4, boolean z) {
        if (!z) {
            this.q0 = t;
            this.q1 = t2;
            this.q2 = t3;
            this.q3 = t4;
            return;
        }
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t.multiply(t)).add(t2.multiply(t2))).add(t3.multiply(t3))).add(t4.multiply(t4))).sqrt()).reciprocal();
        this.q0 = (T) realFieldElement.multiply(t);
        this.q1 = (T) realFieldElement.multiply(t2);
        this.q2 = (T) realFieldElement.multiply(t3);
        this.q3 = (T) realFieldElement.multiply(t4);
    }

    private T[] buildArray(T t, T t2, T t3) {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(t.getField(), 3));
        tArr[0] = t;
        tArr[1] = t2;
        tArr[2] = t3;
        return tArr;
    }

    private FieldRotation<T> composeInternal(FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) fieldRotation.q0.multiply(this.q0)).subtract(((RealFieldElement) ((RealFieldElement) fieldRotation.q1.multiply(this.q1)).add(fieldRotation.q2.multiply(this.q2))).add(fieldRotation.q3.multiply(this.q3))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q1.multiply(this.q0)).add(fieldRotation.q0.multiply(this.q1))).add(((RealFieldElement) fieldRotation.q2.multiply(this.q3)).subtract(fieldRotation.q3.multiply(this.q2))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q2.multiply(this.q0)).add(fieldRotation.q0.multiply(this.q2))).add(((RealFieldElement) fieldRotation.q3.multiply(this.q1)).subtract(fieldRotation.q1.multiply(this.q3))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q3.multiply(this.q0)).add(fieldRotation.q0.multiply(this.q3))).add(((RealFieldElement) fieldRotation.q1.multiply(this.q2)).subtract(fieldRotation.q2.multiply(this.q1))), false);
    }

    private FieldRotation<T> composeInverseInternal(FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q0.multiply(this.q0)).add(((RealFieldElement) ((RealFieldElement) fieldRotation.q1.multiply(this.q1)).add(fieldRotation.q2.multiply(this.q2))).add(fieldRotation.q3.multiply(this.q3)))).negate(), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q0.multiply(this.q1)).add(((RealFieldElement) fieldRotation.q2.multiply(this.q3)).subtract(fieldRotation.q3.multiply(this.q2)))).subtract(fieldRotation.q1.multiply(this.q0)), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q0.multiply(this.q2)).add(((RealFieldElement) fieldRotation.q3.multiply(this.q1)).subtract(fieldRotation.q1.multiply(this.q3)))).subtract(fieldRotation.q2.multiply(this.q0)), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.q0.multiply(this.q3)).add(((RealFieldElement) fieldRotation.q1.multiply(this.q2)).subtract(fieldRotation.q2.multiply(this.q1)))).subtract(fieldRotation.q3.multiply(this.q0)), false);
    }

    public static <T extends RealFieldElement<T>> T distance(FieldRotation<T> fieldRotation, FieldRotation<T> fieldRotation2) {
        return (T) fieldRotation.composeInverseInternal(fieldRotation2).getAngle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T[] mat2quat(T[][] tArr) {
        T[] tArr2 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(tArr[0][0].getField(), 4));
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) tArr[0][0].add(tArr[1][1])).add(tArr[2][2]);
        if (realFieldElement.getReal() > -0.19d) {
            tArr2[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(1.0d)).sqrt()).multiply(0.5d);
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) tArr2[0].reciprocal()).multiply(0.25d);
            tArr2[1] = (RealFieldElement) realFieldElement2.multiply(tArr[1][2].subtract(tArr[2][1]));
            tArr2[2] = (RealFieldElement) realFieldElement2.multiply(tArr[2][0].subtract(tArr[0][2]));
            tArr2[3] = (RealFieldElement) realFieldElement2.multiply(tArr[0][1].subtract(tArr[1][0]));
        } else {
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) tArr[0][0].subtract(tArr[1][1])).subtract(tArr[2][2]);
            if (realFieldElement3.getReal() > -0.19d) {
                tArr2[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.add(1.0d)).sqrt()).multiply(0.5d);
                RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) tArr2[1].reciprocal()).multiply(0.25d);
                tArr2[0] = (RealFieldElement) realFieldElement4.multiply(tArr[1][2].subtract(tArr[2][1]));
                tArr2[2] = (RealFieldElement) realFieldElement4.multiply(tArr[0][1].add(tArr[1][0]));
                tArr2[3] = (RealFieldElement) realFieldElement4.multiply(tArr[0][2].add(tArr[2][0]));
            } else {
                RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) tArr[1][1].subtract(tArr[0][0])).subtract(tArr[2][2]);
                if (realFieldElement5.getReal() > -0.19d) {
                    tArr2[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement5.add(1.0d)).sqrt()).multiply(0.5d);
                    RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) tArr2[2].reciprocal()).multiply(0.25d);
                    tArr2[0] = (RealFieldElement) realFieldElement6.multiply(tArr[2][0].subtract(tArr[0][2]));
                    tArr2[1] = (RealFieldElement) realFieldElement6.multiply(tArr[0][1].add(tArr[1][0]));
                    tArr2[3] = (RealFieldElement) realFieldElement6.multiply(tArr[2][1].add(tArr[1][2]));
                } else {
                    tArr2[3] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[2][2].subtract(tArr[0][0])).subtract(tArr[1][1])).add(1.0d)).sqrt()).multiply(0.5d);
                    RealFieldElement realFieldElement7 = (RealFieldElement) ((RealFieldElement) tArr2[3].reciprocal()).multiply(0.25d);
                    tArr2[0] = (RealFieldElement) realFieldElement7.multiply(tArr[0][1].subtract(tArr[1][0]));
                    tArr2[1] = (RealFieldElement) realFieldElement7.multiply(tArr[0][2].add(tArr[2][0]));
                    tArr2[2] = (RealFieldElement) realFieldElement7.multiply(tArr[2][1].add(tArr[1][2]));
                }
            }
        }
        return tArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v4, types: [T extends org.apache.commons.math3.RealFieldElement<T>[][], org.apache.commons.math3.RealFieldElement[][]] */
    /* JADX WARN: Type inference failed for: r14v13, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v46 */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r24v0, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r25v0, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r26v0, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r28v0, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object] */
    private T[][] orthogonalizeMatrix(T[][] tArr, double d2) throws NotARotationMatrixException {
        char c = 0;
        T t = tArr[0][0];
        int i = 1;
        T t2 = tArr[0][1];
        T t3 = tArr[0][2];
        T t4 = tArr[1][0];
        T t5 = tArr[1][1];
        T t6 = tArr[1][2];
        T t7 = tArr[2][0];
        T t8 = tArr[2][1];
        T t9 = tArr[2][2];
        ?? r12 = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(tArr[0][0].getField(), 3, 3));
        double d3 = 0.0d;
        int i2 = 0;
        ?? r1 = t;
        ?? r2 = t2;
        ?? r4 = t3;
        ?? r6 = t4;
        ?? r7 = t5;
        ?? r8 = t6;
        ?? r9 = t7;
        ?? r10 = t8;
        ?? r11 = t9;
        while (true) {
            int i3 = i2 + i;
            if (i3 >= 11) {
                LocalizedFormats localizedFormats = LocalizedFormats.UNABLE_TO_ORTHOGONOLIZE_MATRIX;
                Object[] objArr = new Object[i];
                objArr[c] = Integer.valueOf(i3 - 1);
                throw new NotARotationMatrixException(localizedFormats, objArr);
            }
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[c][c].multiply(r1)).add(tArr[i][c].multiply(r6))).add(tArr[2][c].multiply(r9));
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[c][1].multiply(r1)).add(tArr[1][1].multiply(r6))).add(tArr[2][1].multiply(r9));
            double d4 = d3;
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][2].multiply(r1)).add(tArr[1][2].multiply(r6))).add(tArr[2][2].multiply(r9));
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][0].multiply(r2)).add(tArr[1][0].multiply(r7))).add(tArr[2][0].multiply(r10));
            ?? r23 = r9;
            RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][1].multiply(r2)).add(tArr[1][1].multiply(r7))).add(tArr[2][1].multiply(r10));
            ?? r24 = r6;
            RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][2].multiply(r2)).add(tArr[1][2].multiply(r7))).add(tArr[2][2].multiply(r10));
            ?? r25 = r10;
            RealFieldElement realFieldElement7 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][0].multiply(r4)).add(tArr[1][0].multiply(r8))).add(tArr[2][0].multiply(r11));
            RealFieldElement realFieldElement8 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][1].multiply(r4)).add(tArr[1][1].multiply(r8))).add(tArr[2][1].multiply(r11));
            ?? r26 = r7;
            RealFieldElement realFieldElement9 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][2].multiply(r4)).add(tArr[1][2].multiply(r8))).add(tArr[2][2].multiply(r11));
            ?? r28 = r11;
            r12[0][0] = (RealFieldElement) r1.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r1.multiply(realFieldElement)).add(r2.multiply(realFieldElement2))).add(r4.multiply(realFieldElement3))).subtract(tArr[0][0])).multiply(0.5d));
            ?? r5 = r12[0];
            RealFieldElement realFieldElement10 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r1.multiply(realFieldElement4)).add(r2.multiply(realFieldElement5))).add(r4.multiply(realFieldElement6))).subtract(tArr[0][1]);
            ?? r14 = r8;
            r5[1] = (RealFieldElement) r2.subtract(realFieldElement10.multiply(0.5d));
            r12[0][2] = (RealFieldElement) r4.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r1.multiply(realFieldElement7)).add(r2.multiply(realFieldElement8))).add(r4.multiply(realFieldElement9))).subtract(tArr[0][2])).multiply(0.5d));
            r12[1][0] = (RealFieldElement) r24.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r24.multiply(realFieldElement)).add(r26.multiply(realFieldElement2))).add(r14.multiply(realFieldElement3))).subtract(tArr[1][0])).multiply(0.5d));
            r12[1][1] = (RealFieldElement) r26.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r24.multiply(realFieldElement4)).add(r26.multiply(realFieldElement5))).add(r14.multiply(realFieldElement6))).subtract(tArr[1][1])).multiply(0.5d));
            r12[1][2] = (RealFieldElement) r14.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r24.multiply(realFieldElement7)).add(r26.multiply(realFieldElement8))).add(r14.multiply(realFieldElement9))).subtract(tArr[1][2])).multiply(0.5d));
            r12[2][0] = (RealFieldElement) r23.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r23.multiply(realFieldElement)).add(r25.multiply(realFieldElement2))).add(r28.multiply(realFieldElement3))).subtract(tArr[2][0])).multiply(0.5d));
            r12[2][1] = (RealFieldElement) r25.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r23.multiply(realFieldElement4)).add(r25.multiply(realFieldElement5))).add(r28.multiply(realFieldElement6))).subtract(tArr[2][1])).multiply(0.5d));
            r12[2][2] = (RealFieldElement) r28.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) r23.multiply(realFieldElement7)).add(r25.multiply(realFieldElement8))).add(r28.multiply(realFieldElement9))).subtract(tArr[2][2])).multiply(0.5d));
            double real = r12[0][0].getReal() - tArr[0][0].getReal();
            double real2 = r12[0][1].getReal() - tArr[0][1].getReal();
            double real3 = r12[0][2].getReal() - tArr[0][2].getReal();
            double real4 = r12[1][0].getReal() - tArr[1][0].getReal();
            double real5 = r12[1][1].getReal() - tArr[1][1].getReal();
            double real6 = r12[1][2].getReal() - tArr[1][2].getReal();
            double real7 = r12[2][0].getReal() - tArr[2][0].getReal();
            double real8 = r12[2][1].getReal() - tArr[2][1].getReal();
            double real9 = r12[2][2].getReal() - tArr[2][2].getReal();
            d3 = (real * real) + (real2 * real2) + (real3 * real3) + (real4 * real4) + (real5 * real5) + (real6 * real6) + (real7 * real7) + (real8 * real8) + (real9 * real9);
            if (FastMath.abs(d3 - d4) <= d2) {
                return r12;
            }
            c = 0;
            ?? r3 = r12[0][0];
            i = 1;
            ?? r13 = r12[0][1];
            ?? r15 = r12[0][2];
            ?? r16 = r12[1][0];
            ?? r17 = r12[1][1];
            ?? r18 = r12[1][2];
            i2 = i3;
            r1 = r3;
            r2 = r13;
            r4 = r15;
            r6 = r16;
            r7 = r17;
            r8 = r18;
            r9 = r12[2][0];
            r10 = r12[2][1];
            r11 = r12[2][2];
        }
    }

    private FieldVector3D<T> vector(double d2, double d3, double d4) {
        RealFieldElement realFieldElement = (RealFieldElement) this.q0.getField().getZero();
        return new FieldVector3D<>((RealFieldElement) realFieldElement.add(d2), (RealFieldElement) realFieldElement.add(d3), (RealFieldElement) realFieldElement.add(d4));
    }

    public FieldVector3D<T> applyInverseTo(FieldVector3D<T> fieldVector3D) {
        RealFieldElement x = fieldVector3D.getX();
        RealFieldElement y = fieldVector3D.getY();
        RealFieldElement z = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(x)).add(this.q2.multiply(y))).add(this.q3.multiply(z));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.q0.negate();
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) x.multiply(realFieldElement2)).subtract(((RealFieldElement) this.q2.multiply(z)).subtract(this.q3.multiply(y))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(x), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) y.multiply(realFieldElement2)).subtract(((RealFieldElement) this.q3.multiply(x)).subtract(this.q1.multiply(z))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(y), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) z.multiply(realFieldElement2)).subtract(((RealFieldElement) this.q1.multiply(y)).subtract(this.q2.multiply(x))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(z));
    }

    public FieldVector3D<T> applyTo(FieldVector3D<T> fieldVector3D) {
        RealFieldElement x = fieldVector3D.getX();
        RealFieldElement y = fieldVector3D.getY();
        RealFieldElement z = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(x)).add(this.q2.multiply(y))).add(this.q3.multiply(z));
        T t = this.q0;
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t.multiply(((RealFieldElement) x.multiply(t)).subtract(((RealFieldElement) this.q2.multiply(z)).subtract(this.q3.multiply(y))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(x);
        T t2 = this.q0;
        RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) y.multiply(t2)).subtract(((RealFieldElement) this.q3.multiply(x)).subtract(this.q1.multiply(z))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(y);
        T t3 = this.q0;
        return new FieldVector3D<>(realFieldElement2, realFieldElement3, (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(((RealFieldElement) z.multiply(t3)).subtract(((RealFieldElement) this.q1.multiply(y)).subtract(this.q2.multiply(x))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(z));
    }

    public FieldRotation<T> compose(FieldRotation<T> fieldRotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(fieldRotation) : fieldRotation.composeInternal(this);
    }

    public FieldRotation<T> composeInverse(FieldRotation<T> fieldRotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(fieldRotation) : fieldRotation.composeInternal(revert());
    }

    public T getAngle() {
        if (this.q0.getReal() >= -0.1d && this.q0.getReal() <= 0.1d) {
            return this.q0.getReal() < 0.0d ? (T) ((RealFieldElement) ((RealFieldElement) this.q0.negate()).acos()).multiply(2) : (T) ((RealFieldElement) this.q0.acos()).multiply(2);
        }
        T t = this.q1;
        RealFieldElement realFieldElement = (RealFieldElement) t.multiply(t);
        T t2 = this.q2;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add(t2.multiply(t2));
        T t3 = this.q3;
        return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.add(t3.multiply(t3))).sqrt()).asin()).multiply(2);
    }

    @Deprecated
    public T[] getAngles(RotationOrder rotationOrder) throws CardanEulerSingularityException {
        return (T[]) getAngles(rotationOrder, RotationConvention.VECTOR_OPERATOR);
    }

    @Deprecated
    public FieldVector3D<T> getAxis() {
        return getAxis(RotationConvention.VECTOR_OPERATOR);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[][] getMatrix() {
        T t = this.q0;
        RealFieldElement realFieldElement = (RealFieldElement) t.multiply(t);
        RealFieldElement realFieldElement2 = (RealFieldElement) this.q0.multiply(this.q1);
        RealFieldElement realFieldElement3 = (RealFieldElement) this.q0.multiply(this.q2);
        RealFieldElement realFieldElement4 = (RealFieldElement) this.q0.multiply(this.q3);
        T t2 = this.q1;
        RealFieldElement realFieldElement5 = (RealFieldElement) t2.multiply(t2);
        RealFieldElement realFieldElement6 = (RealFieldElement) this.q1.multiply(this.q2);
        RealFieldElement realFieldElement7 = (RealFieldElement) this.q1.multiply(this.q3);
        T t3 = this.q2;
        RealFieldElement realFieldElement8 = (RealFieldElement) t3.multiply(t3);
        RealFieldElement realFieldElement9 = (RealFieldElement) this.q2.multiply(this.q3);
        T t4 = this.q3;
        RealFieldElement realFieldElement10 = (RealFieldElement) t4.multiply(t4);
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(this.q0.getField(), 3, 3));
        tArr[0][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(realFieldElement5)).multiply(2)).subtract(1.0d);
        tArr[1][0] = (RealFieldElement) ((RealFieldElement) realFieldElement6.subtract(realFieldElement4)).multiply(2);
        tArr[2][0] = (RealFieldElement) ((RealFieldElement) realFieldElement7.add(realFieldElement3)).multiply(2);
        tArr[0][1] = (RealFieldElement) ((RealFieldElement) realFieldElement6.add(realFieldElement4)).multiply(2);
        tArr[1][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(realFieldElement8)).multiply(2)).subtract(1.0d);
        tArr[2][1] = (RealFieldElement) ((RealFieldElement) realFieldElement9.subtract(realFieldElement2)).multiply(2);
        tArr[0][2] = (RealFieldElement) ((RealFieldElement) realFieldElement7.subtract(realFieldElement3)).multiply(2);
        tArr[1][2] = (RealFieldElement) ((RealFieldElement) realFieldElement9.add(realFieldElement2)).multiply(2);
        tArr[2][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(realFieldElement10)).multiply(2)).subtract(1.0d);
        return tArr;
    }

    public T getQ0() {
        return this.q0;
    }

    public T getQ1() {
        return this.q1;
    }

    public T getQ2() {
        return this.q2;
    }

    public T getQ3() {
        return this.q3;
    }

    public FieldRotation<T> revert() {
        return new FieldRotation<>((RealFieldElement) this.q0.negate(), (RealFieldElement) this.q1, (RealFieldElement) this.q2, (RealFieldElement) this.q3, false);
    }

    public Rotation toRotation() {
        return new Rotation(this.q0.getReal(), this.q1.getReal(), this.q2.getReal(), this.q3.getReal(), false);
    }

    private FieldRotation<T> composeInternal(Rotation rotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) this.q0.multiply(rotation.getQ0())).subtract(((RealFieldElement) ((RealFieldElement) this.q1.multiply(rotation.getQ1())).add(this.q2.multiply(rotation.getQ2()))).add(this.q3.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q0.multiply(rotation.getQ1())).add(this.q1.multiply(rotation.getQ0()))).add(((RealFieldElement) this.q3.multiply(rotation.getQ2())).subtract(this.q2.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q0.multiply(rotation.getQ2())).add(this.q2.multiply(rotation.getQ0()))).add(((RealFieldElement) this.q1.multiply(rotation.getQ3())).subtract(this.q3.multiply(rotation.getQ1()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q0.multiply(rotation.getQ3())).add(this.q3.multiply(rotation.getQ0()))).add(((RealFieldElement) this.q2.multiply(rotation.getQ1())).subtract(this.q1.multiply(rotation.getQ2()))), false);
    }

    private FieldRotation<T> composeInverseInternal(Rotation rotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q0.multiply(rotation.getQ0())).add(((RealFieldElement) ((RealFieldElement) this.q1.multiply(rotation.getQ1())).add(this.q2.multiply(rotation.getQ2()))).add(this.q3.multiply(rotation.getQ3())))).negate(), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(rotation.getQ0())).add(((RealFieldElement) this.q3.multiply(rotation.getQ2())).subtract(this.q2.multiply(rotation.getQ3())))).subtract(this.q0.multiply(rotation.getQ1())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q2.multiply(rotation.getQ0())).add(((RealFieldElement) this.q1.multiply(rotation.getQ3())).subtract(this.q3.multiply(rotation.getQ1())))).subtract(this.q0.multiply(rotation.getQ2())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q3.multiply(rotation.getQ0())).add(((RealFieldElement) this.q2.multiply(rotation.getQ1())).subtract(this.q1.multiply(rotation.getQ2())))).subtract(this.q0.multiply(rotation.getQ3())), false);
    }

    public FieldRotation<T> compose(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(rotation) : applyTo(rotation, this);
    }

    public FieldRotation<T> composeInverse(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(rotation) : applyTo(rotation, revert());
    }

    public T[] getAngles(RotationOrder rotationOrder, RotationConvention rotationConvention) throws CardanEulerSingularityException {
        if (rotationConvention == RotationConvention.VECTOR_OPERATOR) {
            if (rotationOrder == RotationOrder.XYZ) {
                FieldVector3D<T> fieldVector3DApplyTo = applyTo(vector(0.0d, 0.0d, 1.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (fieldVector3DApplyInverseTo.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo.getZ().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return (T[]) buildArray((RealFieldElement) ((RealFieldElement) fieldVector3DApplyTo.getY().negate()).atan2(fieldVector3DApplyTo.getZ()), (RealFieldElement) fieldVector3DApplyInverseTo.getZ().asin(), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo.getY().negate()).atan2(fieldVector3DApplyInverseTo.getX()));
            }
            if (rotationOrder == RotationOrder.XZY) {
                FieldVector3D<T> fieldVector3DApplyTo2 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo2 = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (fieldVector3DApplyInverseTo2.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo2.getY().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo2.getZ().atan2(fieldVector3DApplyTo2.getY()), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo2.getY().asin()).negate(), (RealFieldElement) fieldVector3DApplyInverseTo2.getZ().atan2(fieldVector3DApplyInverseTo2.getX()));
            }
            if (rotationOrder == RotationOrder.YXZ) {
                FieldVector3D<T> fieldVector3DApplyTo3 = applyTo(vector(0.0d, 0.0d, 1.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo3 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (fieldVector3DApplyInverseTo3.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo3.getZ().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo3.getX().atan2(fieldVector3DApplyTo3.getZ()), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo3.getZ().asin()).negate(), (RealFieldElement) fieldVector3DApplyInverseTo3.getX().atan2(fieldVector3DApplyInverseTo3.getY()));
            }
            if (rotationOrder == RotationOrder.YZX) {
                FieldVector3D<T> fieldVector3DApplyTo4 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo4 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (fieldVector3DApplyInverseTo4.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo4.getX().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return (T[]) buildArray((RealFieldElement) ((RealFieldElement) fieldVector3DApplyTo4.getZ().negate()).atan2(fieldVector3DApplyTo4.getX()), (RealFieldElement) fieldVector3DApplyInverseTo4.getX().asin(), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo4.getZ().negate()).atan2(fieldVector3DApplyInverseTo4.getY()));
            }
            if (rotationOrder == RotationOrder.ZXY) {
                FieldVector3D<T> fieldVector3DApplyTo5 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo5 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
                if (fieldVector3DApplyInverseTo5.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo5.getY().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return (T[]) buildArray((RealFieldElement) ((RealFieldElement) fieldVector3DApplyTo5.getX().negate()).atan2(fieldVector3DApplyTo5.getY()), (RealFieldElement) fieldVector3DApplyInverseTo5.getY().asin(), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo5.getX().negate()).atan2(fieldVector3DApplyInverseTo5.getZ()));
            }
            if (rotationOrder == RotationOrder.ZYX) {
                FieldVector3D<T> fieldVector3DApplyTo6 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo6 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
                if (fieldVector3DApplyInverseTo6.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo6.getX().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo6.getY().atan2(fieldVector3DApplyTo6.getX()), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo6.getX().asin()).negate(), (RealFieldElement) fieldVector3DApplyInverseTo6.getY().atan2(fieldVector3DApplyInverseTo6.getZ()));
            }
            if (rotationOrder == RotationOrder.XYX) {
                FieldVector3D<T> fieldVector3DApplyTo7 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo7 = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (fieldVector3DApplyInverseTo7.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo7.getX().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo7.getY().atan2(fieldVector3DApplyTo7.getZ().negate()), (RealFieldElement) fieldVector3DApplyInverseTo7.getX().acos(), (RealFieldElement) fieldVector3DApplyInverseTo7.getY().atan2(fieldVector3DApplyInverseTo7.getZ()));
            }
            if (rotationOrder == RotationOrder.XZX) {
                FieldVector3D<T> fieldVector3DApplyTo8 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo8 = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (fieldVector3DApplyInverseTo8.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo8.getX().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo8.getZ().atan2(fieldVector3DApplyTo8.getY()), (RealFieldElement) fieldVector3DApplyInverseTo8.getX().acos(), (RealFieldElement) fieldVector3DApplyInverseTo8.getZ().atan2(fieldVector3DApplyInverseTo8.getY().negate()));
            }
            if (rotationOrder == RotationOrder.YXY) {
                FieldVector3D<T> fieldVector3DApplyTo9 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo9 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (fieldVector3DApplyInverseTo9.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo9.getY().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo9.getX().atan2(fieldVector3DApplyTo9.getZ()), (RealFieldElement) fieldVector3DApplyInverseTo9.getY().acos(), (RealFieldElement) fieldVector3DApplyInverseTo9.getX().atan2(fieldVector3DApplyInverseTo9.getZ().negate()));
            }
            if (rotationOrder == RotationOrder.YZY) {
                FieldVector3D<T> fieldVector3DApplyTo10 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo10 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (fieldVector3DApplyInverseTo10.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo10.getY().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo10.getZ().atan2(fieldVector3DApplyTo10.getX().negate()), (RealFieldElement) fieldVector3DApplyInverseTo10.getY().acos(), (RealFieldElement) fieldVector3DApplyInverseTo10.getZ().atan2(fieldVector3DApplyInverseTo10.getX()));
            }
            if (rotationOrder == RotationOrder.ZXZ) {
                FieldVector3D<T> fieldVector3DApplyTo11 = applyTo(vector(0.0d, 0.0d, 1.0d));
                FieldVector3D<T> fieldVector3DApplyInverseTo11 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
                if (fieldVector3DApplyInverseTo11.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo11.getZ().getReal() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo11.getX().atan2(fieldVector3DApplyTo11.getY().negate()), (RealFieldElement) fieldVector3DApplyInverseTo11.getZ().acos(), (RealFieldElement) fieldVector3DApplyInverseTo11.getX().atan2(fieldVector3DApplyInverseTo11.getY()));
            }
            FieldVector3D<T> fieldVector3DApplyTo12 = applyTo(vector(0.0d, 0.0d, 1.0d));
            FieldVector3D<T> fieldVector3DApplyInverseTo12 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
            if (fieldVector3DApplyInverseTo12.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo12.getZ().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyTo12.getY().atan2(fieldVector3DApplyTo12.getX()), (RealFieldElement) fieldVector3DApplyInverseTo12.getZ().acos(), (RealFieldElement) fieldVector3DApplyInverseTo12.getY().atan2(fieldVector3DApplyInverseTo12.getX().negate()));
        }
        if (rotationOrder == RotationOrder.XYZ) {
            FieldVector3D<T> fieldVector3DApplyTo13 = applyTo(Vector3D.PLUS_I);
            FieldVector3D<T> fieldVector3DApplyInverseTo13 = applyInverseTo(Vector3D.PLUS_K);
            if (fieldVector3DApplyInverseTo13.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo13.getX().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return (T[]) buildArray((RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo13.getY().negate()).atan2(fieldVector3DApplyInverseTo13.getZ()), (RealFieldElement) fieldVector3DApplyInverseTo13.getX().asin(), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyTo13.getY().negate()).atan2(fieldVector3DApplyTo13.getX()));
        }
        if (rotationOrder == RotationOrder.XZY) {
            FieldVector3D<T> fieldVector3DApplyTo14 = applyTo(Vector3D.PLUS_I);
            FieldVector3D<T> fieldVector3DApplyInverseTo14 = applyInverseTo(Vector3D.PLUS_J);
            if (fieldVector3DApplyInverseTo14.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo14.getX().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo14.getZ().atan2(fieldVector3DApplyInverseTo14.getY()), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo14.getX().asin()).negate(), (RealFieldElement) fieldVector3DApplyTo14.getZ().atan2(fieldVector3DApplyTo14.getX()));
        }
        if (rotationOrder == RotationOrder.YXZ) {
            FieldVector3D<T> fieldVector3DApplyTo15 = applyTo(Vector3D.PLUS_J);
            FieldVector3D<T> fieldVector3DApplyInverseTo15 = applyInverseTo(Vector3D.PLUS_K);
            if (fieldVector3DApplyInverseTo15.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo15.getY().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo15.getX().atan2(fieldVector3DApplyInverseTo15.getZ()), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo15.getY().asin()).negate(), (RealFieldElement) fieldVector3DApplyTo15.getX().atan2(fieldVector3DApplyTo15.getY()));
        }
        if (rotationOrder == RotationOrder.YZX) {
            FieldVector3D<T> fieldVector3DApplyTo16 = applyTo(Vector3D.PLUS_J);
            FieldVector3D<T> fieldVector3DApplyInverseTo16 = applyInverseTo(Vector3D.PLUS_I);
            if (fieldVector3DApplyInverseTo16.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo16.getY().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return (T[]) buildArray((RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo16.getZ().negate()).atan2(fieldVector3DApplyInverseTo16.getX()), (RealFieldElement) fieldVector3DApplyInverseTo16.getY().asin(), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyTo16.getZ().negate()).atan2(fieldVector3DApplyTo16.getY()));
        }
        if (rotationOrder == RotationOrder.ZXY) {
            FieldVector3D<T> fieldVector3DApplyTo17 = applyTo(Vector3D.PLUS_K);
            FieldVector3D<T> fieldVector3DApplyInverseTo17 = applyInverseTo(Vector3D.PLUS_J);
            if (fieldVector3DApplyInverseTo17.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo17.getZ().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return (T[]) buildArray((RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo17.getX().negate()).atan2(fieldVector3DApplyInverseTo17.getY()), (RealFieldElement) fieldVector3DApplyInverseTo17.getZ().asin(), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyTo17.getX().negate()).atan2(fieldVector3DApplyTo17.getZ()));
        }
        if (rotationOrder == RotationOrder.ZYX) {
            FieldVector3D<T> fieldVector3DApplyTo18 = applyTo(Vector3D.PLUS_K);
            FieldVector3D<T> fieldVector3DApplyInverseTo18 = applyInverseTo(Vector3D.PLUS_I);
            if (fieldVector3DApplyInverseTo18.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo18.getZ().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo18.getY().atan2(fieldVector3DApplyInverseTo18.getX()), (RealFieldElement) ((RealFieldElement) fieldVector3DApplyInverseTo18.getZ().asin()).negate(), (RealFieldElement) fieldVector3DApplyTo18.getY().atan2(fieldVector3DApplyTo18.getZ()));
        }
        if (rotationOrder == RotationOrder.XYX) {
            Vector3D vector3D = Vector3D.PLUS_I;
            FieldVector3D<T> fieldVector3DApplyTo19 = applyTo(vector3D);
            FieldVector3D<T> fieldVector3DApplyInverseTo19 = applyInverseTo(vector3D);
            if (fieldVector3DApplyInverseTo19.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo19.getX().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo19.getY().atan2(fieldVector3DApplyInverseTo19.getZ().negate()), (RealFieldElement) fieldVector3DApplyInverseTo19.getX().acos(), (RealFieldElement) fieldVector3DApplyTo19.getY().atan2(fieldVector3DApplyTo19.getZ()));
        }
        if (rotationOrder == RotationOrder.XZX) {
            Vector3D vector3D2 = Vector3D.PLUS_I;
            FieldVector3D<T> fieldVector3DApplyTo20 = applyTo(vector3D2);
            FieldVector3D<T> fieldVector3DApplyInverseTo20 = applyInverseTo(vector3D2);
            if (fieldVector3DApplyInverseTo20.getX().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo20.getX().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo20.getZ().atan2(fieldVector3DApplyInverseTo20.getY()), (RealFieldElement) fieldVector3DApplyInverseTo20.getX().acos(), (RealFieldElement) fieldVector3DApplyTo20.getZ().atan2(fieldVector3DApplyTo20.getY().negate()));
        }
        if (rotationOrder == RotationOrder.YXY) {
            Vector3D vector3D3 = Vector3D.PLUS_J;
            FieldVector3D<T> fieldVector3DApplyTo21 = applyTo(vector3D3);
            FieldVector3D<T> fieldVector3DApplyInverseTo21 = applyInverseTo(vector3D3);
            if (fieldVector3DApplyInverseTo21.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo21.getY().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo21.getX().atan2(fieldVector3DApplyInverseTo21.getZ()), (RealFieldElement) fieldVector3DApplyInverseTo21.getY().acos(), (RealFieldElement) fieldVector3DApplyTo21.getX().atan2(fieldVector3DApplyTo21.getZ().negate()));
        }
        if (rotationOrder == RotationOrder.YZY) {
            Vector3D vector3D4 = Vector3D.PLUS_J;
            FieldVector3D<T> fieldVector3DApplyTo22 = applyTo(vector3D4);
            FieldVector3D<T> fieldVector3DApplyInverseTo22 = applyInverseTo(vector3D4);
            if (fieldVector3DApplyInverseTo22.getY().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo22.getY().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo22.getZ().atan2(fieldVector3DApplyInverseTo22.getX().negate()), (RealFieldElement) fieldVector3DApplyInverseTo22.getY().acos(), (RealFieldElement) fieldVector3DApplyTo22.getZ().atan2(fieldVector3DApplyTo22.getX()));
        }
        if (rotationOrder == RotationOrder.ZXZ) {
            Vector3D vector3D5 = Vector3D.PLUS_K;
            FieldVector3D<T> fieldVector3DApplyTo23 = applyTo(vector3D5);
            FieldVector3D<T> fieldVector3DApplyInverseTo23 = applyInverseTo(vector3D5);
            if (fieldVector3DApplyInverseTo23.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo23.getZ().getReal() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo23.getX().atan2(fieldVector3DApplyInverseTo23.getY().negate()), (RealFieldElement) fieldVector3DApplyInverseTo23.getZ().acos(), (RealFieldElement) fieldVector3DApplyTo23.getX().atan2(fieldVector3DApplyTo23.getY()));
        }
        Vector3D vector3D6 = Vector3D.PLUS_K;
        FieldVector3D<T> fieldVector3DApplyTo24 = applyTo(vector3D6);
        FieldVector3D<T> fieldVector3DApplyInverseTo24 = applyInverseTo(vector3D6);
        if (fieldVector3DApplyInverseTo24.getZ().getReal() < -0.9999999999d || fieldVector3DApplyInverseTo24.getZ().getReal() > 0.9999999999d) {
            throw new CardanEulerSingularityException(false);
        }
        return (T[]) buildArray((RealFieldElement) fieldVector3DApplyInverseTo24.getY().atan2(fieldVector3DApplyInverseTo24.getX()), (RealFieldElement) fieldVector3DApplyInverseTo24.getZ().acos(), (RealFieldElement) fieldVector3DApplyTo24.getY().atan2(fieldVector3DApplyTo24.getX().negate()));
    }

    public FieldVector3D<T> getAxis(RotationConvention rotationConvention) {
        T t = this.q1;
        RealFieldElement realFieldElement = (RealFieldElement) t.multiply(t);
        T t2 = this.q2;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add(t2.multiply(t2));
        T t3 = this.q3;
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement2.add(t3.multiply(t3));
        if (realFieldElement3.getReal() == 0.0d) {
            Field<T> field = realFieldElement3.getField();
            return new FieldVector3D<>((RealFieldElement) (rotationConvention == RotationConvention.VECTOR_OPERATOR ? field.getOne() : ((RealFieldElement) field.getOne()).negate()), (RealFieldElement) field.getZero(), (RealFieldElement) field.getZero());
        }
        double d2 = rotationConvention == RotationConvention.VECTOR_OPERATOR ? 1.0d : -1.0d;
        if (this.q0.getReal() < 0.0d) {
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.sqrt()).reciprocal()).multiply(d2);
            return new FieldVector3D<>((RealFieldElement) this.q1.multiply(realFieldElement4), (RealFieldElement) this.q2.multiply(realFieldElement4), (RealFieldElement) this.q3.multiply(realFieldElement4));
        }
        RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.sqrt()).reciprocal()).negate()).multiply(d2);
        return new FieldVector3D<>((RealFieldElement) this.q1.multiply(realFieldElement5), (RealFieldElement) this.q2.multiply(realFieldElement5), (RealFieldElement) this.q3.multiply(realFieldElement5));
    }

    public FieldVector3D<T> applyTo(Vector3D vector3D) {
        double x = vector3D.getX();
        double y = vector3D.getY();
        double z = vector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(x)).add(this.q2.multiply(y))).add(this.q3.multiply(z));
        T t = this.q0;
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t.multiply(((RealFieldElement) t.multiply(x)).subtract(((RealFieldElement) this.q2.multiply(z)).subtract(this.q3.multiply(y))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(x);
        T t2 = this.q0;
        RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(y)).subtract(((RealFieldElement) this.q3.multiply(x)).subtract(this.q1.multiply(z))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(y);
        T t3 = this.q0;
        return new FieldVector3D<>(realFieldElement2, realFieldElement3, (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(((RealFieldElement) t3.multiply(z)).subtract(((RealFieldElement) this.q1.multiply(y)).subtract(this.q2.multiply(x))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(z));
    }

    public FieldVector3D<T> applyInverseTo(Vector3D vector3D) {
        double x = vector3D.getX();
        double y = vector3D.getY();
        double z = vector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(x)).add(this.q2.multiply(y))).add(this.q3.multiply(z));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.q0.negate();
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) realFieldElement2.multiply(x)).subtract(((RealFieldElement) this.q2.multiply(z)).subtract(this.q3.multiply(y))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(x), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) realFieldElement2.multiply(y)).subtract(((RealFieldElement) this.q3.multiply(x)).subtract(this.q1.multiply(z))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(y), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) realFieldElement2.multiply(z)).subtract(((RealFieldElement) this.q1.multiply(y)).subtract(this.q2.multiply(x))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(z));
    }

    @Deprecated
    public FieldRotation(FieldVector3D<T> fieldVector3D, T t) throws MathIllegalArgumentException {
        this(fieldVector3D, t, RotationConvention.VECTOR_OPERATOR);
    }

    public void applyTo(T[] tArr, T[] tArr2) {
        T t = tArr[0];
        T t2 = tArr[1];
        T t3 = tArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(t)).add(this.q2.multiply(t2))).add(this.q3.multiply(t3));
        T t4 = this.q0;
        tArr2[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t4.multiply(((RealFieldElement) t.multiply(t4)).subtract(((RealFieldElement) this.q2.multiply(t3)).subtract(this.q3.multiply(t2))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(t);
        T t5 = this.q0;
        tArr2[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t5.multiply(((RealFieldElement) t2.multiply(t5)).subtract(((RealFieldElement) this.q3.multiply(t)).subtract(this.q1.multiply(t3))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(t2);
        T t6 = this.q0;
        tArr2[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t6.multiply(((RealFieldElement) t3.multiply(t6)).subtract(((RealFieldElement) this.q1.multiply(t2)).subtract(this.q2.multiply(t))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(t3);
    }

    public FieldRotation(FieldVector3D<T> fieldVector3D, T t, RotationConvention rotationConvention) throws MathIllegalArgumentException {
        RealFieldElement norm = fieldVector3D.getNorm();
        if (norm.getReal() != 0.0d) {
            RealFieldElement realFieldElement = (RealFieldElement) t.multiply(rotationConvention == RotationConvention.VECTOR_OPERATOR ? -0.5d : 0.5d);
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) realFieldElement.sin()).divide(norm);
            this.q0 = (T) realFieldElement.cos();
            this.q1 = (T) realFieldElement2.multiply(fieldVector3D.getX());
            this.q2 = (T) realFieldElement2.multiply(fieldVector3D.getY());
            this.q3 = (T) realFieldElement2.multiply(fieldVector3D.getZ());
            return;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_AXIS, new Object[0]);
    }

    public void applyInverseTo(T[] tArr, T[] tArr2) {
        T t = tArr[0];
        T t2 = tArr[1];
        T t3 = tArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(t)).add(this.q2.multiply(t2))).add(this.q3.multiply(t3));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.q0.negate();
        tArr2[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) t.multiply(realFieldElement2)).subtract(((RealFieldElement) this.q2.multiply(t3)).subtract(this.q3.multiply(t2))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(t);
        tArr2[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) t2.multiply(realFieldElement2)).subtract(((RealFieldElement) this.q3.multiply(t)).subtract(this.q1.multiply(t3))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(t2);
        tArr2[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) t3.multiply(realFieldElement2)).subtract(((RealFieldElement) this.q1.multiply(t2)).subtract(this.q2.multiply(t))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(t3);
    }

    public void applyTo(double[] dArr, T[] tArr) {
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(d2)).add(this.q2.multiply(d3))).add(this.q3.multiply(d4));
        T t = this.q0;
        tArr[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t.multiply(((RealFieldElement) t.multiply(d2)).subtract(((RealFieldElement) this.q2.multiply(d4)).subtract(this.q3.multiply(d3))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(d2);
        T t2 = this.q0;
        tArr[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t2.multiply(((RealFieldElement) t2.multiply(d3)).subtract(((RealFieldElement) this.q3.multiply(d2)).subtract(this.q1.multiply(d4))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(d3);
        T t3 = this.q0;
        tArr[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t3.multiply(((RealFieldElement) t3.multiply(d4)).subtract(((RealFieldElement) this.q1.multiply(d3)).subtract(this.q2.multiply(d2))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(d4);
    }

    public void applyInverseTo(double[] dArr, T[] tArr) {
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.q1.multiply(d2)).add(this.q2.multiply(d3))).add(this.q3.multiply(d4));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.q0.negate();
        tArr[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) realFieldElement2.multiply(d2)).subtract(((RealFieldElement) this.q2.multiply(d4)).subtract(this.q3.multiply(d3))))).add(realFieldElement.multiply(this.q1))).multiply(2)).subtract(d2);
        tArr[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) realFieldElement2.multiply(d3)).subtract(((RealFieldElement) this.q3.multiply(d2)).subtract(this.q1.multiply(d4))))).add(realFieldElement.multiply(this.q2))).multiply(2)).subtract(d3);
        tArr[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(((RealFieldElement) realFieldElement2.multiply(d4)).subtract(((RealFieldElement) this.q1.multiply(d3)).subtract(this.q2.multiply(d2))))).add(realFieldElement.multiply(this.q3))).multiply(2)).subtract(d4);
    }

    public FieldRotation(T[][] tArr, double d2) throws NotARotationMatrixException {
        if (tArr.length == 3 && tArr[0].length == 3 && tArr[1].length == 3 && tArr[2].length == 3) {
            RealFieldElement[][] realFieldElementArrOrthogonalizeMatrix = orthogonalizeMatrix(tArr, d2);
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElementArrOrthogonalizeMatrix[0][0].multiply((RealFieldElement) ((RealFieldElement) realFieldElementArrOrthogonalizeMatrix[1][1].multiply(realFieldElementArrOrthogonalizeMatrix[2][2])).subtract(realFieldElementArrOrthogonalizeMatrix[2][1].multiply(realFieldElementArrOrthogonalizeMatrix[1][2])))).subtract(realFieldElementArrOrthogonalizeMatrix[1][0].multiply((RealFieldElement) ((RealFieldElement) realFieldElementArrOrthogonalizeMatrix[0][1].multiply(realFieldElementArrOrthogonalizeMatrix[2][2])).subtract(realFieldElementArrOrthogonalizeMatrix[2][1].multiply(realFieldElementArrOrthogonalizeMatrix[0][2]))))).add(realFieldElementArrOrthogonalizeMatrix[2][0].multiply((RealFieldElement) ((RealFieldElement) realFieldElementArrOrthogonalizeMatrix[0][1].multiply(realFieldElementArrOrthogonalizeMatrix[1][2])).subtract(realFieldElementArrOrthogonalizeMatrix[1][1].multiply(realFieldElementArrOrthogonalizeMatrix[0][2]))));
            if (realFieldElement.getReal() >= 0.0d) {
                RealFieldElement[] realFieldElementArrMat2quat = mat2quat(realFieldElementArrOrthogonalizeMatrix);
                this.q0 = (T) realFieldElementArrMat2quat[0];
                this.q1 = (T) realFieldElementArrMat2quat[1];
                this.q2 = (T) realFieldElementArrMat2quat[2];
                this.q3 = (T) realFieldElementArrMat2quat[3];
                return;
            }
            throw new NotARotationMatrixException(LocalizedFormats.CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT, realFieldElement);
        }
        throw new NotARotationMatrixException(LocalizedFormats.ROTATION_MATRIX_DIMENSIONS, Integer.valueOf(tArr.length), Integer.valueOf(tArr[0].length));
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> applyTo(Rotation rotation, FieldVector3D<T> fieldVector3D) {
        RealFieldElement x = fieldVector3D.getX();
        RealFieldElement y = fieldVector3D.getY();
        RealFieldElement z = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) x.multiply(rotation.getQ1())).add(y.multiply(rotation.getQ2()))).add(z.multiply(rotation.getQ3()));
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) x.multiply(rotation.getQ0())).subtract(((RealFieldElement) z.multiply(rotation.getQ2())).subtract(y.multiply(rotation.getQ3())))).multiply(rotation.getQ0())).add(realFieldElement.multiply(rotation.getQ1()))).multiply(2)).subtract(x), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) y.multiply(rotation.getQ0())).subtract(((RealFieldElement) x.multiply(rotation.getQ3())).subtract(z.multiply(rotation.getQ1())))).multiply(rotation.getQ0())).add(realFieldElement.multiply(rotation.getQ2()))).multiply(2)).subtract(y), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) z.multiply(rotation.getQ0())).subtract(((RealFieldElement) y.multiply(rotation.getQ1())).subtract(x.multiply(rotation.getQ2())))).multiply(rotation.getQ0())).add(realFieldElement.multiply(rotation.getQ3()))).multiply(2)).subtract(z));
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> applyInverseTo(Rotation rotation, FieldVector3D<T> fieldVector3D) {
        RealFieldElement x = fieldVector3D.getX();
        RealFieldElement y = fieldVector3D.getY();
        RealFieldElement z = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) x.multiply(rotation.getQ1())).add(y.multiply(rotation.getQ2()))).add(z.multiply(rotation.getQ3()));
        double d2 = -rotation.getQ0();
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) x.multiply(d2)).subtract(((RealFieldElement) z.multiply(rotation.getQ2())).subtract(y.multiply(rotation.getQ3())))).multiply(d2)).add(realFieldElement.multiply(rotation.getQ1()))).multiply(2)).subtract(x), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) y.multiply(d2)).subtract(((RealFieldElement) x.multiply(rotation.getQ3())).subtract(z.multiply(rotation.getQ1())))).multiply(d2)).add(realFieldElement.multiply(rotation.getQ2()))).multiply(2)).subtract(y), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) z.multiply(d2)).subtract(((RealFieldElement) y.multiply(rotation.getQ1())).subtract(x.multiply(rotation.getQ2())))).multiply(d2)).add(realFieldElement.multiply(rotation.getQ3()))).multiply(2)).subtract(z));
    }

    public FieldRotation<T> applyTo(FieldRotation<T> fieldRotation) {
        return compose(fieldRotation, RotationConvention.VECTOR_OPERATOR);
    }

    public FieldRotation<T> applyTo(Rotation rotation) {
        return compose(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public static <T extends RealFieldElement<T>> FieldRotation<T> applyTo(Rotation rotation, FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q0.multiply(rotation.getQ0())).subtract(((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q1.multiply(rotation.getQ1())).add(((FieldRotation) fieldRotation).q2.multiply(rotation.getQ2()))).add(((FieldRotation) fieldRotation).q3.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q1.multiply(rotation.getQ0())).add(((FieldRotation) fieldRotation).q0.multiply(rotation.getQ1()))).add(((RealFieldElement) ((FieldRotation) fieldRotation).q2.multiply(rotation.getQ3())).subtract(((FieldRotation) fieldRotation).q3.multiply(rotation.getQ2()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q2.multiply(rotation.getQ0())).add(((FieldRotation) fieldRotation).q0.multiply(rotation.getQ2()))).add(((RealFieldElement) ((FieldRotation) fieldRotation).q3.multiply(rotation.getQ1())).subtract(((FieldRotation) fieldRotation).q1.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q3.multiply(rotation.getQ0())).add(((FieldRotation) fieldRotation).q0.multiply(rotation.getQ3()))).add(((RealFieldElement) ((FieldRotation) fieldRotation).q1.multiply(rotation.getQ2())).subtract(((FieldRotation) fieldRotation).q2.multiply(rotation.getQ1()))), false);
    }

    public FieldRotation<T> applyInverseTo(FieldRotation<T> fieldRotation) {
        return composeInverse(fieldRotation, RotationConvention.VECTOR_OPERATOR);
    }

    public FieldRotation<T> applyInverseTo(Rotation rotation) {
        return composeInverse(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public FieldRotation(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2, FieldVector3D<T> fieldVector3D3, FieldVector3D<T> fieldVector3D4) throws MathArithmeticException {
        FieldVector3D<T> fieldVector3DNormalize = FieldVector3D.crossProduct(fieldVector3D, fieldVector3D2).normalize();
        FieldVector3D<T> fieldVector3DNormalize2 = FieldVector3D.crossProduct(fieldVector3DNormalize, fieldVector3D).normalize();
        FieldVector3D<T> fieldVector3DNormalize3 = fieldVector3D.normalize();
        FieldVector3D<T> fieldVector3DNormalize4 = FieldVector3D.crossProduct(fieldVector3D3, fieldVector3D4).normalize();
        FieldVector3D<T> fieldVector3DNormalize5 = FieldVector3D.crossProduct(fieldVector3DNormalize4, fieldVector3D3).normalize();
        FieldVector3D<T> fieldVector3DNormalize6 = fieldVector3D3.normalize();
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(fieldVector3DNormalize3.getX().getField(), 3, 3);
        realFieldElementArr[0][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getX().multiply(fieldVector3DNormalize6.getX())).add(fieldVector3DNormalize2.getX().multiply(fieldVector3DNormalize5.getX()))).add(fieldVector3DNormalize.getX().multiply(fieldVector3DNormalize4.getX()));
        realFieldElementArr[0][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getY().multiply(fieldVector3DNormalize6.getX())).add(fieldVector3DNormalize2.getY().multiply(fieldVector3DNormalize5.getX()))).add(fieldVector3DNormalize.getY().multiply(fieldVector3DNormalize4.getX()));
        realFieldElementArr[0][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getZ().multiply(fieldVector3DNormalize6.getX())).add(fieldVector3DNormalize2.getZ().multiply(fieldVector3DNormalize5.getX()))).add(fieldVector3DNormalize.getZ().multiply(fieldVector3DNormalize4.getX()));
        realFieldElementArr[1][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getX().multiply(fieldVector3DNormalize6.getY())).add(fieldVector3DNormalize2.getX().multiply(fieldVector3DNormalize5.getY()))).add(fieldVector3DNormalize.getX().multiply(fieldVector3DNormalize4.getY()));
        realFieldElementArr[1][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getY().multiply(fieldVector3DNormalize6.getY())).add(fieldVector3DNormalize2.getY().multiply(fieldVector3DNormalize5.getY()))).add(fieldVector3DNormalize.getY().multiply(fieldVector3DNormalize4.getY()));
        realFieldElementArr[1][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getZ().multiply(fieldVector3DNormalize6.getY())).add(fieldVector3DNormalize2.getZ().multiply(fieldVector3DNormalize5.getY()))).add(fieldVector3DNormalize.getZ().multiply(fieldVector3DNormalize4.getY()));
        realFieldElementArr[2][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getX().multiply(fieldVector3DNormalize6.getZ())).add(fieldVector3DNormalize2.getX().multiply(fieldVector3DNormalize5.getZ()))).add(fieldVector3DNormalize.getX().multiply(fieldVector3DNormalize4.getZ()));
        realFieldElementArr[2][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getY().multiply(fieldVector3DNormalize6.getZ())).add(fieldVector3DNormalize2.getY().multiply(fieldVector3DNormalize5.getZ()))).add(fieldVector3DNormalize.getY().multiply(fieldVector3DNormalize4.getZ()));
        realFieldElementArr[2][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldVector3DNormalize3.getZ().multiply(fieldVector3DNormalize6.getZ())).add(fieldVector3DNormalize2.getZ().multiply(fieldVector3DNormalize5.getZ()))).add(fieldVector3DNormalize.getZ().multiply(fieldVector3DNormalize4.getZ()));
        RealFieldElement[] realFieldElementArrMat2quat = mat2quat(realFieldElementArr);
        this.q0 = (T) realFieldElementArrMat2quat[0];
        this.q1 = (T) realFieldElementArrMat2quat[1];
        this.q2 = (T) realFieldElementArrMat2quat[2];
        this.q3 = (T) realFieldElementArrMat2quat[3];
    }

    public static <T extends RealFieldElement<T>> FieldRotation<T> applyInverseTo(Rotation rotation, FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q0.multiply(rotation.getQ0())).add(((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q1.multiply(rotation.getQ1())).add(((FieldRotation) fieldRotation).q2.multiply(rotation.getQ2()))).add(((FieldRotation) fieldRotation).q3.multiply(rotation.getQ3())))).negate(), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q0.multiply(rotation.getQ1())).add(((RealFieldElement) ((FieldRotation) fieldRotation).q2.multiply(rotation.getQ3())).subtract(((FieldRotation) fieldRotation).q3.multiply(rotation.getQ2())))).subtract(((FieldRotation) fieldRotation).q1.multiply(rotation.getQ0())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q0.multiply(rotation.getQ2())).add(((RealFieldElement) ((FieldRotation) fieldRotation).q3.multiply(rotation.getQ1())).subtract(((FieldRotation) fieldRotation).q1.multiply(rotation.getQ3())))).subtract(((FieldRotation) fieldRotation).q2.multiply(rotation.getQ0())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).q0.multiply(rotation.getQ3())).add(((RealFieldElement) ((FieldRotation) fieldRotation).q1.multiply(rotation.getQ2())).subtract(((FieldRotation) fieldRotation).q2.multiply(rotation.getQ1())))).subtract(((FieldRotation) fieldRotation).q3.multiply(rotation.getQ0())), false);
    }

    public FieldRotation(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) throws MathArithmeticException {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.getNorm().multiply(fieldVector3D2.getNorm());
        if (realFieldElement.getReal() != 0.0d) {
            RealFieldElement realFieldElementDotProduct = FieldVector3D.dotProduct(fieldVector3D, fieldVector3D2);
            if (realFieldElementDotProduct.getReal() < realFieldElement.getReal() * (-0.999999999999998d)) {
                FieldVector3D<T> fieldVector3DOrthogonal = fieldVector3D.orthogonal();
                this.q0 = (T) realFieldElement.getField().getZero();
                this.q1 = (T) fieldVector3DOrthogonal.getX().negate();
                this.q2 = (T) fieldVector3DOrthogonal.getY().negate();
                this.q3 = (T) fieldVector3DOrthogonal.getZ().negate();
                return;
            }
            T t = (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElementDotProduct.divide(realFieldElement)).add(1.0d)).multiply(0.5d)).sqrt();
            this.q0 = t;
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t.multiply(realFieldElement)).multiply(2.0d)).reciprocal();
            FieldVector3D fieldVector3DCrossProduct = FieldVector3D.crossProduct(fieldVector3D2, fieldVector3D);
            this.q1 = (T) realFieldElement2.multiply(fieldVector3DCrossProduct.getX());
            this.q2 = (T) realFieldElement2.multiply(fieldVector3DCrossProduct.getY());
            this.q3 = (T) realFieldElement2.multiply(fieldVector3DCrossProduct.getZ());
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR, new Object[0]);
    }

    @Deprecated
    public FieldRotation(RotationOrder rotationOrder, T t, T t2, T t3) {
        this(rotationOrder, RotationConvention.VECTOR_OPERATOR, t, t2, t3);
    }

    public FieldRotation(RotationOrder rotationOrder, RotationConvention rotationConvention, T t, T t2, T t3) {
        RealFieldElement realFieldElement = (RealFieldElement) t.getField().getOne();
        FieldRotation<T> fieldRotationCompose = new FieldRotation(new FieldVector3D(realFieldElement, rotationOrder.getA1()), t, rotationConvention).compose(new FieldRotation(new FieldVector3D(realFieldElement, rotationOrder.getA2()), t2, rotationConvention).compose(new FieldRotation<>(new FieldVector3D(realFieldElement, rotationOrder.getA3()), t3, rotationConvention), rotationConvention), rotationConvention);
        this.q0 = fieldRotationCompose.q0;
        this.q1 = fieldRotationCompose.q1;
        this.q2 = fieldRotationCompose.q2;
        this.q3 = fieldRotationCompose.q3;
    }
}
