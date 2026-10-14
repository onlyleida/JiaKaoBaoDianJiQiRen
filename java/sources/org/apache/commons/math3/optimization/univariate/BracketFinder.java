package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class BracketFinder {
    private static final double EPS_MIN = 1.0E-21d;
    private static final double GOLD = 1.618034d;
    private final Incrementor evaluations;
    private double fHi;
    private double fLo;
    private double fMid;
    private final double growLimit;
    private double hi;
    private double lo;
    private double mid;

    public BracketFinder() {
        this(100.0d, 50);
    }

    private double eval(UnivariateFunction univariateFunction, double d2) {
        try {
            this.evaluations.incrementCount();
            return univariateFunction.value(d2);
        } catch (MaxCountExceededException e2) {
            throw new TooManyEvaluationsException(e2.getMax());
        }
    }

    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public double getFHi() {
        return this.fHi;
    }

    public double getFLo() {
        return this.fLo;
    }

    public double getFMid() {
        return this.fMid;
    }

    public double getHi() {
        return this.hi;
    }

    public double getLo() {
        return this.lo;
    }

    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double getMid() {
        return this.mid;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:25:0x006e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0091  */
    /* JADX WARN: Code duplicated, block: B:30:0x0097  */
    /* JADX WARN: Code duplicated, block: B:33:0x009c  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:61:0x011e  */
    /* JADX WARN: Code duplicated, block: B:70:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00b3 A[SYNTHETIC] */
    public void search(UnivariateFunction univariateFunction, GoalType goalType, double d2, double d3) {
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        double d10;
        double d11;
        double d12;
        double d13;
        long j;
        double dEval;
        double dEval2;
        double dEval3;
        this.evaluations.resetCount();
        boolean z = goalType == GoalType.MINIMIZE;
        double d14 = d2;
        double dEval4 = eval(univariateFunction, d14);
        d14 = d3;
        double dEval5 = eval(univariateFunction, d14);
        if (!z ? dEval4 > dEval5 : dEval4 < dEval5) {
            d14 = d14;
            d14 = d14;
        } else {
            dEval4 = dEval5;
            dEval5 = dEval4;
        }
        d14 = ((d14 - d14) * GOLD) + d14;
        dEval5 = eval(univariateFunction, d14);
        while (true) {
            if (z) {
                if (dEval5 < dEval5) {
                    double d15 = d14 - d14;
                    double d16 = (dEval5 - dEval5) * d15;
                    double d17 = d14 - d14;
                    double d18 = (dEval5 - dEval4) * d17;
                    d7 = d18 - d16;
                    if (FastMath.abs(d7) < EPS_MIN) {
                        d8 = 2.0E-21d;
                    } else {
                        d8 = d7 * 2.0d;
                    }
                    d5 = d14 - (((d17 * d18) - (d15 * d16)) / d8);
                    d9 = dEval4;
                    d10 = d14 - d14;
                    d11 = (this.growLimit * d10) + d14;
                    d12 = d5 - d14;
                    if ((d14 - d5) * d12 > 0.0d) {
                        dEval3 = eval(univariateFunction, d5);
                        if (z) {
                            if (dEval3 < dEval5) {
                                d6 = dEval5;
                                d4 = dEval5;
                                dEval5 = dEval3;
                            } else if (z) {
                                if (dEval3 > dEval5) {
                                    d6 = dEval3;
                                    d14 = d5;
                                    d4 = d9;
                                    d5 = d14;
                                    d14 = d14;
                                }
                                d11 = d14 + (d10 * GOLD);
                                dEval = eval(univariateFunction, d11);
                            } else {
                                if (dEval3 < dEval5) {
                                    d6 = dEval3;
                                    d14 = d5;
                                    d4 = d9;
                                    d5 = d14;
                                    d14 = d14;
                                }
                                d11 = d14 + (d10 * GOLD);
                                dEval = eval(univariateFunction, d11);
                            }
                        } else if (dEval3 > dEval5) {
                            d6 = dEval5;
                            d4 = dEval5;
                            dEval5 = dEval3;
                        } else if (z) {
                            if (dEval3 > dEval5) {
                                d6 = dEval3;
                                d14 = d5;
                                d4 = d9;
                                d5 = d14;
                                d14 = d14;
                            }
                            d11 = d14 + (d10 * GOLD);
                            dEval = eval(univariateFunction, d11);
                        } else {
                            if (dEval3 < dEval5) {
                                d6 = dEval3;
                                d14 = d5;
                                d4 = d9;
                                d5 = d14;
                                d14 = d14;
                            }
                            d11 = d14 + (d10 * GOLD);
                            dEval = eval(univariateFunction, d11);
                        }
                        dEval5 = dEval;
                        d14 = d11;
                        dEval4 = dEval5;
                    } else {
                        d13 = d5 - d11;
                        if ((d11 - d14) * d13 >= 0.0d) {
                            dEval = eval(univariateFunction, d11);
                        } else if (d13 * (d14 - d5) > 0.0d) {
                            dEval2 = eval(univariateFunction, d5);
                            if (z ? dEval2 <= dEval5 : dEval2 >= dEval5) {
                                j = 4609965796492119705L;
                                d14 = d5;
                                dEval5 = dEval2;
                                dEval4 = dEval5;
                            } else {
                                j = 4609965796492119705L;
                                double d19 = d5 + (d12 * GOLD);
                                dEval5 = dEval2;
                                dEval4 = dEval5;
                                dEval5 = eval(univariateFunction, d19);
                                d14 = d14;
                                d14 = d19;
                                d14 = d5;
                            }
                        } else {
                            j = 4609965796492119705L;
                            d11 = d14 + (d10 * GOLD);
                            dEval = eval(univariateFunction, d11);
                            dEval5 = dEval;
                            d14 = d11;
                            dEval4 = dEval5;
                        }
                    }
                    j = 4609965796492119705L;
                    dEval5 = dEval;
                    d14 = d11;
                    dEval4 = dEval5;
                } else {
                    d4 = dEval4;
                    d5 = d14;
                    d14 = d14;
                    d6 = dEval5;
                }
            } else if (dEval5 > dEval5) {
                double d110 = d14 - d14;
                double d111 = (dEval5 - dEval5) * d110;
                double d112 = d14 - d14;
                double d113 = (dEval5 - dEval4) * d112;
                d7 = d113 - d111;
                if (FastMath.abs(d7) < EPS_MIN) {
                    d8 = 2.0E-21d;
                } else {
                    d8 = d7 * 2.0d;
                }
                d5 = d14 - (((d112 * d113) - (d110 * d111)) / d8);
                d9 = dEval4;
                d10 = d14 - d14;
                d11 = (this.growLimit * d10) + d14;
                d12 = d5 - d14;
                if ((d14 - d5) * d12 > 0.0d) {
                    dEval3 = eval(univariateFunction, d5);
                    if (z) {
                        if (dEval3 < dEval5) {
                            d6 = dEval5;
                            d4 = dEval5;
                            dEval5 = dEval3;
                        } else if (z) {
                            if (dEval3 > dEval5) {
                                d6 = dEval3;
                                d14 = d5;
                                d4 = d9;
                                d5 = d14;
                                d14 = d14;
                            }
                            d11 = d14 + (d10 * GOLD);
                            dEval = eval(univariateFunction, d11);
                        } else {
                            if (dEval3 < dEval5) {
                                d6 = dEval3;
                                d14 = d5;
                                d4 = d9;
                                d5 = d14;
                                d14 = d14;
                            }
                            d11 = d14 + (d10 * GOLD);
                            dEval = eval(univariateFunction, d11);
                        }
                    } else if (dEval3 > dEval5) {
                        d6 = dEval5;
                        d4 = dEval5;
                        dEval5 = dEval3;
                    } else if (z) {
                        if (dEval3 > dEval5) {
                            d6 = dEval3;
                            d14 = d5;
                            d4 = d9;
                            d5 = d14;
                            d14 = d14;
                        }
                        d11 = d14 + (d10 * GOLD);
                        dEval = eval(univariateFunction, d11);
                    } else {
                        if (dEval3 < dEval5) {
                            d6 = dEval3;
                            d14 = d5;
                            d4 = d9;
                            d5 = d14;
                            d14 = d14;
                        }
                        d11 = d14 + (d10 * GOLD);
                        dEval = eval(univariateFunction, d11);
                    }
                    dEval5 = dEval;
                    d14 = d11;
                    dEval4 = dEval5;
                } else {
                    d13 = d5 - d11;
                    if ((d11 - d14) * d13 >= 0.0d) {
                        dEval = eval(univariateFunction, d11);
                    } else if (d13 * (d14 - d5) > 0.0d) {
                        dEval2 = eval(univariateFunction, d5);
                        if (z) {
                            j = 4609965796492119705L;
                            d14 = d5;
                            dEval5 = dEval2;
                            dEval4 = dEval5;
                        } else {
                            j = 4609965796492119705L;
                            d14 = d5;
                            dEval5 = dEval2;
                            dEval4 = dEval5;
                        }
                    } else {
                        j = 4609965796492119705L;
                        d11 = d14 + (d10 * GOLD);
                        dEval = eval(univariateFunction, d11);
                        dEval5 = dEval;
                        d14 = d11;
                        dEval4 = dEval5;
                    }
                }
                j = 4609965796492119705L;
                dEval5 = dEval;
                d14 = d11;
                dEval4 = dEval5;
            } else {
                d4 = dEval4;
                d5 = d14;
                d14 = d14;
                d6 = dEval5;
            }
            this.lo = d14;
            this.fLo = d4;
            this.mid = d5;
            this.fMid = dEval5;
            this.hi = d14;
            this.fHi = d6;
            if (d14 > d14) {
                this.lo = d14;
                this.hi = d14;
                this.fLo = d6;
                this.fHi = d4;
                return;
            }
            return;
        }
    }

    public BracketFinder(double d2, int i) {
        Incrementor incrementor = new Incrementor();
        this.evaluations = incrementor;
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d2));
        }
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.growLimit = d2;
        incrementor.setMaximalCount(i);
    }
}
