package org.apache.commons.math3.dfp;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Ascii;
import java.util.Arrays;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Dfp implements RealFieldElement<Dfp> {
    private static final String ADD_TRAP = "add";
    private static final String ALIGN_TRAP = "align";
    private static final String DIVIDE_TRAP = "divide";
    public static final int ERR_SCALE = 32760;
    public static final byte FINITE = 0;
    private static final String GREATER_THAN_TRAP = "greaterThan";
    public static final byte INFINITE = 1;
    private static final String LESS_THAN_TRAP = "lessThan";
    public static final int MAX_EXP = 32768;
    public static final int MIN_EXP = -32767;
    private static final String MULTIPLY_TRAP = "multiply";
    private static final String NAN_STRING = "NaN";
    private static final String NEG_INFINITY_STRING = "-Infinity";
    private static final String NEW_INSTANCE_TRAP = "newInstance";
    private static final String NEXT_AFTER_TRAP = "nextAfter";
    private static final String POS_INFINITY_STRING = "Infinity";
    public static final byte QNAN = 3;
    public static final int RADIX = 10000;
    public static final byte SNAN = 2;
    private static final String SQRT_TRAP = "sqrt";
    private static final String TRUNC_TRAP = "trunc";
    protected int exp;
    private final DfpField field;
    protected int[] mant;
    protected byte nans;
    protected byte sign;

    /* JADX INFO: renamed from: org.apache.commons.math3.dfp.Dfp$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode;

        static {
            int[] iArr = new int[DfpField.RoundingMode.values().length];
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = iArr;
            try {
                iArr[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    protected Dfp(DfpField dfpField) {
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
    }

    private static int compare(Dfp dfp, Dfp dfp2) {
        int[] iArr = dfp.mant;
        if (iArr[iArr.length - 1] == 0) {
            int[] iArr2 = dfp2.mant;
            if (iArr2[iArr2.length - 1] == 0 && dfp.nans == 0 && dfp2.nans == 0) {
                return 0;
            }
        }
        byte b = dfp.sign;
        byte b2 = dfp2.sign;
        if (b != b2) {
            return b == -1 ? -1 : 1;
        }
        byte b3 = dfp.nans;
        if (b3 == 1 && dfp2.nans == 0) {
            return b;
        }
        if (b3 == 0 && dfp2.nans == 1) {
            return -b2;
        }
        if (b3 == 1 && dfp2.nans == 1) {
            return 0;
        }
        int[] iArr3 = dfp2.mant;
        if (iArr3[iArr3.length - 1] != 0 && iArr[iArr3.length - 1] != 0) {
            int i = dfp.exp;
            int i2 = dfp2.exp;
            if (i < i2) {
                return -b;
            }
            if (i > i2) {
                return b;
            }
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            int[] iArr4 = dfp.mant;
            int i3 = iArr4[length];
            int[] iArr5 = dfp2.mant;
            if (i3 > iArr5[length]) {
                return dfp.sign;
            }
            if (iArr4[length] < iArr5[length]) {
                return -dfp.sign;
            }
        }
        return 0;
    }

    public static Dfp copysign(Dfp dfp, Dfp dfp2) {
        Dfp dfpNewInstance = dfp.newInstance(dfp);
        dfpNewInstance.sign = dfp2.sign;
        return dfpNewInstance;
    }

    private Dfp multiplyFast(int i) {
        int i2;
        Dfp dfpNewInstance = newInstance(this);
        if (this.nans != 0) {
            if (isNaN()) {
                return this;
            }
            byte b = this.nans;
            if (b == 1 && i != 0) {
                return newInstance(this);
            }
            if (b == 1 && i == 0) {
                this.field.setIEEEFlagsBits(1);
                Dfp dfpNewInstance2 = newInstance(getZero());
                dfpNewInstance2.nans = (byte) 3;
                return dotrap(1, MULTIPLY_TRAP, newInstance(getZero()), dfpNewInstance2);
            }
        }
        if (i < 0 || i >= 10000) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance3 = newInstance(getZero());
            dfpNewInstance3.nans = (byte) 3;
            return dotrap(1, MULTIPLY_TRAP, dfpNewInstance3, dfpNewInstance3);
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i3 >= iArr.length) {
                break;
            }
            int i5 = (iArr[i3] * i) + i4;
            i4 = i5 / 10000;
            dfpNewInstance.mant[i3] = i5 - (i4 * 10000);
            i3++;
        }
        if (i4 != 0) {
            i2 = dfpNewInstance.mant[0];
            dfpNewInstance.shiftRight();
            dfpNewInstance.mant[this.mant.length - 1] = i4;
        } else {
            i2 = 0;
        }
        if (dfpNewInstance.mant[this.mant.length - 1] == 0) {
            dfpNewInstance.exp = 0;
        }
        int iRound = dfpNewInstance.round(i2);
        return iRound != 0 ? dotrap(iRound, MULTIPLY_TRAP, dfpNewInstance, dfpNewInstance) : dfpNewInstance;
    }

    protected int align(int i) {
        int i2 = this.exp - i;
        int i3 = i2 < 0 ? -i2 : i2;
        if (i2 == 0) {
            return 0;
        }
        int[] iArr = this.mant;
        if (i3 > iArr.length + 1) {
            Arrays.fill(iArr, 0);
            this.exp = i;
            this.field.setIEEEFlagsBits(16);
            dotrap(16, ALIGN_TRAP, this, this);
            return 0;
        }
        boolean z = false;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            if (i2 < 0) {
                if (i4 != 0) {
                    z = true;
                }
                i4 = this.mant[0];
                shiftRight();
            } else {
                shiftLeft();
            }
        }
        if (z) {
            this.field.setIEEEFlagsBits(16);
            dotrap(16, ALIGN_TRAP, this, this);
        }
        return i4;
    }

    public int classify() {
        return this.nans;
    }

    protected int complement(int i) {
        int i2 = 10000 - i;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i4 >= iArr.length) {
                break;
            }
            iArr[i4] = (10000 - iArr[i4]) - 1;
            i4++;
        }
        int i5 = i2 / 10000;
        int i6 = i2 - (i5 * 10000);
        while (true) {
            int[] iArr2 = this.mant;
            if (i3 >= iArr2.length) {
                return i6;
            }
            int i7 = iArr2[i3] + i5;
            i5 = i7 / 10000;
            iArr2[i3] = i7 - (i5 * 10000);
            i3++;
        }
    }

    protected String dfp2sci() {
        int i;
        int[] iArr = this.mant;
        int length = iArr.length * 4;
        char[] cArr = new char[length];
        char[] cArr2 = new char[(iArr.length * 4) + 20];
        int i2 = 0;
        for (int length2 = iArr.length - 1; length2 >= 0; length2--) {
            int i3 = i2 + 1;
            int[] iArr2 = this.mant;
            cArr[i2] = (char) ((iArr2[length2] / 1000) + 48);
            int i4 = i3 + 1;
            cArr[i3] = (char) (((iArr2[length2] / 100) % 10) + 48);
            int i5 = i4 + 1;
            cArr[i4] = (char) (((iArr2[length2] / 10) % 10) + 48);
            i2 = i5 + 1;
            cArr[i5] = (char) ((iArr2[length2] % 10) + 48);
        }
        int i6 = 0;
        while (i6 < length && cArr[i6] == '0') {
            i6++;
        }
        if (this.sign == -1) {
            cArr2[0] = '-';
            i = 1;
        } else {
            i = 0;
        }
        if (i6 == length) {
            int i7 = i + 1;
            cArr2[i] = '0';
            int i8 = i7 + 1;
            cArr2[i7] = '.';
            int i9 = i8 + 1;
            cArr2[i8] = '0';
            cArr2[i9] = 'e';
            cArr2[i9 + 1] = '0';
            return new String(cArr2, 0, 5);
        }
        int i10 = i + 1;
        cArr2[i] = cArr[i6];
        int i11 = i10 + 1;
        cArr2[i10] = '.';
        for (int i12 = i6 + 1; i12 < length; i12++) {
            cArr2[i11] = cArr[i12];
            i11++;
        }
        int i13 = i11 + 1;
        cArr2[i11] = 'e';
        int i14 = ((this.exp * 4) - i6) - 1;
        int i15 = i14 < 0 ? -i14 : i14;
        int i16 = 1000000000;
        while (i16 > i15) {
            i16 /= 10;
        }
        if (i14 < 0) {
            int i17 = i13 + 1;
            cArr2[i13] = '-';
            i13 = i17;
        }
        while (i16 > 0) {
            int i18 = i13 + 1;
            cArr2[i13] = (char) ((i15 / i16) + 48);
            i15 %= i16;
            i16 /= 10;
            i13 = i18;
        }
        return new String(cArr2, 0, i13);
    }

    protected String dfp2string() {
        int i;
        char[] cArr = new char[(this.mant.length * 4) + 20];
        int i2 = this.exp;
        boolean z = false;
        cArr[0] = ' ';
        int i3 = 1;
        if (i2 <= 0) {
            cArr[1] = '0';
            i = 3;
            cArr[2] = '.';
            z = true;
        } else {
            i = 1;
        }
        while (i2 < 0) {
            int i4 = i + 1;
            cArr[i] = '0';
            int i5 = i4 + 1;
            cArr[i4] = '0';
            int i6 = i5 + 1;
            cArr[i5] = '0';
            i = i6 + 1;
            cArr[i6] = '0';
            i2++;
        }
        for (int length = this.mant.length - 1; length >= 0; length--) {
            int i7 = i + 1;
            int[] iArr = this.mant;
            cArr[i] = (char) ((iArr[length] / 1000) + 48);
            int i8 = i7 + 1;
            cArr[i7] = (char) (((iArr[length] / 100) % 10) + 48);
            int i9 = i8 + 1;
            cArr[i8] = (char) (((iArr[length] / 10) % 10) + 48);
            i = i9 + 1;
            cArr[i9] = (char) ((iArr[length] % 10) + 48);
            i2--;
            if (i2 == 0) {
                cArr[i] = '.';
                i++;
                z = true;
            }
        }
        while (i2 > 0) {
            int i10 = i + 1;
            cArr[i] = '0';
            int i11 = i10 + 1;
            cArr[i10] = '0';
            int i12 = i11 + 1;
            cArr[i11] = '0';
            i = i12 + 1;
            cArr[i12] = '0';
            i2--;
        }
        if (!z) {
            cArr[i] = '.';
            i++;
        }
        while (cArr[i3] == '0') {
            i3++;
        }
        if (cArr[i3] == '.') {
            i3--;
        }
        while (cArr[i - 1] == '0') {
            i--;
        }
        if (this.sign < 0) {
            i3--;
            cArr[i3] = '-';
        }
        return new String(cArr, i3, i - i3);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006a  */
    public Dfp dotrap(int i, String str, Dfp dfp, Dfp dfp2) {
        Dfp dfpNewInstance;
        Dfp dfp3;
        Dfp dfpNewInstance2;
        Dfp dfpNewInstance3;
        if (i != 1) {
            if (i != 2) {
                if (i == 4) {
                    dfp2.exp -= 32760;
                    dfpNewInstance3 = newInstance(getZero());
                    dfpNewInstance3.sign = dfp2.sign;
                    dfpNewInstance3.nans = (byte) 1;
                } else if (i != 8) {
                    dfp3 = dfp2;
                } else {
                    if (dfp2.exp + this.mant.length < -32767) {
                        dfpNewInstance3 = newInstance(getZero());
                        dfpNewInstance3.sign = dfp2.sign;
                    } else {
                        dfpNewInstance3 = newInstance(dfp2);
                    }
                    dfp2.exp += ERR_SCALE;
                }
                dfp3 = dfpNewInstance3;
            } else {
                if (this.nans == 0) {
                    int[] iArr = this.mant;
                    if (iArr[iArr.length - 1] != 0) {
                        dfpNewInstance2 = newInstance(getZero());
                        dfpNewInstance2.sign = (byte) (this.sign * dfp.sign);
                        dfpNewInstance2.nans = (byte) 1;
                    } else {
                        dfpNewInstance2 = dfp2;
                    }
                } else {
                    dfpNewInstance2 = dfp2;
                }
                if (this.nans == 0) {
                    int[] iArr2 = this.mant;
                    if (iArr2[iArr2.length - 1] == 0) {
                        dfpNewInstance2 = newInstance(getZero());
                        dfpNewInstance2.nans = (byte) 3;
                    }
                }
                byte b = this.nans;
                if (b == 1 || b == 3) {
                    dfpNewInstance2 = newInstance(getZero());
                    dfpNewInstance2.nans = (byte) 3;
                }
                byte b2 = this.nans;
                if (b2 == 1 || b2 == 2) {
                    dfpNewInstance = newInstance(getZero());
                    dfpNewInstance.nans = (byte) 3;
                } else {
                    dfp3 = dfpNewInstance2;
                }
            }
            return trap(i, str, dfp, dfp3, dfp2);
        }
        dfpNewInstance = newInstance(getZero());
        dfpNewInstance.sign = dfp2.sign;
        dfpNewInstance.nans = (byte) 3;
        dfp3 = dfpNewInstance;
        return trap(i, str, dfp, dfp3, dfp2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dfp)) {
            return false;
        }
        Dfp dfp = (Dfp) obj;
        return !isNaN() && !dfp.isNaN() && this.field.getRadixDigits() == dfp.field.getRadixDigits() && compare(this, dfp) == 0;
    }

    public Dfp getOne() {
        return this.field.getOne();
    }

    public int getRadixDigits() {
        return this.field.getRadixDigits();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public double getReal() {
        return toDouble();
    }

    public Dfp getTwo() {
        return this.field.getTwo();
    }

    public Dfp getZero() {
        return this.field.getZero();
    }

    public boolean greaterThan(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            dotrap(1, GREATER_THAN_TRAP, dfp, dfpNewInstance);
            return false;
        }
        if (!isNaN() && !dfp.isNaN()) {
            return compare(this, dfp) > 0;
        }
        this.field.setIEEEFlagsBits(1);
        dotrap(1, GREATER_THAN_TRAP, dfp, newInstance(getZero()));
        return false;
    }

    public int hashCode() {
        return (isZero() ? 0 : this.sign << 8) + 17 + (this.nans << Ascii.DLE) + this.exp + Arrays.hashCode(this.mant);
    }

    public int intLog10() {
        int[] iArr = this.mant;
        if (iArr[iArr.length - 1] > 1000) {
            return (this.exp * 4) - 1;
        }
        if (iArr[iArr.length - 1] > 100) {
            return (this.exp * 4) - 2;
        }
        return iArr[iArr.length + (-1)] > 10 ? (this.exp * 4) - 3 : (this.exp * 4) - 4;
    }

    public int intValue() {
        Dfp dfpRint = rint();
        if (dfpRint.greaterThan(newInstance(Integer.MAX_VALUE))) {
            return Integer.MAX_VALUE;
        }
        if (dfpRint.lessThan(newInstance(Integer.MIN_VALUE))) {
            return Integer.MIN_VALUE;
        }
        int i = 0;
        for (int length = this.mant.length - 1; length >= this.mant.length - dfpRint.exp; length--) {
            i = (i * 10000) + dfpRint.mant[length];
        }
        return dfpRint.sign == -1 ? -i : i;
    }

    public boolean isInfinite() {
        return this.nans == 1;
    }

    public boolean isNaN() {
        byte b = this.nans;
        return b == 3 || b == 2;
    }

    public boolean isZero() {
        if (!isNaN()) {
            int[] iArr = this.mant;
            return iArr[iArr.length - 1] == 0 && !isInfinite();
        }
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    }

    public boolean lessThan(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            dotrap(1, LESS_THAN_TRAP, dfp, dfpNewInstance);
            return false;
        }
        if (!isNaN() && !dfp.isNaN()) {
            return compare(this, dfp) < 0;
        }
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, dfp, newInstance(getZero()));
        return false;
    }

    @Deprecated
    public int log10() {
        return intLog10();
    }

    public int log10K() {
        return this.exp - 1;
    }

    public boolean negativeOrNull() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign >= 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] != 0 || isInfinite()) {
                return false;
            }
        }
        return true;
    }

    public Dfp newInstance() {
        return new Dfp(getField());
    }

    public Dfp nextAfter(Dfp dfp) {
        Dfp dfpSubtract;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, NEXT_AFTER_TRAP, dfp, dfpNewInstance);
        }
        boolean zLessThan = lessThan(dfp);
        if (compare(this, dfp) == 0) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            zLessThan = !zLessThan;
        }
        if (zLessThan) {
            Dfp dfpNewInstance2 = newInstance(getOne());
            dfpNewInstance2.exp = (this.exp - this.mant.length) + 1;
            dfpNewInstance2.sign = this.sign;
            if (equals(getZero())) {
                dfpNewInstance2.exp = (-32767) - this.mant.length;
            }
            dfpSubtract = add(dfpNewInstance2);
        } else {
            Dfp dfpNewInstance3 = newInstance(getOne());
            dfpNewInstance3.exp = this.exp;
            dfpNewInstance3.sign = this.sign;
            if (equals(dfpNewInstance3)) {
                dfpNewInstance3.exp = this.exp - this.mant.length;
            } else {
                dfpNewInstance3.exp = (this.exp - this.mant.length) + 1;
            }
            if (equals(getZero())) {
                dfpNewInstance3.exp = (-32767) - this.mant.length;
            }
            dfpSubtract = subtract(dfpNewInstance3);
        }
        if (dfpSubtract.classify() == 1 && classify() != 1) {
            this.field.setIEEEFlagsBits(16);
            dfpSubtract = dotrap(16, NEXT_AFTER_TRAP, dfp, dfpSubtract);
        }
        if (!dfpSubtract.equals(getZero()) || equals(getZero())) {
            return dfpSubtract;
        }
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, NEXT_AFTER_TRAP, dfp, dfpSubtract);
    }

    public boolean positiveOrNull() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign <= 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] != 0 || isInfinite()) {
                return false;
            }
        }
        return true;
    }

    public Dfp power10(int i) {
        Dfp dfpNewInstance = newInstance(getOne());
        if (i >= 0) {
            dfpNewInstance.exp = (i / 4) + 1;
        } else {
            dfpNewInstance.exp = (i + 1) / 4;
        }
        int i2 = ((i % 4) + 4) % 4;
        if (i2 == 0) {
            return dfpNewInstance;
        }
        if (i2 != 1) {
            return i2 != 2 ? dfpNewInstance.multiply(1000) : dfpNewInstance.multiply(100);
        }
        return dfpNewInstance.multiply(10);
    }

    public Dfp power10K(int i) {
        Dfp dfpNewInstance = newInstance(getOne());
        dfpNewInstance.exp = i + 1;
        return dfpNewInstance;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    protected int round(int i) {
        boolean z;
        switch (AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[this.field.getRoundingMode().ordinal()]) {
            case 2:
                if (this.sign == 1 && i != 0) {
                    z = true;
                } else {
                    z = false;
                }
                break;
            case 3:
                if (i <= 5000 && !(i == 5000 && (this.mant[0] & 1) == 1)) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            case 4:
                z = false;
                break;
            case 5:
                if (i == 0) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            case 6:
                if (i < 5000) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            case 7:
                if (i <= 5000) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            case 8:
                if (i <= 5000 && !(i == 5000 && (this.mant[0] & 1) == 0)) {
                    z = false;
                } else {
                    z = true;
                }
                break;
            default:
                if (this.sign == -1 && i != 0) {
                    z = true;
                } else {
                    z = false;
                }
                break;
        }
        if (z) {
            int i2 = 0;
            int i3 = 1;
            while (true) {
                int[] iArr = this.mant;
                if (i2 < iArr.length) {
                    int i4 = iArr[i2] + i3;
                    i3 = i4 / 10000;
                    iArr[i2] = i4 - (i3 * 10000);
                    i2++;
                } else if (i3 != 0) {
                    shiftRight();
                    int[] iArr2 = this.mant;
                    iArr2[iArr2.length - 1] = i3;
                }
            }
        }
        int i5 = this.exp;
        if (i5 < -32767) {
            this.field.setIEEEFlagsBits(8);
            return 8;
        }
        if (i5 > 32768) {
            this.field.setIEEEFlagsBits(4);
            return 4;
        }
        if (i == 0) {
            return 0;
        }
        this.field.setIEEEFlagsBits(16);
        return 16;
    }

    protected void shiftLeft() {
        for (int length = this.mant.length - 1; length > 0; length--) {
            int[] iArr = this.mant;
            iArr[length] = iArr[length - 1];
        }
        this.mant[0] = 0;
        this.exp--;
    }

    protected void shiftRight() {
        int i = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i >= iArr.length - 1) {
                iArr[iArr.length - 1] = 0;
                this.exp++;
                return;
            } else {
                int i2 = i + 1;
                iArr[i] = iArr[i2];
                i = i2;
            }
        }
    }

    public boolean strictlyNegative() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign >= 0) {
            return false;
        }
        int[] iArr = this.mant;
        return iArr[iArr.length - 1] != 0 || isInfinite();
    }

    public boolean strictlyPositive() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign <= 0) {
            return false;
        }
        int[] iArr = this.mant;
        return iArr[iArr.length - 1] != 0 || isInfinite();
    }

    public double toDouble() {
        boolean z;
        Dfp dfpNegate;
        if (isInfinite()) {
            return lessThan(getZero()) ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        if (isNaN()) {
            return Double.NaN;
        }
        int iCompare = compare(this, getZero());
        if (iCompare == 0) {
            return this.sign < 0 ? -0.0d : 0.0d;
        }
        if (iCompare < 0) {
            dfpNegate = negate();
            z = true;
        } else {
            z = false;
            dfpNegate = this;
        }
        int iIntLog10 = (int) (((double) dfpNegate.intLog10()) * 3.32d);
        if (iIntLog10 < 0) {
            iIntLog10--;
        }
        Dfp dfpPow = DfpMath.pow(getTwo(), iIntLog10);
        while (true) {
            if (!dfpPow.lessThan(dfpNegate) && !dfpPow.equals(dfpNegate)) {
                break;
            }
            dfpPow = dfpPow.multiply(2);
            iIntLog10++;
        }
        int i = iIntLog10 - 1;
        Dfp dfpDivide = dfpNegate.divide(DfpMath.pow(getTwo(), i));
        if (i > -1023) {
            dfpDivide = dfpDivide.subtract(getOne());
        }
        if (i < -1074) {
            return 0.0d;
        }
        if (i > 1023) {
            return z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        String string = dfpDivide.multiply(newInstance(4503599627370496L)).rint().toString();
        long j = Long.parseLong(string.substring(0, string.length() - 1));
        if (j == 4503599627370496L) {
            j = 0;
            i++;
        }
        if (i <= -1023) {
            i--;
        }
        while (i < -1023) {
            i++;
            j >>>= 1;
        }
        double dLongBitsToDouble = Double.longBitsToDouble(((((long) i) + 1023) << 52) | j);
        return z ? -dLongBitsToDouble : dLongBitsToDouble;
    }

    public double[] toSplitDouble() {
        double[] dArr = new double[2];
        dArr[0] = Double.longBitsToDouble(Double.doubleToLongBits(toDouble()) & (-1073741824));
        dArr[1] = subtract(newInstance(dArr[0])).toDouble();
        return dArr;
    }

    public String toString() {
        byte b = this.nans;
        if (b == 0) {
            int i = this.exp;
            return (i > this.mant.length || i < -1) ? dfp2sci() : dfp2string();
        }
        if (b == 1) {
            return this.sign < 0 ? NEG_INFINITY_STRING : POS_INFINITY_STRING;
        }
        return NAN_STRING;
    }

    protected Dfp trap(int i, String str, Dfp dfp, Dfp dfp2, Dfp dfp3) {
        return dfp2;
    }

    protected Dfp trunc(DfpField.RoundingMode roundingMode) {
        int i;
        if (isNaN()) {
            return newInstance(this);
        }
        if (this.nans == 1) {
            return newInstance(this);
        }
        int[] iArr = this.mant;
        if (iArr[iArr.length - 1] == 0) {
            return newInstance(this);
        }
        int i2 = this.exp;
        if (i2 < 0) {
            this.field.setIEEEFlagsBits(16);
            return dotrap(16, TRUNC_TRAP, this, newInstance(getZero()));
        }
        if (i2 >= iArr.length) {
            return newInstance(this);
        }
        Dfp dfpNewInstance = newInstance(this);
        boolean z = false;
        for (int i3 = 0; i3 < this.mant.length - dfpNewInstance.exp; i3++) {
            int[] iArr2 = dfpNewInstance.mant;
            z |= iArr2[i3] != 0;
            iArr2[i3] = 0;
        }
        if (!z) {
            return dfpNewInstance;
        }
        int i4 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[roundingMode.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                Dfp dfpNewInstance2 = newInstance("0.5");
                Dfp dfpSubtract = subtract(dfpNewInstance);
                dfpSubtract.sign = (byte) 1;
                if (dfpSubtract.greaterThan(dfpNewInstance2)) {
                    dfpSubtract = newInstance(getOne());
                    dfpSubtract.sign = this.sign;
                    dfpNewInstance = dfpNewInstance.add(dfpSubtract);
                }
                if (dfpSubtract.equals(dfpNewInstance2) && (i = dfpNewInstance.exp) > 0 && (dfpNewInstance.mant[this.mant.length - i] & 1) != 0) {
                    Dfp dfpNewInstance3 = newInstance(getOne());
                    dfpNewInstance3.sign = this.sign;
                    dfpNewInstance = dfpNewInstance.add(dfpNewInstance3);
                }
            } else if (dfpNewInstance.sign == 1) {
                dfpNewInstance = dfpNewInstance.add(getOne());
            }
        } else if (dfpNewInstance.sign == -1) {
            dfpNewInstance = dfpNewInstance.add(newInstance(-1));
        }
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, TRUNC_TRAP, this, dfpNewInstance);
    }

    public boolean unequal(Dfp dfp) {
        if (isNaN() || dfp.isNaN() || this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            return false;
        }
        return greaterThan(dfp) || lessThan(dfp);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp abs() {
        Dfp dfpNewInstance = newInstance(this);
        dfpNewInstance.sign = (byte) 1;
        return dfpNewInstance;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp acos() {
        return DfpMath.acos(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp acosh() {
        return multiply(this).subtract(getOne()).sqrt().add(this).log();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp asin() {
        return DfpMath.asin(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp asinh() {
        return multiply(this).add(getOne()).sqrt().add(this).log();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp atan() {
        return DfpMath.atan(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp atan2(Dfp dfp) throws DimensionMismatchException {
        Dfp dfpSqrt = dfp.multiply(dfp).add(multiply(this)).sqrt();
        if (dfp.sign >= 0) {
            return getTwo().multiply(divide(dfpSqrt.add(dfp)).atan());
        }
        Dfp dfpMultiply = getTwo().multiply(divide(dfpSqrt.subtract(dfp)).atan());
        return newInstance(dfpMultiply.sign <= 0 ? -3.141592653589793d : 3.141592653589793d).subtract(dfpMultiply);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp atanh() {
        return getOne().add(this).divide(getOne().subtract(this)).log().divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp cbrt() {
        return rootN(3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp ceil() {
        return trunc(DfpField.RoundingMode.ROUND_CEIL);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp cos() {
        return DfpMath.cos(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp cosh() {
        return DfpMath.exp(this).add(DfpMath.exp(negate())).divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp exp() {
        return DfpMath.exp(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp expm1() {
        return DfpMath.exp(this).subtract(getOne());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp floor() {
        return trunc(DfpField.RoundingMode.ROUND_FLOOR);
    }

    @Override // org.apache.commons.math3.FieldElement
    public DfpField getField() {
        return this.field;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp hypot(Dfp dfp) {
        return multiply(this).add(dfp.multiply(dfp)).sqrt();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp log() {
        return DfpMath.log(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp log1p() {
        return DfpMath.log(add(getOne()));
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp negate() {
        Dfp dfpNewInstance = newInstance(this);
        dfpNewInstance.sign = (byte) (-dfpNewInstance.sign);
        return dfpNewInstance;
    }

    public Dfp newInstance(byte b) {
        return new Dfp(getField(), b);
    }

    @Override // org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.FieldElement
    public Dfp reciprocal() {
        return this.field.getOne().divide(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp rint() {
        return trunc(DfpField.RoundingMode.ROUND_HALF_EVEN);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp rootN(int i) {
        return this.sign >= 0 ? DfpMath.pow(this, getOne().divide(i)) : DfpMath.pow(negate(), getOne().divide(i)).negate();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp scalb(int i) {
        return multiply(DfpMath.pow(getTwo(), i));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp signum() {
        if (isNaN() || isZero()) {
            return this;
        }
        return newInstance(this.sign > 0 ? 1 : -1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp sin() {
        return DfpMath.sin(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp sinh() {
        return DfpMath.exp(this).subtract(DfpMath.exp(negate())).divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp sqrt() {
        byte b = this.nans;
        if (b == 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] == 0) {
                return newInstance(this);
            }
        }
        if (b != 0) {
            if (b == 1 && this.sign == 1) {
                return newInstance(this);
            }
            if (b == 3) {
                return newInstance(this);
            }
            if (b == 2) {
                this.field.setIEEEFlagsBits(1);
                return dotrap(1, SQRT_TRAP, null, newInstance(this));
            }
        }
        if (this.sign == -1) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(this);
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, SQRT_TRAP, null, dfpNewInstance);
        }
        Dfp dfpNewInstance2 = newInstance(this);
        int i = dfpNewInstance2.exp;
        if (i < -1 || i > 1) {
            dfpNewInstance2.exp = this.exp / 2;
        }
        int[] iArr2 = dfpNewInstance2.mant;
        int[] iArr3 = this.mant;
        int i2 = iArr2[iArr3.length - 1] / 2000;
        if (i2 == 0) {
            iArr2[iArr3.length - 1] = (iArr2[iArr3.length - 1] / 2) + 1;
        } else if (i2 == 2) {
            iArr2[iArr3.length - 1] = 1500;
        } else if (i2 != 3) {
            iArr2[iArr3.length - 1] = 3000;
        } else {
            iArr2[iArr3.length - 1] = 2200;
        }
        newInstance(dfpNewInstance2);
        Dfp zero = getZero();
        getZero();
        Dfp dfp = dfpNewInstance2;
        Dfp dfp2 = zero;
        while (dfp.unequal(dfp2)) {
            Dfp dfpNewInstance3 = newInstance(dfp);
            dfpNewInstance3.sign = (byte) -1;
            Dfp dfpDivide = dfpNewInstance3.add(divide(dfp)).divide(2);
            Dfp dfpAdd = dfp.add(dfpDivide);
            if (dfpAdd.equals(dfp2) || dfpDivide.mant[this.mant.length - 1] == 0) {
                return dfpAdd;
            }
            dfp2 = dfp;
            dfp = dfpAdd;
        }
        return dfp;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp tan() {
        return DfpMath.tan(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp tanh() {
        Dfp dfpExp = DfpMath.exp(this);
        Dfp dfpExp2 = DfpMath.exp(negate());
        return dfpExp.subtract(dfpExp2).divide(dfpExp.add(dfpExp2));
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp add(Dfp dfp) {
        int iAlign;
        int iComplement;
        int[] iArr;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, ADD_TRAP, dfp, dfpNewInstance);
        }
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b = this.nans;
            if (b == 1 && dfp.nans == 0) {
                return this;
            }
            byte b2 = dfp.nans;
            if (b2 == 1 && b == 0) {
                return dfp;
            }
            if (b2 == 1 && b == 1 && this.sign == dfp.sign) {
                return dfp;
            }
            if (b2 == 1 && b == 1 && this.sign != dfp.sign) {
                this.field.setIEEEFlagsBits(1);
                Dfp dfpNewInstance2 = newInstance(getZero());
                dfpNewInstance2.nans = (byte) 3;
                return dotrap(1, ADD_TRAP, dfp, dfpNewInstance2);
            }
        }
        Dfp dfpNewInstance3 = newInstance(this);
        Dfp dfpNewInstance4 = newInstance(dfp);
        Dfp dfpNewInstance5 = newInstance(getZero());
        byte b3 = dfpNewInstance3.sign;
        byte b4 = dfpNewInstance4.sign;
        dfpNewInstance3.sign = (byte) 1;
        dfpNewInstance4.sign = (byte) 1;
        byte b5 = compare(dfpNewInstance3, dfpNewInstance4) > 0 ? b3 : b4;
        int[] iArr2 = dfpNewInstance4.mant;
        int[] iArr3 = this.mant;
        if (iArr2[iArr3.length - 1] == 0) {
            dfpNewInstance4.exp = dfpNewInstance3.exp;
        }
        if (dfpNewInstance3.mant[iArr3.length - 1] == 0) {
            dfpNewInstance3.exp = dfpNewInstance4.exp;
        }
        int i = dfpNewInstance3.exp;
        int i2 = dfpNewInstance4.exp;
        if (i < i2) {
            iComplement = dfpNewInstance3.align(i2);
            iAlign = 0;
        } else {
            iAlign = dfpNewInstance4.align(i);
            iComplement = 0;
        }
        if (b3 != b4) {
            if (b3 == b5) {
                iAlign = dfpNewInstance4.complement(iAlign);
            } else {
                iComplement = dfpNewInstance3.complement(iComplement);
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.mant.length; i4++) {
            int i5 = dfpNewInstance3.mant[i4] + dfpNewInstance4.mant[i4] + i3;
            i3 = i5 / 10000;
            dfpNewInstance5.mant[i4] = i5 - (i3 * 10000);
        }
        dfpNewInstance5.exp = dfpNewInstance3.exp;
        dfpNewInstance5.sign = b5;
        if (i3 != 0 && b3 == b4) {
            int i6 = dfpNewInstance5.mant[0];
            dfpNewInstance5.shiftRight();
            dfpNewInstance5.mant[this.mant.length - 1] = i3;
            int iRound = dfpNewInstance5.round(i6);
            if (iRound != 0) {
                dfpNewInstance5 = dotrap(iRound, ADD_TRAP, dfp, dfpNewInstance5);
            }
        }
        int i7 = 0;
        while (true) {
            iArr = this.mant;
            if (i7 >= iArr.length || dfpNewInstance5.mant[iArr.length - 1] != 0) {
                break;
            }
            dfpNewInstance5.shiftLeft();
            if (i7 == 0) {
                dfpNewInstance5.mant[0] = iComplement + iAlign;
                iComplement = 0;
                iAlign = 0;
            }
            i7++;
        }
        if (dfpNewInstance5.mant[iArr.length - 1] == 0) {
            dfpNewInstance5.exp = 0;
            if (b3 != b4) {
                dfpNewInstance5.sign = (byte) 1;
            }
        }
        int iRound2 = dfpNewInstance5.round(iComplement + iAlign);
        return iRound2 != 0 ? dotrap(iRound2, ADD_TRAP, dfp, dfpNewInstance5) : dfpNewInstance5;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp copySign(Dfp dfp) {
        byte b = this.sign;
        return ((b < 0 || dfp.sign < 0) && (b >= 0 || dfp.sign >= 0)) ? negate() : this;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp divide(Dfp dfp) {
        int[] iArr;
        int[] iArr2;
        int i;
        int iRound;
        int i2;
        int[] iArr3;
        int i3 = 1;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, DIVIDE_TRAP, dfp, dfpNewInstance);
        }
        Dfp dfpNewInstance2 = newInstance(getZero());
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b = this.nans;
            if (b == 1 && dfp.nans == 0) {
                Dfp dfpNewInstance3 = newInstance(this);
                dfpNewInstance3.sign = (byte) (this.sign * dfp.sign);
                return dfpNewInstance3;
            }
            byte b2 = dfp.nans;
            if (b2 == 1 && b == 0) {
                Dfp dfpNewInstance4 = newInstance(getZero());
                dfpNewInstance4.sign = (byte) (this.sign * dfp.sign);
                return dfpNewInstance4;
            }
            if (b2 == 1 && b == 1) {
                this.field.setIEEEFlagsBits(1);
                Dfp dfpNewInstance5 = newInstance(getZero());
                dfpNewInstance5.nans = (byte) 3;
                return dotrap(1, DIVIDE_TRAP, dfp, dfpNewInstance5);
            }
        }
        int[] iArr4 = dfp.mant;
        int[] iArr5 = this.mant;
        int i4 = 2;
        if (iArr4[iArr5.length - 1] == 0) {
            this.field.setIEEEFlagsBits(2);
            Dfp dfpNewInstance6 = newInstance(getZero());
            dfpNewInstance6.sign = (byte) (this.sign * dfp.sign);
            dfpNewInstance6.nans = (byte) 1;
            return dotrap(2, DIVIDE_TRAP, dfp, dfpNewInstance6);
        }
        int[] iArr6 = new int[iArr5.length + 1];
        int[] iArr7 = new int[iArr5.length + 2];
        int[] iArr8 = new int[iArr5.length + 1];
        iArr6[iArr5.length] = 0;
        iArr7[iArr5.length] = 0;
        iArr7[iArr5.length + 1] = 0;
        iArr8[iArr5.length] = 0;
        int i5 = 0;
        while (true) {
            iArr = this.mant;
            if (i5 >= iArr.length) {
                break;
            }
            iArr6[i5] = iArr[i5];
            iArr7[i5] = 0;
            iArr8[i5] = 0;
            i5++;
        }
        int length = iArr.length + 1;
        int i6 = 0;
        int i7 = 0;
        while (length >= 0) {
            int[] iArr9 = this.mant;
            int i8 = (iArr6[iArr9.length] * 10000) + iArr6[iArr9.length - i3];
            int[] iArr10 = dfp.mant;
            int i9 = i8 / (iArr10[iArr9.length - i3] + i3);
            int i10 = (i8 + i3) / iArr10[iArr9.length - i3];
            boolean z = false;
            while (!z) {
                i7 = (i9 + i10) / i4;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    int[] iArr11 = this.mant;
                    i2 = i9;
                    if (i11 >= iArr11.length + i3) {
                        break;
                    }
                    int i13 = ((i11 < iArr11.length ? dfp.mant[i11] : 0) * i7) + i12;
                    int i14 = i13 / 10000;
                    iArr8[i11] = i13 - (i14 * 10000);
                    i11++;
                    i12 = i14;
                    i9 = i2;
                    i3 = 1;
                }
                int i15 = 0;
                int i16 = 1;
                while (true) {
                    iArr3 = this.mant;
                    if (i15 >= iArr3.length + 1) {
                        break;
                    }
                    int i17 = (9999 - iArr8[i15]) + iArr6[i15] + i16;
                    i16 = i17 / 10000;
                    iArr8[i15] = i17 - (i16 * 10000);
                    i15++;
                }
                if (i16 == 0) {
                    i10 = i7 - 1;
                } else {
                    boolean z2 = z;
                    int i18 = ((iArr8[iArr3.length] * 10000) + iArr8[iArr3.length - 1]) / (dfp.mant[iArr3.length - 1] + 1);
                    i4 = 2;
                    if (i18 >= 2) {
                        i9 = i7 + i18;
                        z = z2;
                        i3 = 1;
                    } else {
                        boolean z3 = false;
                        for (int length2 = iArr3.length - 1; length2 >= 0; length2--) {
                            int[] iArr12 = dfp.mant;
                            if (iArr12[length2] > iArr8[length2]) {
                                z3 = true;
                            }
                            if (iArr12[length2] < iArr8[length2]) {
                                break;
                            }
                        }
                        z = iArr8[this.mant.length] != 0 ? false : z3;
                        if (!z) {
                            i9 = i7 + 1;
                        }
                        i3 = 1;
                        i4 = 2;
                    }
                }
                i9 = i2;
                i3 = 1;
                i4 = 2;
            }
            iArr7[length] = i7;
            if (i7 != 0 || i6 != 0) {
                i6++;
            }
            if ((this.field.getRoundingMode() == DfpField.RoundingMode.ROUND_DOWN && i6 == this.mant.length) || i6 > this.mant.length) {
                break;
            }
            iArr6[0] = 0;
            int i19 = 0;
            while (i19 < this.mant.length) {
                int i20 = i19 + 1;
                iArr6[i20] = iArr8[i19];
                i19 = i20;
            }
            length--;
            i3 = 1;
            i4 = 2;
        }
        int[] iArr13 = this.mant;
        int length3 = iArr13.length;
        for (int length4 = iArr13.length + 1; length4 >= 0; length4--) {
            if (iArr7[length4] != 0) {
                length3 = length4;
                break;
            }
        }
        int i21 = 0;
        while (true) {
            iArr2 = this.mant;
            if (i21 >= iArr2.length) {
                break;
            }
            dfpNewInstance2.mant[(iArr2.length - i21) - 1] = iArr7[length3 - i21];
            i21++;
        }
        dfpNewInstance2.exp = ((this.exp - dfp.exp) + length3) - iArr2.length;
        dfpNewInstance2.sign = (byte) (this.sign == dfp.sign ? 1 : -1);
        if (dfpNewInstance2.mant[iArr2.length - 1] == 0) {
            i = 0;
            dfpNewInstance2.exp = 0;
        } else {
            i = 0;
        }
        if (length3 > iArr2.length - 1) {
            iRound = dfpNewInstance2.round(iArr7[length3 - iArr2.length]);
        } else {
            iRound = dfpNewInstance2.round(i);
        }
        return iRound != 0 ? dotrap(iRound, DIVIDE_TRAP, dfp, dfpNewInstance2) : dfpNewInstance2;
    }

    public Dfp newInstance(int i) {
        return new Dfp(getField(), i);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp remainder(Dfp dfp) {
        Dfp dfpSubtract = subtract(divide(dfp).rint().multiply(dfp));
        if (dfpSubtract.mant[this.mant.length - 1] == 0) {
            dfpSubtract.sign = this.sign;
        }
        return dfpSubtract;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp subtract(Dfp dfp) {
        return add(dfp.negate());
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00aa, code lost:
    
        if (r12.mant[r11.mant.length - 1] == 0) goto L43;
     */
    @Override // org.apache.commons.math3.FieldElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.dfp.Dfp multiply(org.apache.commons.math3.dfp.Dfp r12) {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.dfp.Dfp.multiply(org.apache.commons.math3.dfp.Dfp):org.apache.commons.math3.dfp.Dfp");
    }

    public Dfp newInstance(long j) {
        return new Dfp(getField(), j);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp pow(double d2) {
        return DfpMath.pow(this, newInstance(d2));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp subtract(double d2) {
        return subtract(newInstance(d2));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp copySign(double d2) {
        long jDoubleToLongBits = Double.doubleToLongBits(d2);
        byte b = this.sign;
        return ((b < 0 || jDoubleToLongBits < 0) && (b >= 0 || jDoubleToLongBits >= 0)) ? negate() : this;
    }

    public Dfp newInstance(double d2) {
        return new Dfp(getField(), d2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp pow(int i) {
        return DfpMath.pow(this, i);
    }

    public Dfp newInstance(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.nans = (byte) 3;
            return dotrap(1, NEW_INSTANCE_TRAP, dfp, dfpNewInstance);
        }
        return new Dfp(dfp);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp pow(Dfp dfp) {
        return DfpMath.pow(this, dfp);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp remainder(double d2) {
        return remainder(newInstance(d2));
    }

    protected Dfp(DfpField dfpField, byte b) {
        this(dfpField, b);
    }

    protected Dfp(DfpField dfpField, int i) {
        this(dfpField, i);
    }

    protected Dfp(DfpField dfpField, long j) {
        boolean z;
        this.mant = new int[dfpField.getRadixDigits()];
        int i = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        if (j == Long.MIN_VALUE) {
            j++;
            z = true;
        } else {
            z = false;
        }
        if (j < 0) {
            this.sign = (byte) -1;
            j = -j;
        } else {
            this.sign = (byte) 1;
        }
        this.exp = 0;
        while (j != 0) {
            int[] iArr = this.mant;
            int length = iArr.length;
            int i2 = this.exp;
            System.arraycopy(iArr, length - i2, iArr, (iArr.length - 1) - i2, i2);
            int[] iArr2 = this.mant;
            iArr2[iArr2.length - 1] = (int) (j % 10000);
            j /= 10000;
            this.exp++;
        }
        if (!z) {
            return;
        }
        while (true) {
            int[] iArr3 = this.mant;
            if (i >= iArr3.length - 1) {
                return;
            }
            if (iArr3[i] != 0) {
                iArr3[i] = iArr3[i] + 1;
                return;
            }
            i++;
        }
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp[] dfpArr, Dfp[] dfpArr2) throws DimensionMismatchException {
        if (dfpArr.length == dfpArr2.length) {
            Dfp zero = getZero();
            for (int i = 0; i < dfpArr.length; i++) {
                zero = zero.add(dfpArr[i].multiply(dfpArr2[i]));
            }
            return zero;
        }
        throw new DimensionMismatchException(dfpArr.length, dfpArr2.length);
    }

    public Dfp newInstance(String str) {
        return new Dfp(this.field, str);
    }

    public Dfp newInstance(byte b, byte b2) {
        return this.field.newDfp(b, b2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double[] dArr, Dfp[] dfpArr) throws DimensionMismatchException {
        if (dArr.length == dfpArr.length) {
            Dfp zero = getZero();
            for (int i = 0; i < dArr.length; i++) {
                zero = zero.add(dfpArr[i].multiply(dArr[i]));
            }
            return zero;
        }
        throw new DimensionMismatchException(dArr.length, dfpArr.length);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public long round() {
        return FastMath.round(toDouble());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double d2, Dfp dfp, double d3, Dfp dfp2) {
        return dfp.multiply(d2).add(dfp2.multiply(d3));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4, Dfp dfp5, Dfp dfp6) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4)).add(dfp5.multiply(dfp6));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double d2, Dfp dfp, double d3, Dfp dfp2, double d4, Dfp dfp3) {
        return dfp.multiply(d2).add(dfp2.multiply(d3)).add(dfp3.multiply(d4));
    }

    protected Dfp(DfpField dfpField, double d2) {
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        long jDoubleToLongBits = Double.doubleToLongBits(d2);
        long j = jDoubleToLongBits & 4503599627370495L;
        int i = ((int) ((9218868437227405312L & jDoubleToLongBits) >> 52)) - 1023;
        if (i == -1023) {
            if (d2 == 0.0d) {
                if ((jDoubleToLongBits & Long.MIN_VALUE) != 0) {
                    this.sign = (byte) -1;
                    return;
                }
                return;
            } else {
                i++;
                while ((j & 4503599627370496L) == 0) {
                    i--;
                    j <<= 1;
                }
                j &= 4503599627370495L;
            }
        }
        if (i != 1024) {
            Dfp dfpMultiply = new Dfp(dfpField, j).divide(new Dfp(dfpField, 4503599627370496L)).add(dfpField.getOne()).multiply(DfpMath.pow(dfpField.getTwo(), i));
            dfpMultiply = (jDoubleToLongBits & Long.MIN_VALUE) != 0 ? dfpMultiply.negate() : dfpMultiply;
            int[] iArr = dfpMultiply.mant;
            int[] iArr2 = this.mant;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            this.sign = dfpMultiply.sign;
            this.exp = dfpMultiply.exp;
            this.nans = dfpMultiply.nans;
            return;
        }
        if (d2 != d2) {
            this.sign = (byte) 1;
            this.nans = (byte) 3;
        } else if (d2 < 0.0d) {
            this.sign = (byte) -1;
            this.nans = (byte) 1;
        } else {
            this.sign = (byte) 1;
            this.nans = (byte) 1;
        }
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4, Dfp dfp5, Dfp dfp6, Dfp dfp7, Dfp dfp8) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4)).add(dfp5.multiply(dfp6)).add(dfp7.multiply(dfp8));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double d2, Dfp dfp, double d3, Dfp dfp2, double d4, Dfp dfp3, double d5, Dfp dfp4) {
        return dfp.multiply(d2).add(dfp2.multiply(d3)).add(dfp3.multiply(d4)).add(dfp4.multiply(d5));
    }

    public Dfp(Dfp dfp) {
        this.mant = (int[]) dfp.mant.clone();
        this.sign = dfp.sign;
        this.exp = dfp.exp;
        this.nans = dfp.nans;
        this.field = dfp.field;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp multiply(int i) {
        if (i >= 0 && i < 10000) {
            return multiplyFast(i);
        }
        return multiply(newInstance(i));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp multiply(double d2) {
        return multiply(newInstance(d2));
    }

    protected Dfp(DfpField dfpField, String str) {
        int iCharAt;
        int i;
        int[] iArr;
        String str2 = str;
        this.mant = new int[dfpField.getRadixDigits()];
        int i2 = 1;
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        int radixDigits = (getRadixDigits() * 4) + 8;
        char[] cArr = new char[radixDigits];
        if (str2.equals(POS_INFINITY_STRING)) {
            this.sign = (byte) 1;
            this.nans = (byte) 1;
            return;
        }
        if (str2.equals(NEG_INFINITY_STRING)) {
            this.sign = (byte) -1;
            this.nans = (byte) 1;
            return;
        }
        if (str2.equals(NAN_STRING)) {
            this.sign = (byte) 1;
            this.nans = (byte) 3;
            return;
        }
        int iIndexOf = str2.indexOf("e");
        iIndexOf = iIndexOf == -1 ? str2.indexOf(ExifInterface.LONGITUDE_EAST) : iIndexOf;
        if (iIndexOf != -1) {
            String strSubstring = str2.substring(0, iIndexOf);
            String strSubstring2 = str2.substring(iIndexOf + 1);
            boolean z = false;
            iCharAt = 0;
            for (int i3 = 0; i3 < strSubstring2.length(); i3++) {
                if (strSubstring2.charAt(i3) == '-') {
                    z = true;
                } else if (strSubstring2.charAt(i3) >= '0' && strSubstring2.charAt(i3) <= '9') {
                    iCharAt = ((iCharAt * 10) + strSubstring2.charAt(i3)) - 48;
                }
            }
            iCharAt = z ? -iCharAt : iCharAt;
            str2 = strSubstring;
        } else {
            iCharAt = 0;
        }
        if (str2.indexOf("-") != -1) {
            this.sign = (byte) -1;
        }
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        do {
            if (str2.charAt(i4) >= '1' && str2.charAt(i4) <= '9') {
                break;
            }
            if (z2 && str2.charAt(i4) == '0') {
                i5--;
            }
            z2 = str2.charAt(i4) == '.' ? true : z2;
            i4++;
        } while (i4 != str2.length());
        cArr[0] = '0';
        cArr[1] = '0';
        cArr[2] = '0';
        cArr[3] = '0';
        int i6 = i5;
        int i7 = 0;
        int i8 = 4;
        while (true) {
            if (i4 == str2.length()) {
                i = 4;
                break;
            }
            i = 4;
            if (i8 == (this.mant.length * 4) + 4 + i2) {
                break;
            }
            if (str2.charAt(i4) == '.') {
                i4++;
                i6 = i7;
                i2 = 1;
                z2 = true;
            } else {
                if (str2.charAt(i4) < '0' || str2.charAt(i4) > '9') {
                    i4++;
                } else {
                    cArr[i8] = str2.charAt(i4);
                    i8++;
                    i4++;
                    i7++;
                }
                i2 = 1;
            }
        }
        if (z2 && i8 != i) {
            while (true) {
                i8--;
                if (i8 == i || cArr[i8] != '0') {
                    break;
                }
                i7--;
                i = 4;
            }
        }
        if (z2 && i7 == 0) {
            i6 = 0;
        }
        i6 = z2 ? i6 : i8 - 4;
        int i9 = (i7 - i2) + 4;
        for (int i10 = 4; i9 > i10 && cArr[i9] == '0'; i10 = 4) {
            i9--;
        }
        int i11 = 4;
        int i12 = ((400 - i6) - (iCharAt % 4)) % 4;
        int i13 = 4 - i12;
        int i14 = i6 + i12;
        while (true) {
            int i15 = i9 - i13;
            iArr = this.mant;
            if (i15 >= iArr.length * 4) {
                break;
            }
            int i16 = 0;
            while (i16 < i11) {
                i9++;
                cArr[i9] = '0';
                i16++;
                i11 = 4;
            }
        }
        for (int length = iArr.length - i2; length >= 0; length--) {
            this.mant[length] = ((cArr[i13] - '0') * 1000) + ((cArr[i13 + 1] - '0') * 100) + ((cArr[i13 + 2] - '0') * 10) + (cArr[i13 + 3] - '0');
            i13 += 4;
        }
        this.exp = (i14 + iCharAt) / 4;
        if (i13 < radixDigits) {
            round((cArr[i13] - '0') * 1000);
        }
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp add(double d2) {
        return add(newInstance(d2));
    }

    public Dfp divide(int i) {
        if (this.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (this.nans == 1) {
                return newInstance(this);
            }
        }
        if (i == 0) {
            this.field.setIEEEFlagsBits(2);
            Dfp dfpNewInstance = newInstance(getZero());
            dfpNewInstance.sign = this.sign;
            dfpNewInstance.nans = (byte) 1;
            return dotrap(2, DIVIDE_TRAP, getZero(), dfpNewInstance);
        }
        if (i >= 0 && i < 10000) {
            Dfp dfpNewInstance2 = newInstance(this);
            int i2 = 0;
            for (int length = this.mant.length - 1; length >= 0; length--) {
                int[] iArr = dfpNewInstance2.mant;
                int i3 = (i2 * 10000) + iArr[length];
                int i4 = i3 / i;
                i2 = i3 - (i4 * i);
                iArr[length] = i4;
            }
            if (dfpNewInstance2.mant[this.mant.length - 1] == 0) {
                dfpNewInstance2.shiftLeft();
                int i5 = i2 * 10000;
                int i6 = i5 / i;
                i2 = i5 - (i6 * i);
                dfpNewInstance2.mant[0] = i6;
            }
            int iRound = dfpNewInstance2.round((i2 * 10000) / i);
            return iRound != 0 ? dotrap(iRound, DIVIDE_TRAP, dfpNewInstance2, dfpNewInstance2) : dfpNewInstance2;
        }
        this.field.setIEEEFlagsBits(1);
        Dfp dfpNewInstance3 = newInstance(getZero());
        dfpNewInstance3.nans = (byte) 3;
        return dotrap(1, DIVIDE_TRAP, dfpNewInstance3, dfpNewInstance3);
    }

    protected Dfp(DfpField dfpField, byte b, byte b2) {
        this.field = dfpField;
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = b;
        this.exp = 0;
        this.nans = b2;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp divide(double d2) {
        return divide(newInstance(d2));
    }
}
