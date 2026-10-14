package org.apache.commons.math3.dfp;

/* JADX INFO: loaded from: classes6.dex */
public class DfpDec extends Dfp {

    /* JADX INFO: renamed from: org.apache.commons.math3.dfp.DfpDec$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode;

        static {
            int[] iArr = new int[DfpField.RoundingMode.values().length];
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = iArr;
            try {
                iArr[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    protected DfpDec(DfpField dfpField) {
        super(dfpField);
    }

    protected int getDecimalDigits() {
        return (getRadixDigits() * 4) - 3;
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance() {
        return new DfpDec(getField());
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp nextAfter(Dfp dfp) {
        Dfp dfpCopysign;
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, "nextAfter", dfp, dfpNewInstance);
        }
        boolean zLessThan = lessThan(dfp);
        if (equals(dfp)) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            zLessThan = !zLessThan;
        }
        if (zLessThan) {
            Dfp dfpCopysign2 = Dfp.copysign(power10((intLog10() - getDecimalDigits()) + 1), this);
            if (equals(getZero())) {
                dfpCopysign2 = power10K(((-32767) - this.mant.length) - 1);
            }
            dfpCopysign = dfpCopysign2.equals(getZero()) ? Dfp.copysign(newInstance(getZero()), this) : add(dfpCopysign2);
        } else {
            Dfp dfpCopysign3 = Dfp.copysign(power10(intLog10()), this);
            Dfp dfpDivide = equals(dfpCopysign3) ? dfpCopysign3.divide(power10(getDecimalDigits())) : dfpCopysign3.divide(power10(getDecimalDigits() - 1));
            if (equals(getZero())) {
                dfpDivide = power10K(((-32767) - this.mant.length) - 1);
            }
            dfpCopysign = dfpDivide.equals(getZero()) ? Dfp.copysign(newInstance(getZero()), this) : subtract(dfpDivide);
        }
        if (dfpCopysign.classify() == 1 && classify() != 1) {
            getField().setIEEEFlagsBits(16);
            dfpCopysign = dotrap(16, "nextAfter", dfp, dfpCopysign);
        }
        if (!dfpCopysign.equals(getZero()) || equals(getZero())) {
            return dfpCopysign;
        }
        getField().setIEEEFlagsBits(16);
        return dotrap(16, "nextAfter", dfp, dfpCopysign);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x00be  */
    @Override // org.apache.commons.math3.dfp.Dfp
    protected int round(int i) {
        int i2;
        int i3;
        boolean z;
        int[] iArr = this.mant;
        int i4 = iArr[iArr.length - 1];
        if (i4 == 0) {
            return 0;
        }
        int length = iArr.length * 4;
        int i5 = 1000;
        while (i5 > i4) {
            i5 /= 10;
            length--;
        }
        int decimalDigits = getDecimalDigits();
        int i6 = length - decimalDigits;
        int i7 = i6 / 4;
        int i8 = 1;
        for (int i9 = 0; i9 < i6 % 4; i9++) {
            i8 *= 10;
        }
        int[] iArr2 = this.mant;
        int i10 = iArr2[i7];
        if (i8 <= 1 && decimalDigits == (iArr2.length * 4) - 3) {
            return super.round(i);
        }
        if (i8 == 1) {
            int i11 = i7 - 1;
            i2 = (iArr2[i11] / 1000) % 10;
            iArr2[i11] = iArr2[i11] % 1000;
            i3 = iArr2[i11];
        } else {
            i2 = ((i10 * 10) / i8) % 10;
            i3 = i10 % (i8 / 10);
        }
        int i12 = i | i3;
        for (int i13 = 0; i13 < i7; i13++) {
            int[] iArr3 = this.mant;
            i12 |= iArr3[i13];
            iArr3[i13] = 0;
        }
        int i14 = i10 / i8;
        this.mant[i7] = i14 * i8;
        switch (AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[getField().getRoundingMode().ordinal()]) {
            case 1:
                z = false;
                break;
            case 2:
                if (i2 == 0 && i12 == 0) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            case 3:
                if (i2 >= 5) {
                    z = true;
                } else {
                    z = false;
                }
                break;
            case 4:
                if (i2 > 5) {
                    z = true;
                } else {
                    z = false;
                }
                break;
            case 5:
                if (i2 > 5 || ((i2 == 5 && i12 != 0) || (i2 == 5 && i12 == 0 && (i14 & 1) == 1))) {
                    z = true;
                } else {
                    z = false;
                }
                break;
            case 6:
                if (i2 > 5 || ((i2 == 5 && i12 != 0) || (i2 == 5 && i12 == 0 && (i14 & 1) == 0))) {
                    z = true;
                } else {
                    z = false;
                }
                break;
            case 7:
                if (this.sign != 1 || (i2 == 0 && i12 == 0)) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            default:
                if (this.sign != -1 || (i2 == 0 && i12 == 0)) {
                    z = false;
                } else {
                    z = true;
                }
                break;
        }
        if (z) {
            while (true) {
                int[] iArr4 = this.mant;
                if (i7 < iArr4.length) {
                    int i15 = iArr4[i7] + i8;
                    i8 = i15 / 10000;
                    iArr4[i7] = i15 % 10000;
                    i7++;
                } else if (i8 != 0) {
                    shiftRight();
                    int[] iArr5 = this.mant;
                    iArr5[iArr5.length - 1] = i8;
                }
            }
        }
        int i16 = this.exp;
        if (i16 < -32767) {
            getField().setIEEEFlagsBits(8);
            return 8;
        }
        if (i16 > 32768) {
            getField().setIEEEFlagsBits(4);
            return 4;
        }
        if (i2 == 0 && i12 == 0) {
            return 0;
        }
        getField().setIEEEFlagsBits(16);
        return 16;
    }

    protected DfpDec(DfpField dfpField, byte b) {
        super(dfpField, b);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(byte b) {
        return new DfpDec(getField(), b);
    }

    protected DfpDec(DfpField dfpField, int i) {
        super(dfpField, i);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(int i) {
        return new DfpDec(getField(), i);
    }

    protected DfpDec(DfpField dfpField, long j) {
        super(dfpField, j);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(long j) {
        return new DfpDec(getField(), j);
    }

    protected DfpDec(DfpField dfpField, double d2) {
        super(dfpField, d2);
        round(0);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(double d2) {
        return new DfpDec(getField(), d2);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(Dfp dfp) {
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, "newInstance", dfp, dfpNewInstance);
        }
        return new DfpDec(dfp);
    }

    public DfpDec(Dfp dfp) {
        super(dfp);
        round(0);
    }

    protected DfpDec(DfpField dfpField, String str) {
        super(dfpField, str);
        round(0);
    }

    protected DfpDec(DfpField dfpField, byte b, byte b2) {
        super(dfpField, b, b2);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(String str) {
        return new DfpDec(getField(), str);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(byte b, byte b2) {
        return new DfpDec(getField(), b, b2);
    }
}
