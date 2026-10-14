package org.apache.commons.math3.analysis.integration.gauss;

import java.math.BigDecimal;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class GaussIntegratorFactory {
    private final BaseRuleFactory<Double> legendre = new LegendreRuleFactory();
    private final BaseRuleFactory<BigDecimal> legendreHighPrecision = new LegendreHighPrecisionRuleFactory();
    private final BaseRuleFactory<Double> hermite = new HermiteRuleFactory();

    private static Pair<double[], double[]> getRule(BaseRuleFactory<? extends Number> baseRuleFactory, int i) throws NotStrictlyPositiveException, DimensionMismatchException {
        return baseRuleFactory.getRule(i);
    }

    private static Pair<double[], double[]> transform(Pair<double[], double[]> pair, double d2, double d3) {
        double[] first = pair.getFirst();
        double[] second = pair.getSecond();
        double d4 = (d3 - d2) / 2.0d;
        double d5 = d2 + d4;
        for (int i = 0; i < first.length; i++) {
            first[i] = (first[i] * d4) + d5;
            second[i] = second[i] * d4;
        }
        return new Pair<>(first, second);
    }

    public SymmetricGaussIntegrator hermite(int i) {
        return new SymmetricGaussIntegrator(getRule(this.hermite, i));
    }

    public GaussIntegrator legendre(int i) {
        return new GaussIntegrator(getRule(this.legendre, i));
    }

    public GaussIntegrator legendreHighPrecision(int i) throws NotStrictlyPositiveException {
        return new GaussIntegrator(getRule(this.legendreHighPrecision, i));
    }

    public GaussIntegrator legendre(int i, double d2, double d3) throws NotStrictlyPositiveException {
        return new GaussIntegrator(transform(getRule(this.legendre, i), d2, d3));
    }

    public GaussIntegrator legendreHighPrecision(int i, double d2, double d3) throws NotStrictlyPositiveException {
        return new GaussIntegrator(transform(getRule(this.legendreHighPrecision, i), d2, d3));
    }
}
