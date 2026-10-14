package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.List;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.enclosing.EnclosingBall;
import org.apache.commons.math3.geometry.enclosing.SupportBallGenerator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class DiskGenerator implements SupportBallGenerator<Euclidean2D, Vector2D> {
    private BigFraction minor(BigFraction[] bigFractionArr, BigFraction[] bigFractionArr2) {
        return bigFractionArr2[0].multiply(bigFractionArr[2].subtract(bigFractionArr[1])).add(bigFractionArr2[1].multiply(bigFractionArr[0].subtract(bigFractionArr[2]))).add(bigFractionArr2[2].multiply(bigFractionArr[1].subtract(bigFractionArr[0])));
    }

    @Override // org.apache.commons.math3.geometry.enclosing.SupportBallGenerator
    public EnclosingBall<Euclidean2D, Vector2D> ballOnSupport(List<Vector2D> list) {
        if (list.size() < 1) {
            return new EnclosingBall<>(Vector2D.ZERO, Double.NEGATIVE_INFINITY, new Vector2D[0]);
        }
        Vector2D vector2D = list.get(0);
        if (list.size() < 2) {
            return new EnclosingBall<>(vector2D, 0.0d, vector2D);
        }
        Vector2D vector2D2 = list.get(1);
        if (list.size() < 3) {
            return new EnclosingBall<>(new Vector2D(0.5d, vector2D, 0.5d, vector2D2), vector2D.distance((Vector<Euclidean2D>) vector2D2) * 0.5d, vector2D, vector2D2);
        }
        Vector2D vector2D3 = list.get(2);
        BigFraction[] bigFractionArr = {new BigFraction(vector2D.getX()), new BigFraction(vector2D2.getX()), new BigFraction(vector2D3.getX())};
        BigFraction[] bigFractionArr2 = {new BigFraction(vector2D.getY()), new BigFraction(vector2D2.getY()), new BigFraction(vector2D3.getY())};
        BigFraction[] bigFractionArr3 = {bigFractionArr[0].multiply(bigFractionArr[0]).add(bigFractionArr2[0].multiply(bigFractionArr2[0])), bigFractionArr[1].multiply(bigFractionArr[1]).add(bigFractionArr2[1].multiply(bigFractionArr2[1])), bigFractionArr[2].multiply(bigFractionArr[2]).add(bigFractionArr2[2].multiply(bigFractionArr2[2]))};
        BigFraction bigFractionMultiply = minor(bigFractionArr, bigFractionArr2).multiply(2);
        BigFraction bigFractionMinor = minor(bigFractionArr3, bigFractionArr2);
        BigFraction bigFractionMinor2 = minor(bigFractionArr3, bigFractionArr);
        BigFraction bigFractionDivide = bigFractionMinor.divide(bigFractionMultiply);
        BigFraction bigFractionNegate = bigFractionMinor2.divide(bigFractionMultiply).negate();
        BigFraction bigFractionSubtract = bigFractionArr[0].subtract(bigFractionDivide);
        BigFraction bigFractionSubtract2 = bigFractionArr2[0].subtract(bigFractionNegate);
        return new EnclosingBall<>(new Vector2D(bigFractionDivide.doubleValue(), bigFractionNegate.doubleValue()), FastMath.sqrt(bigFractionSubtract.multiply(bigFractionSubtract).add(bigFractionSubtract2.multiply(bigFractionSubtract2)).doubleValue()), vector2D, vector2D2, vector2D3);
    }
}
