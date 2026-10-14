package org.apache.commons.math3.stat.correlation;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
class StorelessBivariateCovariance {
    private boolean biasCorrected;
    private double covarianceNumerator;
    private double meanX;
    private double meanY;
    private double n;

    StorelessBivariateCovariance() {
        this(true);
    }

    public void append(StorelessBivariateCovariance storelessBivariateCovariance) {
        double d2 = this.n;
        double d3 = storelessBivariateCovariance.n + d2;
        this.n = d3;
        double d4 = storelessBivariateCovariance.meanX;
        double d5 = this.meanX;
        double d6 = d4 - d5;
        double d7 = storelessBivariateCovariance.meanY;
        double d8 = this.meanY;
        double d9 = d7 - d8;
        double d10 = storelessBivariateCovariance.n;
        this.meanX = d5 + ((d6 * d10) / d3);
        this.meanY = d8 + ((d9 * d10) / d3);
        this.covarianceNumerator += storelessBivariateCovariance.covarianceNumerator + (((d2 * d10) / d3) * d6 * d9);
    }

    public double getN() {
        return this.n;
    }

    public double getResult() throws NumberIsTooSmallException {
        double d2;
        double d3 = this.n;
        if (d3 < 2.0d) {
            throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_DIMENSION, Double.valueOf(this.n), 2, true);
        }
        if (this.biasCorrected) {
            d2 = this.covarianceNumerator;
            d3 -= 1.0d;
        } else {
            d2 = this.covarianceNumerator;
        }
        return d2 / d3;
    }

    public void increment(double d2, double d3) {
        double d4 = this.n + 1.0d;
        this.n = d4;
        double d5 = this.meanX;
        double d6 = d2 - d5;
        double d7 = this.meanY;
        double d8 = d3 - d7;
        this.meanX = d5 + (d6 / d4);
        this.meanY = d7 + (d8 / d4);
        this.covarianceNumerator += ((d4 - 1.0d) / d4) * d6 * d8;
    }

    StorelessBivariateCovariance(boolean z) {
        this.meanY = 0.0d;
        this.meanX = 0.0d;
        this.n = 0.0d;
        this.covarianceNumerator = 0.0d;
        this.biasCorrected = z;
    }
}
