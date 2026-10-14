package org.apache.commons.math3.dfp;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Ascii;
import java.util.Arrays;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NullArgumentException;
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
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = null;

        static {
            int[] r0 = new int[DfpField.RoundingMode.values().length];
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = r0;
            r0[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 1;     // Catch: NoSuchFieldError -> L12
        L20:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 2;     // Catch: NoSuchFieldError -> L13
        L24:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 3;     // Catch: NoSuchFieldError -> L14
        L34:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 4;     // Catch: NoSuchFieldError -> L15
        L22:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_UP.ordinal()] = 5;     // Catch: NoSuchFieldError -> L16
        L26:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 6;     // Catch: NoSuchFieldError -> L17
        L28:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 7;     // Catch: NoSuchFieldError -> L18
        L30:
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 8;     // Catch: NoSuchFieldError -> L19
            return;
        }
    }

    protected Dfp(DfpField r2) {
        this.mant = new int[r2.getRadixDigits()];
        this.sign = 1;
        this.exp = 0;
        this.nans = 0;
        this.field = r2;
    }

    private static int compare(Dfp r7, Dfp r8) {
        int[] r0 = r7.mant;
        if (r0[r0.length - 1] != 0) goto L11;
        int[] r1 = r8.mant;
        if (r1[r1.length - 1] != 0) goto L11;
        if (r7.nans != 0) goto L11;
        if (r8.nans != 0) goto L11;
        return 0;
    L11:
        byte r2 = r7.sign;
        byte r4 = r8.sign;
        if (r2 != r4) goto L14;
        byte r5 = r7.nans;
        if (r5 == 1) goto L20;
    L22:
        if (r5 == 0) goto L24;
    L27:
        if (r5 == 1) goto L29;
    L31:
        int[] r6 = r8.mant;
        if (r6[r6.length - 1] != 0) goto L34;
    L41:
        int r3 = r0.length - 1;
    L42:
        if (r3 < 0) goto L52;
        int[] r9 = r7.mant;
        int r10 = r9[r3];
        int[] r11 = r8.mant;
        if (r10 > r11[r3]) goto L46;
        if (r9[r3] < r11[r3]) goto L50;
        r3 = r3 - 1;
        goto L42
    L50:
        return -r7.sign;
    L46:
        return r7.sign;
    L52:
        return 0;
    L34:
        if (r0[r6.length - 1] == 0) goto L41;
        int r12 = r7.exp;
        int r13 = r8.exp;
        if (r12 < r13) goto L38;
        if (r12 <= r13) goto L41;
        return r2;
    L38:
        return -r2;
    L29:
        if (r8.nans != 1) goto L31;
        return 0;
    L24:
        if (r8.nans != 1) goto L27;
        return -r4;
    L20:
        if (r8.nans != 0) goto L22;
        return r2;
    L14:
        if (r2 != (-1)) goto L16;
        return -1;
    L16:
        return 1;
    }

    public static Dfp copysign(Dfp r0, Dfp r1) {
        Dfp r2 = r0.newInstance(r0);
        r2.sign = r1.sign;
        return r2;
    }

    private Dfp multiplyFast(int r10) {
        Dfp r0 = newInstance(this);
        if (this.nans != 0) goto L5;
    L16:
        if (r10 >= 0) goto L18;
    L34:
        this.field.setIEEEFlagsBits(1);
        Dfp r11 = newInstance(getZero());
        r11.nans = 3;
        return dotrap(1, MULTIPLY_TRAP, r11, r11);
    L18:
        if (r10 >= 10000) goto L34;
        int r2 = 0;
        int r5 = 0;
    L21:
        int[] r6 = this.mant;
        if (r2 >= r6.length) goto L24;
        int r7 = (r6[r2] * r10) + r5;
        r5 = r7 / 10000;
        r0.mant[r2] = r7 - (r5 * 10000);
        r2 = r2 + 1;
        goto L21
    L24:
        if (r5 == 0) goto L26;
        int r12 = r0.mant[0];
        r0.shiftRight();
        r0.mant[this.mant.length - 1] = r5;
    L28:
        if (r0.mant[this.mant.length - 1] != 0) goto L30;
        r0.exp = 0;
    L30:
        int r13 = r0.round(r12);
        if (r13 != 0) goto L33;
        return r0;
    L33:
        return dotrap(r13, MULTIPLY_TRAP, r0, r0);
    L26:
        r12 = 0;
        goto L28
    L5:
        if (isNaN() == false) goto L7;
        return this;
    L7:
        byte r1 = this.nans;
        if (r1 != 1) goto L12;
        if (r10 == 0) goto L12;
        return newInstance(this);
    L12:
        if (r1 != 1) goto L16;
        if (r10 != 0) goto L16;
        this.field.setIEEEFlagsBits(1);
        Dfp r14 = newInstance(getZero());
        r14.nans = 3;
        return dotrap(1, MULTIPLY_TRAP, newInstance(getZero()), r14);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp abs() {
        return abs2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp acos() {
        return acos2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp acosh() {
        return acosh2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp add(double r1) {
        return add2(r1);
    }

    protected int align(int r9) {
        int r0 = this.exp - r9;
        if (r0 >= 0) goto L5;
        int r1 = -r0;
    L7:
        if (r0 != 0) goto L9;
        return 0;
    L9:
        int[] r3 = this.mant;
        if (r1 <= (r3.length + 1)) goto L13;
        Arrays.fill(r3, 0);
        this.exp = r9;
        this.field.setIEEEFlagsBits(16);
        dotrap(16, ALIGN_TRAP, this, this);
        return 0;
    L13:
        int r10 = 0;
        boolean r4 = false;
        int r5 = 0;
    L14:
        if (r10 >= r1) goto L21;
        if (r0 >= 0) goto L19;
        if (r5 == 0) goto L18;
        r4 = true;
    L18:
        r5 = this.mant[0];
        shiftRight();
    L20:
        r10 = r10 + 1;
        goto L14
    L19:
        shiftLeft();
        goto L20
    L21:
        if (r4 == false) goto L23;
        this.field.setIEEEFlagsBits(16);
        dotrap(16, ALIGN_TRAP, this, this);
    L23:
        return r5;
    L5:
        r1 = r0;
        goto L7
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp asin() {
        return asin2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp asinh() {
        return asinh2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp atan() {
        return atan3();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp atan2(Dfp r1) throws DimensionMismatchException {
        return atan22(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp atanh() {
        return atanh2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp cbrt() {
        return cbrt2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp ceil() {
        return ceil2();
    }

    public int classify() {
        return this.nans;
    }

    protected int complement(int r6) {
        int r7 = 10000 - r6;
        int r0 = 0;
        int r1 = 0;
    L3:
        int[] r2 = this.mant;
        if (r1 >= r2.length) goto L6;
        r2[r1] = (10000 - r2[r1]) - 1;
        r1 = r1 + 1;
        goto L3
    L6:
        int r3 = r7 / 10000;
        int r8 = r7 - (r3 * 10000);
    L7:
        int[] r4 = this.mant;
        if (r0 >= r4.length) goto L10;
        int r5 = r4[r0] + r3;
        r3 = r5 / 10000;
        r4[r0] = r5 - (r3 * 10000);
        r0 = r0 + 1;
        goto L7
    L10:
        return r8;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp copySign(double r1) {
        return copySign2(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp cos() {
        return cos2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp cosh() {
        return cosh2();
    }

    protected String dfp2sci() {
        int[] r0 = this.mant;
        int r1 = r0.length * 4;
        char[] r2 = new char[r1];
        char[] r3 = new char[(r0.length * 4) + 20];
        int r4 = r0.length - 1;
        int r6 = 0;
    L4:
        if (r4 < 0) goto L6;
        int r8 = r6 + 1;
        int[] r9 = this.mant;
        r2[r6] = (char) ((r9[r4] / 1000) + 48);
        int r7 = r8 + 1;
        r2[r8] = (char) (((r9[r4] / 100) % 10) + 48);
        int r10 = r7 + 1;
        r2[r7] = (char) (((r9[r4] / 10) % 10) + 48);
        r6 = r10 + 1;
        r2[r10] = (char) ((r9[r4] % 10) + 48);
        r4 = r4 - 1;
        goto L4
    L6:
        int r5 = 0;
    L7:
        if (r5 >= r1) goto L13;
        if (r2[r5] != '0') goto L13;
        r5 = r5 + 1;
    L13:
        if (this.sign != (-1)) goto L15;
        r3[0] = '-';
        int r11 = 1;
    L17:
        if (r5 == r1) goto L35;
        int r12 = r11 + 1;
        int r13 = r5 + 1;
        r3[r11] = r2[r5];
        int r14 = r12 + 1;
        r3[r12] = '.';
    L19:
        if (r13 >= r1) goto L21;
        r3[r14] = r2[r13];
        r14 = r14 + 1;
        r13 = r13 + 1;
        goto L19
    L21:
        int r15 = r14 + 1;
        r3[r14] = 'e';
        int r16 = ((this.exp * 4) - r5) - 1;
        if (r16 >= 0) goto L24;
        int r17 = -r16;
    L25:
        int r18 = 1000000000;
    L26:
        if (r18 <= r17) goto L28;
        r18 = r18 / 10;
        goto L26
    L28:
        if (r16 >= 0) goto L31;
        int r19 = r15 + 1;
        r3[r15] = '-';
        r15 = r19;
    L31:
        if (r18 <= 0) goto L34;
        int r20 = r15 + 1;
        r3[r15] = (char) ((r17 / r18) + 48);
        r17 = r17 % r18;
        r18 = r18 / 10;
        r15 = r20;
        goto L31
    L34:
        return new String(r3, 0, r15);
    L24:
        r17 = r16;
        goto L25
    L35:
        int r21 = r11 + 1;
        r3[r11] = '0';
        int r22 = r21 + 1;
        r3[r21] = '.';
        int r23 = r22 + 1;
        r3[r22] = '0';
        r3[r23] = 'e';
        r3[r23 + 1] = '0';
        return new String(r3, 0, 5);
    L15:
        r11 = 0;
        goto L17
    }

    protected String dfp2string() {
        char[] r0 = new char[(this.mant.length * 4) + 20];
        int r1 = this.exp;
        boolean r3 = false;
        r0[0] = ' ';
        int r5 = 1;
        if (r1 > 0) goto L5;
        r0[1] = '0';
        int r6 = 3;
        r0[2] = '.';
        r3 = true;
    L6:
        if (r1 >= 0) goto L8;
        int r7 = r6 + 1;
        r0[r6] = '0';
        int r8 = r7 + 1;
        r0[r7] = '0';
        int r9 = r8 + 1;
        r0[r8] = '0';
        r6 = r9 + 1;
        r0[r9] = '0';
        r1 = r1 + 1;
        goto L6
    L8:
        int r10 = this.mant.length - 1;
    L9:
        if (r10 < 0) goto L14;
        int r11 = r6 + 1;
        int[] r12 = this.mant;
        r0[r6] = (char) ((r12[r10] / 1000) + 48);
        int r13 = r11 + 1;
        r0[r11] = (char) (((r12[r10] / 100) % 10) + 48);
        int r14 = r13 + 1;
        r0[r13] = (char) (((r12[r10] / 10) % 10) + 48);
        r6 = r14 + 1;
        r0[r14] = (char) ((r12[r10] % 10) + 48);
        r1 = r1 - 1;
        if (r1 != 0) goto L13;
        r0[r6] = '.';
        r6 = r6 + 1;
        r3 = true;
    L13:
        r10 = r10 - 1;
    L14:
        if (r1 <= 0) goto L16;
        int r15 = r6 + 1;
        r0[r6] = '0';
        int r16 = r15 + 1;
        r0[r15] = '0';
        int r17 = r16 + 1;
        r0[r16] = '0';
        r6 = r17 + 1;
        r0[r17] = '0';
        r1 = r1 - 1;
        goto L14
    L16:
        if (r3 == true) goto L19;
        r0[r6] = '.';
        r6 = r6 + 1;
    L19:
        if (r0[r5] != '0') goto L22;
        r5 = r5 + 1;
        goto L19
    L22:
        if (r0[r5] != '.') goto L25;
        r5 = r5 - 1;
    L25:
        if (r0[r6 - 1] != '0') goto L28;
        r6 = r6 - 1;
        goto L25
    L28:
        if (this.sign >= 0) goto L31;
        r5 = r5 - 1;
        r0[r5] = '-';
    L31:
        return new String(r0, r5, r6 - r5);
    L5:
        r6 = 1;
        goto L6
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp divide(double r1) {
        return divide2(r1);
    }

    public Dfp dotrap(int r10, String r11, Dfp r12, Dfp r13) {
        if (r10 != 1) goto L5;
        Dfp r1 = newInstance(getZero());
        r1.sign = r13.sign;
        r1.nans = 3;
    L40:
        Dfp r7 = r1;
    L42:
        return trap(r10, r11, r12, r7, r13);
    L5:
        if (r10 == 2) goto L19;
        if (r10 != 4) goto L9;
        r13.exp -= 32760;
        Dfp r0 = newInstance(getZero());
        r0.sign = r13.sign;
        r0.nans = 1;
    L17:
        r7 = r0;
        goto L42
    L9:
        if (r10 == 8) goto L12;
        r7 = r13;
        goto L42
    L12:
        if ((r13.exp + this.mant.length) >= (-32767)) goto L14;
        r0 = newInstance(getZero());
        r0.sign = r13.sign;
    L15:
        r13.exp += ERR_SCALE;
        goto L17
    L14:
        r0 = newInstance(r13);
        goto L15
    L19:
        if (this.nans != 0) goto L23;
        int[] r3 = this.mant;
        if (r3[r3.length - 1] == 0) goto L23;
        Dfp r4 = newInstance(getZero());
        r4.sign = (byte) (this.sign * r12.sign);
        r4.nans = 1;
    L25:
        if (this.nans != 0) goto L29;
        int[] r5 = this.mant;
        if (r5[r5.length - 1] != 0) goto L29;
        r4 = newInstance(getZero());
        r4.nans = 3;
    L29:
        byte r6 = this.nans;
        if (r6 == 1) goto L32;
        if (r6 == 3) goto L32;
    L33:
        byte r8 = this.nans;
        if (r8 == 1) goto L38;
        if (r8 == 2) goto L38;
        r7 = r4;
    L38:
        r1 = newInstance(getZero());
        r1.nans = 3;
    L32:
        r4 = newInstance(getZero());
        r4.nans = 3;
    L23:
        r4 = r13;
        goto L25
    }

    public boolean equals(Object r4) {
        if ((r4 instanceof Dfp) == false) goto L15;
        Dfp r5 = (Dfp) r4;
        if (isNaN() == false) goto L7;
        return false;
    L7:
        if (r5.isNaN() == false) goto L9;
        return false;
    L9:
        if (this.field.getRadixDigits() == r5.field.getRadixDigits()) goto L12;
        return false;
    L12:
        if (compare(this, r5) != 0) goto L18;
        return true;
    L18:
        return false;
    L15:
        return false;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp exp() {
        return exp2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp expm1() {
        return expm12();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp floor() {
        return floor2();
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Field getField() {
        return getField();
    }

    public Dfp getOne() {
        return this.field.getOne2();
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
        return this.field.getZero2();
    }

    public boolean greaterThan(Dfp r6) {
        if (this.field.getRadixDigits() == r6.field.getRadixDigits()) goto L7;
        this.field.setIEEEFlagsBits(1);
        Dfp r0 = newInstance(getZero());
        r0.nans = 3;
        dotrap(1, GREATER_THAN_TRAP, r6, r0);
        return false;
    L7:
        if (isNaN() == false) goto L9;
    L15:
        this.field.setIEEEFlagsBits(1);
        dotrap(1, GREATER_THAN_TRAP, r6, newInstance(getZero()));
        return false;
    L9:
        if (r6.isNaN() == true) goto L15;
        if (compare(this, r6) <= 0) goto L17;
        return true;
    L17:
        return false;
    }

    public int hashCode() {
        if (isZero() == false) goto L5;
        int r0 = 0;
    L7:
        return (((r0 + 17) + (this.nans << Ascii.DLE)) + this.exp) + Arrays.hashCode(this.mant);
    L5:
        r0 = this.sign << 8;
        goto L7
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp hypot(Dfp r1) throws DimensionMismatchException {
        return hypot2(r1);
    }

    public int intLog10() {
        int[] r0 = this.mant;
        if (r0[r0.length - 1] <= 1000) goto L7;
        return (this.exp * 4) - 1;
    L7:
        if (r0[r0.length - 1] <= 100) goto L11;
        return (this.exp * 4) - 2;
    L11:
        if (r0[r0.length - 1] <= 10) goto L15;
        return (this.exp * 4) - 3;
    L15:
        return (this.exp * 4) - 4;
    }

    public int intValue() {
        Dfp r0 = rint2();
        if (r0.greaterThan(newInstance(Integer.MAX_VALUE)) == false) goto L6;
        return Integer.MAX_VALUE;
    L6:
        if (r0.lessThan(newInstance(Integer.MIN_VALUE)) == false) goto L8;
        return Integer.MIN_VALUE;
    L8:
        int r1 = this.mant.length - 1;
        int r2 = 0;
    L10:
        if (r1 < (this.mant.length - r0.exp)) goto L13;
        r2 = (r2 * 10000) + r0.mant[r1];
        r1 = r1 - 1;
        goto L10
    L13:
        if (r0.sign == (-1)) goto L15;
        return r2;
    L15:
        return -r2;
    }

    public boolean isInfinite() {
        if (this.nans == 1) goto L7;
        return false;
    L7:
        return true;
    }

    public boolean isNaN() {
        byte r0 = this.nans;
        if (r0 != 3) goto L5;
    L8:
        return true;
    L5:
        if (r0 == 2) goto L8;
        return false;
    }

    public boolean isZero() {
        if (isNaN() == false) goto L6;
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    L6:
        int[] r0 = this.mant;
        if (r0[r0.length - 1] == 0) goto L9;
        return false;
    L9:
        if (isInfinite() == true) goto L13;
        return true;
    L13:
        return false;
    }

    public boolean lessThan(Dfp r6) {
        if (this.field.getRadixDigits() == r6.field.getRadixDigits()) goto L7;
        this.field.setIEEEFlagsBits(1);
        Dfp r0 = newInstance(getZero());
        r0.nans = 3;
        dotrap(1, LESS_THAN_TRAP, r6, r0);
        return false;
    L7:
        if (isNaN() == false) goto L9;
    L15:
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, r6, newInstance(getZero()));
        return false;
    L9:
        if (r6.isNaN() == true) goto L15;
        if (compare(this, r6) >= 0) goto L17;
        return true;
    L17:
        return false;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(double r1, Dfp r3, double r4, Dfp r6) {
        return linearCombination2(r1, r3, r4, r6);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp log() {
        return log2();
    }

    @Deprecated
    public int log10() {
        return intLog10();
    }

    public int log10K() {
        return this.exp - 1;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp log1p() {
        return log1p2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp multiply(double r1) {
        return multiply2(r1);
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object negate() {
        return negate();
    }

    public boolean negativeOrNull() {
        if (isNaN() == false) goto L7;
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    L7:
        if (this.sign < 0) goto L12;
        int[] r0 = this.mant;
        if (r0[r0.length - 1] == 0) goto L11;
        return false;
    L11:
        if (isInfinite() == false) goto L12;
        return false;
    L12:
        return true;
    }

    public Dfp newInstance() {
        return new Dfp(getField());
    }

    public Dfp nextAfter(Dfp r6) {
        if (this.field.getRadixDigits() == r6.field.getRadixDigits()) goto L6;
        this.field.setIEEEFlagsBits(1);
        Dfp r0 = newInstance(getZero());
        r0.nans = 3;
        return dotrap(1, NEXT_AFTER_TRAP, r6, r0);
    L6:
        boolean r1 = lessThan(r6);
        if (compare(this, r6) != 0) goto L11;
        return newInstance(r6);
    L11:
        if (lessThan(getZero()) == false) goto L13;
        r1 = !r1;
    L13:
        if (r1 == false) goto L18;
        Dfp r2 = newInstance(getOne());
        r2.exp = (this.exp - this.mant.length) + 1;
        r2.sign = this.sign;
        if (equals(getZero()) == false) goto L17;
        r2.exp = (-32767) - this.mant.length;
    L17:
        Dfp r3 = add(r2);
    L27:
        if (r3.classify() != 1) goto L32;
        if (classify() == 1) goto L32;
        this.field.setIEEEFlagsBits(16);
        r3 = dotrap(16, NEXT_AFTER_TRAP, r6, r3);
    L32:
        if (r3.equals(getZero()) == true) goto L34;
        return r3;
    L34:
        if (equals(getZero()) == true) goto L38;
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, NEXT_AFTER_TRAP, r6, r3);
    L38:
        return r3;
    L18:
        Dfp r4 = newInstance(getOne());
        r4.exp = this.exp;
        r4.sign = this.sign;
        if (equals(r4) == false) goto L21;
        r4.exp = this.exp - this.mant.length;
    L23:
        if (equals(getZero()) == false) goto L25;
        r4.exp = (-32767) - this.mant.length;
    L25:
        r3 = subtract(r4);
        goto L27
    L21:
        r4.exp = (this.exp - this.mant.length) + 1;
        goto L23
    }

    public boolean positiveOrNull() {
        if (isNaN() == false) goto L7;
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    L7:
        if (this.sign > 0) goto L12;
        int[] r0 = this.mant;
        if (r0[r0.length - 1] == 0) goto L11;
        return false;
    L11:
        if (isInfinite() == false) goto L12;
        return false;
    L12:
        return true;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp pow(double r1) {
        return pow2(r1);
    }

    public Dfp power10(int r4) {
        Dfp r0 = newInstance(getOne());
        if (r4 < 0) goto L5;
        r0.exp = (r4 / 4) + 1;
    L6:
        int r5 = ((r4 % 4) + 4) % 4;
        if (r5 == 0) goto L15;
        if (r5 == 1) goto L14;
        if (r5 == 2) goto L17;
        return r0.multiply(1000);
    L17:
        return r0.multiply(100);
    L14:
        return r0.multiply(10);
    L15:
        return r0;
    L5:
        r0.exp = (r4 + 1) / 4;
        goto L6
    }

    public Dfp power10K(int r2) {
        Dfp r0 = newInstance(getOne());
        r0.exp = r2 + 1;
        return r0;
    }

    @Override // org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object reciprocal() {
        return reciprocal();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp remainder(double r1) {
        return remainder2(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp rint() {
        return rint2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp rootN(int r1) {
        return rootN2(r1);
    }

    protected int round(int r8) {
        switch(AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[this.field.getRoundingMode().ordinal()]) {
            case 2: goto L26;
            case 3: goto L20;
            case 4: goto L19;
            case 5: goto L17;
            case 6: goto L15;
            case 7: goto L13;
            case 8: goto L8;
            default: goto L5;
        };
    L8:
        if (r8 > 5000) goto L12;
        if (r8 != 5000) goto L19;
        if ((this.mant[0] & 1) != 0) goto L19;
    L12:
        boolean r0 = true;
    L29:
        if (r0 == false) goto L36;
        int r1 = 0;
        int r2 = 1;
    L31:
        int[] r4 = this.mant;
        if (r1 >= r4.length) goto L34;
        int r5 = r4[r1] + r2;
        r2 = r5 / 10000;
        r4[r1] = r5 - (r2 * 10000);
        r1 = r1 + 1;
        goto L31
    L34:
        if (r2 == 0) goto L36;
        shiftRight();
        int[] r3 = this.mant;
        r3[r3.length - 1] = r2;
    L36:
        int r6 = this.exp;
        if (r6 >= (-32767)) goto L41;
        this.field.setIEEEFlagsBits(8);
        return 8;
    L41:
        if (r6 <= 32768) goto L44;
        this.field.setIEEEFlagsBits(4);
        return 4;
    L44:
        if (r8 == 0) goto L47;
        this.field.setIEEEFlagsBits(16);
        return 16;
    L47:
        return 0;
    L13:
        if (r8 <= 5000) goto L19;
    L15:
        if (r8 < 5000) goto L19;
    L17:
        if (r8 != 0) goto L12;
    L19:
        r0 = false;
        goto L29
    L20:
        if (r8 > 5000) goto L12;
        if (r8 != 5000) goto L19;
        if ((this.mant[0] & 1) != 1) goto L19;
    L5:
        if (this.sign != (-1)) goto L19;
        if (r8 == 0) goto L19;
    L26:
        if (this.sign != 1) goto L19;
        if (r8 == 0) goto L19;
        goto L19
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp scalb(int r1) {
        return scalb2(r1);
    }

    protected void shiftLeft() {
        int r0 = this.mant.length - 1;
    L3:
        if (r0 <= 0) goto L5;
        int[] r1 = this.mant;
        r1[r0] = r1[r0 - 1];
        r0 = r0 - 1;
        goto L3
    L5:
        this.mant[0] = 0;
        this.exp--;
    }

    protected void shiftRight() {
        int r1 = 0;
    L3:
        int[] r2 = this.mant;
        if (r1 >= (r2.length - 1)) goto L6;
        int r3 = r1 + 1;
        r2[r1] = r2[r3];
        r1 = r3;
        goto L3
    L6:
        r2[r2.length - 1] = 0;
        this.exp++;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp signum() {
        return signum2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp sin() {
        return sin2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp sinh() {
        return sinh2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp sqrt() {
        return sqrt2();
    }

    public boolean strictlyNegative() {
        if (isNaN() == false) goto L7;
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    L7:
        if (this.sign >= 0) goto L14;
        int[] r0 = this.mant;
        if (r0[r0.length - 1] == 0) goto L11;
    L12:
        return true;
    L11:
        if (isInfinite() == true) goto L12;
        return false;
    L14:
        return false;
    }

    public boolean strictlyPositive() {
        if (isNaN() == false) goto L7;
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    L7:
        if (this.sign <= 0) goto L14;
        int[] r0 = this.mant;
        if (r0[r0.length - 1] == 0) goto L11;
    L12:
        return true;
    L11:
        if (isInfinite() == true) goto L12;
        return false;
    L14:
        return false;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp subtract(double r1) {
        return subtract2(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp tan() {
        return tan2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp tanh() {
        return tanh2();
    }

    public double toDouble() {
        if (isInfinite() == false) goto L9;
        if (lessThan(getZero()) == false) goto L7;
        return Double.NEGATIVE_INFINITY;
    L7:
        return Double.POSITIVE_INFINITY;
    L9:
        if (isNaN() == false) goto L12;
        return Double.NaN;
    L12:
        int r0 = compare(this, getZero());
        if (r0 != 0) goto L19;
        if (this.sign >= 0) goto L60;
        return -0.0d;
    L60:
        return 0.0d;
    L19:
        if (r0 >= 0) goto L21;
        Dfp r1 = negate();
        boolean r9 = true;
    L22:
        int r10 = (int) (((double) r1.intLog10()) * 3.32d);
        if (r10 >= 0) goto L25;
        r10 = r10 - 1;
    L25:
        Dfp r11 = DfpMath.pow(getTwo(), r10);
    L27:
        if (r11.lessThan(r1) == true) goto L54;
        if (r11.equals(r1) == true) goto L54;
        int r12 = r10 - 1;
        Dfp r2 = r1.divide(DfpMath.pow(getTwo(), r12));
        if (r12 <= (-1023)) goto L35;
        r2 = r2.subtract(getOne());
    L35:
        if (r12 >= (-1074)) goto L38;
        return 0.0d;
    L38:
        if (r12 <= 1023) goto L43;
        if (r9 == false) goto L42;
        return Double.NEGATIVE_INFINITY;
    L42:
        return Double.POSITIVE_INFINITY;
    L43:
        String r3 = r2.multiply(newInstance(4503599627370496L)).rint2().toString();
        long r4 = Long.parseLong(r3.substring(0, r3.length() - 1));
        if (r4 != 4503599627370496L) goto L46;
        r4 = 0;
        r12 = r12 + 1;
    L46:
        if (r12 > (-1023)) goto L48;
        r12 = r12 - 1;
    L48:
        if (r12 >= (-1023)) goto L50;
        r12 = r12 + 1;
        r4 = r4 >>> 1;
        goto L48
    L50:
        double r5 = Double.longBitsToDouble(((((long) r12) + 1023) << 52) | r4);
        if (r9 == true) goto L53;
        return r5;
    L53:
        return -r5;
    L54:
        r11 = r11.multiply(2);
        r10 = r10 + 1;
        goto L27
    L21:
        r9 = false;
        r1 = this;
        goto L22
    }

    public double[] toSplitDouble() {
        double[] r0 = new double[2];
        r0[0] = Double.longBitsToDouble(Double.doubleToLongBits(toDouble()) & (-1073741824));
        r0[1] = subtract(newInstance(r0[0])).toDouble();
        return r0;
    }

    public String toString() {
        byte r0 = this.nans;
        if (r0 != 0) goto L5;
        int r1 = this.exp;
        if (r1 > this.mant.length) goto L21;
        if (r1 < (-1)) goto L21;
        return dfp2string();
    L21:
        return dfp2sci();
    L5:
        if (r0 == 1) goto L7;
        return NAN_STRING;
    L7:
        if (this.sign >= 0) goto L9;
        return NEG_INFINITY_STRING;
    L9:
        return POS_INFINITY_STRING;
    }

    protected Dfp trap(int r1, String r2, Dfp r3, Dfp r4, Dfp r5) {
        return r4;
    }

    protected Dfp trunc(DfpField.RoundingMode r10) {
        if (isNaN() == false) goto L7;
        return newInstance(this);
    L7:
        if (this.nans == 1) goto L9;
        int[] r0 = this.mant;
        if (r0[r0.length - 1] == 0) goto L13;
        int r2 = this.exp;
        if (r2 >= 0) goto L19;
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, TRUNC_TRAP, this, newInstance(getZero()));
    L19:
        if (r2 >= r0.length) goto L21;
        Dfp r1 = newInstance(this);
        int r5 = 0;
        boolean r6 = false;
    L24:
        if (r5 >= (this.mant.length - r1.exp)) goto L30;
        int[] r7 = r1.mant;
        if (r7[r5] == 0) goto L28;
        boolean r8 = true;
    L29:
        r6 = r6 | r8;
        r7[r5] = 0;
        r5 = r5 + 1;
        goto L24
    L28:
        r8 = false;
        goto L29
    L30:
        if (r6 == false) goto L53;
        int r11 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[r10.ordinal()];
        if (r11 == 1) goto L49;
        if (r11 == 2) goto L46;
        Dfp r12 = newInstance("0.5");
        Dfp r3 = subtract(r1);
        r3.sign = 1;
        if (r3.greaterThan(r12) == false) goto L39;
        r3 = newInstance(getOne());
        r3.sign = this.sign;
        r1 = r1.add(r3);
    L39:
        if (r3.equals(r12) == false) goto L51;
        int r13 = r1.exp;
        if (r13 <= 0) goto L51;
        if ((r1.mant[this.mant.length - r13] & 1) == 0) goto L51;
        Dfp r14 = newInstance(getOne());
        r14.sign = this.sign;
        r1 = r1.add(r14);
    L51:
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, TRUNC_TRAP, this, r1);
    L46:
        if (r1.sign != 1) goto L51;
        r1 = r1.add(getOne());
        goto L51
    L49:
        if (r1.sign != (-1)) goto L51;
        r1 = r1.add(newInstance(-1));
        goto L51
    L53:
        return r1;
    L21:
        return newInstance(this);
    L13:
        return newInstance(this);
    L9:
        return newInstance(this);
    }

    public boolean unequal(Dfp r4) {
        if (isNaN() == false) goto L5;
        return false;
    L5:
        if (r4.isNaN() == false) goto L7;
        return false;
    L7:
        if (this.field.getRadixDigits() == r4.field.getRadixDigits()) goto L10;
        return false;
    L10:
        if (greaterThan(r4) == false) goto L12;
    L13:
        return true;
    L12:
        if (lessThan(r4) == true) goto L13;
        return false;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: abs, reason: avoid collision after fix types in other method */
    public Dfp abs2() {
        Dfp r0 = newInstance(this);
        r0.sign = 1;
        return r0;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: acos, reason: avoid collision after fix types in other method */
    public Dfp acos2() {
        return DfpMath.acos(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: acosh, reason: avoid collision after fix types in other method */
    public Dfp acosh2() {
        return multiply(this).subtract(getOne()).sqrt2().add(this).log2();
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object add(Object r1) throws NullArgumentException {
        return add((Dfp) r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: asin, reason: avoid collision after fix types in other method */
    public Dfp asin2() {
        return DfpMath.asin(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: asinh, reason: avoid collision after fix types in other method */
    public Dfp asinh2() {
        return multiply(this).add(getOne()).sqrt2().add(this).log2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: atan, reason: avoid collision after fix types in other method */
    public Dfp atan3() {
        return DfpMath.atan(this);
    }

    /* JADX INFO: renamed from: atan2, reason: avoid collision after fix types in other method */
    public Dfp atan22(Dfp r3) throws DimensionMismatchException {
        Dfp r0 = r3.multiply(r3).add(multiply(this)).sqrt2();
        if (r3.sign >= 0) goto L5;
        Dfp r4 = getTwo().multiply(divide(r0.subtract(r3)).atan3());
        if (r4.sign > 0) goto L9;
        double r1 = -3.141592653589793d;
    L11:
        return newInstance(r1).subtract(r4);
    L9:
        r1 = 3.141592653589793d;
        goto L11
    L5:
        return getTwo().multiply(divide(r0.add(r3)).atan3());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: atanh, reason: avoid collision after fix types in other method */
    public Dfp atanh2() {
        return getOne().add(this).divide(getOne().subtract(this)).log2().divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: cbrt, reason: avoid collision after fix types in other method */
    public Dfp cbrt2() {
        return rootN2(3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: ceil, reason: avoid collision after fix types in other method */
    public Dfp ceil2() {
        return trunc(DfpField.RoundingMode.ROUND_CEIL);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp copySign(Dfp r1) {
        return copySign2(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: cos, reason: avoid collision after fix types in other method */
    public Dfp cos2() {
        return DfpMath.cos(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: cosh, reason: avoid collision after fix types in other method */
    public Dfp cosh2() {
        return DfpMath.exp(this).add(DfpMath.exp(negate())).divide(2);
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object divide(Object r1) throws NullArgumentException, MathArithmeticException {
        return divide((Dfp) r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: exp, reason: avoid collision after fix types in other method */
    public Dfp exp2() {
        return DfpMath.exp(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: expm1, reason: avoid collision after fix types in other method */
    public Dfp expm12() {
        return DfpMath.exp(this).subtract(getOne());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: floor, reason: avoid collision after fix types in other method */
    public Dfp floor2() {
        return trunc(DfpField.RoundingMode.ROUND_FLOOR);
    }

    @Override // org.apache.commons.math3.FieldElement
    public DfpField getField() {
        return this.field;
    }

    /* JADX INFO: renamed from: hypot, reason: avoid collision after fix types in other method */
    public Dfp hypot2(Dfp r2) {
        return multiply(this).add(r2.multiply(r2)).sqrt2();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(double r1, Dfp r3, double r4, Dfp r6, double r7, Dfp r9) {
        return linearCombination2(r1, r3, r4, r6, r7, r9);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: log, reason: avoid collision after fix types in other method */
    public Dfp log2() {
        return DfpMath.log(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: log1p, reason: avoid collision after fix types in other method */
    public Dfp log1p2() {
        return DfpMath.log(add(getOne()));
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object multiply(int r1) {
        return multiply(r1);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp negate() {
        Dfp r0 = newInstance(this);
        r0.sign = (byte) (-r0.sign);
        return r0;
    }

    public Dfp newInstance(byte r3) {
        return new Dfp(getField(), r3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp pow(int r1) {
        return pow2(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.FieldElement
    public Dfp reciprocal() {
        return this.field.getOne2().divide(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp remainder(Dfp r1) throws DimensionMismatchException {
        return remainder2(r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: rint, reason: avoid collision after fix types in other method */
    public Dfp rint2() {
        return trunc(DfpField.RoundingMode.ROUND_HALF_EVEN);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: rootN, reason: avoid collision after fix types in other method */
    public Dfp rootN2(int r3) {
        if (this.sign < 0) goto L6;
        return DfpMath.pow(this, getOne().divide(r3));
    L6:
        return DfpMath.pow(negate(), getOne().divide(r3)).negate();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: scalb, reason: avoid collision after fix types in other method */
    public Dfp scalb2(int r2) {
        return multiply(DfpMath.pow(getTwo(), r2));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: signum, reason: avoid collision after fix types in other method */
    public Dfp signum2() {
        if (isNaN() == false) goto L5;
    L13:
        return this;
    L5:
        if (isZero() == true) goto L13;
        if (this.sign <= 0) goto L10;
        int r0 = 1;
    L12:
        return newInstance(r0);
    L10:
        r0 = -1;
        goto L12
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: sin, reason: avoid collision after fix types in other method */
    public Dfp sin2() {
        return DfpMath.sin(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: sinh, reason: avoid collision after fix types in other method */
    public Dfp sinh2() {
        return DfpMath.exp(this).subtract(DfpMath.exp(negate())).divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: sqrt, reason: avoid collision after fix types in other method */
    public Dfp sqrt2() {
        byte r0 = this.nans;
        if (r0 != 0) goto L9;
        int[] r2 = this.mant;
        if (r2[r2.length - 1] != 0) goto L9;
        return newInstance(this);
    L9:
        if (r0 == 0) goto L22;
        if (r0 == 1) goto L12;
    L15:
        if (r0 == 3) goto L17;
        if (r0 != 2) goto L22;
        this.field.setIEEEFlagsBits(1);
        return dotrap(1, SQRT_TRAP, null, newInstance(this));
    L17:
        return newInstance(this);
    L12:
        if (this.sign != 1) goto L15;
        return newInstance(this);
    L22:
        if (this.sign != (-1)) goto L25;
        this.field.setIEEEFlagsBits(1);
        Dfp r1 = newInstance(this);
        r1.nans = 3;
        return dotrap(1, SQRT_TRAP, null, r1);
    L25:
        Dfp r3 = newInstance(this);
        int r4 = r3.exp;
        if (r4 < (-1)) goto L28;
        if (r4 > 1) goto L28;
    L29:
        int[] r5 = r3.mant;
        int[] r6 = this.mant;
        int r7 = r5[r6.length - 1] / 2000;
        if (r7 == 0) goto L36;
        if (r7 == 2) goto L35;
        if (r7 == 3) goto L34;
        r5[r6.length - 1] = 3000;
    L37:
        newInstance(r3);
        Dfp r8 = getZero();
        getZero();
        Dfp r9 = r3;
        Dfp r10 = r8;
    L39:
        if (r9.unequal(r10) == false) goto L51;
        Dfp r11 = newInstance(r9);
        r11.sign = -1;
        Dfp r12 = r11.add(divide(r9)).divide(2);
        Dfp r13 = r9.add(r12);
        if (r13.equals(r10) == true) goto L47;
        if (r12.mant[this.mant.length - 1] == 0) goto L47;
        r10 = r9;
        r9 = r13;
    L47:
        return r13;
    L51:
        return r9;
    L34:
        r5[r6.length - 1] = 2200;
        goto L37
    L35:
        r5[r6.length - 1] = 1500;
        goto L37
    L36:
        r5[r6.length - 1] = (r5[r6.length - 1] / 2) + 1;
    L28:
        r3.exp = this.exp / 2;
        goto L29
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object subtract(Object r1) throws NullArgumentException {
        return subtract((Dfp) r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: tan, reason: avoid collision after fix types in other method */
    public Dfp tan2() {
        return DfpMath.tan(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: tanh, reason: avoid collision after fix types in other method */
    public Dfp tanh2() {
        Dfp r0 = DfpMath.exp(this);
        Dfp r1 = DfpMath.exp(negate());
        return r0.subtract(r1).divide(r0.add(r1));
    }

    public Dfp add(Dfp r17) {
        if (this.field.getRadixDigits() == r17.field.getRadixDigits()) goto L7;
        this.field.setIEEEFlagsBits(1);
        Dfp r2 = newInstance(getZero());
        r2.nans = 3;
        return dotrap(1, ADD_TRAP, r17, r2);
    L7:
        if (this.nans != 0) goto L11;
        if (r17.nans != 0) goto L11;
    L36:
        Dfp r3 = newInstance(this);
        Dfp r4 = newInstance(r17);
        Dfp r5 = newInstance(getZero());
        byte r7 = r3.sign;
        byte r8 = r4.sign;
        r3.sign = 1;
        r4.sign = 1;
        if (compare(r3, r4) <= 0) goto L39;
        byte r9 = r7;
    L40:
        int[] r10 = r4.mant;
        int[] r11 = this.mant;
        if (r10[r11.length - 1] != 0) goto L44;
        r4.exp = r3.exp;
    L44:
        if (r3.mant[r11.length - 1] != 0) goto L46;
        r3.exp = r4.exp;
    L46:
        int r12 = r3.exp;
        int r13 = r4.exp;
        if (r12 >= r13) goto L49;
        int r14 = r3.align(r13);
        int r15 = 0;
    L50:
        if (r7 == r8) goto L54;
        if (r7 != r9) goto L53;
        r15 = r4.complement(r15);
        goto L54
    L53:
        r14 = r3.complement(r14);
    L54:
        int r16 = 0;
        int r18 = 0;
    L56:
        if (r16 >= this.mant.length) goto L58;
        int r19 = (r3.mant[r16] + r4.mant[r16]) + r18;
        r18 = r19 / 10000;
        r5.mant[r16] = r19 - (r18 * 10000);
        r16 = r16 + 1;
        goto L56
    L58:
        r5.exp = r3.exp;
        r5.sign = r9;
        if (r18 == 0) goto L64;
        if (r7 != r8) goto L64;
        int r6 = r5.mant[0];
        r5.shiftRight();
        r5.mant[this.mant.length - 1] = r18;
        int r20 = r5.round(r6);
        if (r20 == 0) goto L64;
        r5 = dotrap(r20, ADD_TRAP, r17, r5);
    L64:
        int r21 = 0;
    L65:
        int[] r22 = this.mant;
        if (r21 >= r22.length) goto L75;
        if (r5.mant[r22.length - 1] != 0) goto L75;
        r5.shiftLeft();
        if (r21 != 0) goto L73;
        r5.mant[0] = r14 + r15;
        r14 = 0;
        r15 = 0;
    L73:
        r21 = r21 + 1;
    L75:
        if (r5.mant[r22.length - 1] != 0) goto L79;
        r5.exp = 0;
        if (r7 == r8) goto L79;
        r5.sign = 1;
    L79:
        int r23 = r5.round(r14 + r15);
        if (r23 != 0) goto L82;
        return r5;
    L82:
        return dotrap(r23, ADD_TRAP, r17, r5);
    L49:
        r15 = r4.align(r12);
        r14 = 0;
        goto L50
    L39:
        r9 = r8;
    L11:
        if (isNaN() == false) goto L14;
        return this;
    L14:
        if (r17.isNaN() == false) goto L16;
        return r17;
    L16:
        byte r24 = this.nans;
        if (r24 == 1) goto L19;
    L21:
        byte r25 = r17.nans;
        if (r25 != 1) goto L25;
        if (r24 != 0) goto L25;
        return r17;
    L25:
        if (r25 != 1) goto L30;
        if (r24 != 1) goto L30;
        if (this.sign != r17.sign) goto L30;
        return r17;
    L30:
        if (r25 != 1) goto L36;
        if (r24 != 1) goto L36;
        if (this.sign == r17.sign) goto L36;
        this.field.setIEEEFlagsBits(1);
        Dfp r26 = newInstance(getZero());
        r26.nans = 3;
        return dotrap(1, ADD_TRAP, r17, r26);
    L19:
        if (r17.nans != 0) goto L21;
        return this;
    }

    /* JADX INFO: renamed from: copySign, reason: avoid collision after fix types in other method */
    public Dfp copySign2(Dfp r3) {
        byte r0 = this.sign;
        if (r0 >= 0) goto L5;
    L6:
        if (r0 >= 0) goto L11;
        if (r3.sign >= 0) goto L11;
    L9:
        return this;
    L11:
        return negate();
    L5:
        if (r3.sign >= 0) goto L9;
        goto L6
    }

    public Dfp divide(Dfp r19) {
        int r6 = 1;
        if (this.field.getRadixDigits() == r19.field.getRadixDigits()) goto L6;
        this.field.setIEEEFlagsBits(1);
        Dfp r2 = newInstance(getZero());
        r2.nans = 3;
        return dotrap(1, DIVIDE_TRAP, r19, r2);
    L6:
        Dfp r3 = newInstance(getZero());
        if (this.nans != 0) goto L11;
        if (r19.nans != 0) goto L11;
    L31:
        int[] r4 = r19.mant;
        int[] r5 = this.mant;
        int r7 = 2;
        if (r4[r5.length - 1] != 0) goto L35;
        this.field.setIEEEFlagsBits(2);
        Dfp r8 = newInstance(getZero());
        r8.sign = (byte) (this.sign * r19.sign);
        r8.nans = 1;
        return dotrap(2, DIVIDE_TRAP, r19, r8);
    L35:
        int[] r9 = new int[r5.length + 1];
        int[] r10 = new int[r5.length + 2];
        int[] r11 = new int[r5.length + 1];
        r9[r5.length] = 0;
        r10[r5.length] = 0;
        r10[r5.length + 1] = 0;
        r11[r5.length] = 0;
        int r12 = 0;
    L36:
        int[] r13 = this.mant;
        if (r12 >= r13.length) goto L39;
        r9[r12] = r13[r12];
        r10[r12] = 0;
        r11[r12] = 0;
        r12 = r12 + 1;
        goto L36
    L39:
        int r14 = r13.length + 1;
        int r15 = 0;
        int r16 = 0;
    L40:
        if (r14 < 0) goto L94;
        int[] r17 = this.mant;
        int r18 = (r9[r17.length] * 10000) + r9[r17.length - r6];
        int[] r110 = r19.mant;
        int r111 = r18 / (r110[r17.length - r6] + r6);
        int r112 = (r18 + r6) / r110[r17.length - r6];
        boolean r113 = false;
    L42:
        if (r113 == true) goto L77;
        r16 = (r111 + r112) / r7;
        int r114 = 0;
        int r115 = 0;
    L44:
        int[] r20 = this.mant;
        int r116 = r111;
        if (r114 >= (r20.length + r6)) goto L51;
        if (r114 >= r20.length) goto L49;
        int r21 = r19.mant[r114];
    L50:
        int r22 = (r21 * r16) + r115;
        int r117 = r22 / 10000;
        r11[r114] = r22 - (r117 * 10000);
        r114 = r114 + 1;
        r115 = r117;
        r111 = r116;
        r6 = 1;
        goto L44
    L49:
        r21 = 0;
        goto L50
    L51:
        int r23 = 0;
        int r24 = 1;
    L52:
        int[] r118 = this.mant;
        if (r23 >= (r118.length + 1)) goto L55;
        int r119 = ((9999 - r11[r23]) + r9[r23]) + r24;
        r24 = r119 / 10000;
        r11[r23] = r119 - (r24 * 10000);
        r23 = r23 + 1;
        goto L52
    L55:
        if (r24 == 0) goto L56;
        boolean r120 = r113;
        int r25 = ((r11[r118.length] * 10000) + r11[r118.length - 1]) / (r19.mant[r118.length - 1] + 1);
        r7 = 2;
        if (r25 < 2) goto L62;
        r111 = r16 + r25;
        r113 = r120;
        r6 = 1;
        goto L42
    L62:
        int r26 = r118.length - 1;
        boolean r121 = false;
    L63:
        if (r26 < 0) goto L72;
        int[] r122 = r19.mant;
        if (r122[r26] <= r11[r26]) goto L68;
        r121 = true;
    L68:
        if (r122[r26] < r11[r26]) goto L72;
        r26 = r26 - 1;
    L72:
        if (r11[this.mant.length] == 0) goto L74;
        r113 = false;
    L75:
        if (r113 == false) goto L76;
    L57:
        r111 = r116;
    L58:
        r6 = 1;
        r7 = 2;
        goto L42
    L76:
        r111 = r16 + 1;
        goto L58
    L74:
        r113 = r121;
        goto L75
    L56:
        r112 = r16 - 1;
        goto L57
    L77:
        r10[r14] = r16;
        if (r16 != 0) goto L80;
        if (r15 != 0) goto L80;
    L82:
        if (this.field.getRoundingMode() != DfpField.RoundingMode.ROUND_DOWN) goto L87;
        if (r15 == this.mant.length) goto L94;
    L87:
        if (r15 > this.mant.length) goto L94;
        r9[0] = 0;
        int r27 = 0;
    L91:
        if (r27 >= this.mant.length) goto L93;
        int r28 = r27 + 1;
        r9[r28] = r11[r27];
        r27 = r28;
        goto L91
    L93:
        r14 = r14 - 1;
        r6 = 1;
        r7 = 2;
    L80:
        r15 = r15 + 1;
    L94:
        int[] r29 = this.mant;
        int r30 = r29.length;
        int r31 = r29.length + 1;
    L95:
        if (r31 < 0) goto L100;
        if (r10[r31] != 0) goto L98;
        r31 = r31 - 1;
        goto L95
    L98:
        r30 = r31;
    L100:
        int r32 = 0;
    L101:
        int[] r33 = this.mant;
        if (r32 >= r33.length) goto L104;
        r3.mant[(r33.length - r32) - 1] = r10[r30 - r32];
        r32 = r32 + 1;
        goto L101
    L104:
        r3.exp = ((this.exp - r19.exp) + r30) - r33.length;
        if (this.sign != r19.sign) goto L107;
        int r34 = 1;
    L108:
        r3.sign = (byte) r34;
        if (r3.mant[r33.length - 1] != 0) goto L111;
        int r35 = 0;
        r3.exp = 0;
    L113:
        if (r30 <= (r33.length - 1)) goto L115;
        int r36 = r3.round(r10[r30 - r33.length]);
    L116:
        if (r36 != 0) goto L118;
        return r3;
    L118:
        return dotrap(r36, DIVIDE_TRAP, r19, r3);
    L115:
        r36 = r3.round(r35);
        goto L116
    L111:
        r35 = 0;
        goto L113
    L107:
        r34 = -1;
    L11:
        if (isNaN() == false) goto L14;
        return this;
    L14:
        if (r19.isNaN() == false) goto L16;
        return r19;
    L16:
        byte r37 = this.nans;
        if (r37 == 1) goto L19;
    L22:
        byte r38 = r19.nans;
        if (r38 != 1) goto L27;
        if (r37 != 0) goto L27;
        Dfp r39 = newInstance(getZero());
        r39.sign = (byte) (this.sign * r19.sign);
        return r39;
    L27:
        if (r38 != 1) goto L31;
        if (r37 != 1) goto L31;
        this.field.setIEEEFlagsBits(1);
        Dfp r40 = newInstance(getZero());
        r40.nans = 3;
        return dotrap(1, DIVIDE_TRAP, r19, r40);
    L19:
        if (r19.nans != 0) goto L22;
        Dfp r41 = newInstance(this);
        r41.sign = (byte) (this.sign * r19.sign);
        return r41;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(double r1, Dfp r3, double r4, Dfp r6, double r7, Dfp r9, double r10, Dfp r12) {
        return linearCombination2(r1, r3, r4, r6, r7, r9, r10, r12);
    }

    @Override // org.apache.commons.math3.FieldElement
    public /* bridge */ /* synthetic */ Object multiply(Object r1) throws NullArgumentException {
        return multiply((Dfp) r1);
    }

    public Dfp newInstance(int r3) {
        return new Dfp(getField(), r3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp pow(Dfp r1) throws DimensionMismatchException {
        return pow2(r1);
    }

    /* JADX INFO: renamed from: remainder, reason: avoid collision after fix types in other method */
    public Dfp remainder2(Dfp r3) {
        Dfp r4 = subtract(divide(r3).rint2().multiply(r3));
        if (r4.mant[this.mant.length - 1] != 0) goto L5;
        r4.sign = this.sign;
    L5:
        return r4;
    }

    public Dfp subtract(Dfp r1) {
        return add(r1.negate());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(Dfp r1, Dfp r2, Dfp r3, Dfp r4) {
        return linearCombination2(r1, r2, r3, r4);
    }

    public Dfp multiply(Dfp r12) {
        if (this.field.getRadixDigits() == r12.field.getRadixDigits()) goto L6;
        this.field.setIEEEFlagsBits(1);
        Dfp r0 = newInstance(getZero());
        r0.nans = 3;
        return dotrap(1, MULTIPLY_TRAP, r12, r0);
    L6:
        Dfp r1 = newInstance(getZero());
        if (this.nans != 0) goto L11;
        if (r12.nans != 0) goto L11;
    L45:
        int[] r2 = new int[this.mant.length * 2];
        int r5 = 0;
    L46:
        int[] r6 = this.mant;
        if (r5 >= r6.length) goto L53;
        int r7 = 0;
        int r8 = 0;
    L49:
        int[] r9 = this.mant;
        if (r7 >= r9.length) goto L52;
        int r10 = r5 + r7;
        int r11 = (r9[r5] * r12.mant[r7]) + (r2[r10] + r8);
        r8 = r11 / 10000;
        r2[r10] = r11 - (r8 * 10000);
        r7 = r7 + 1;
        goto L49
    L52:
        r2[r9.length + r5] = r8;
        r5 = r5 + 1;
        goto L46
    L53:
        int r13 = (r6.length * 2) - 1;
        int r14 = (r6.length * 2) - 1;
    L54:
        if (r14 < 0) goto L59;
        if (r2[r14] != 0) goto L57;
        r14 = r14 - 1;
        goto L54
    L57:
        r13 = r14;
    L59:
        int r15 = 0;
    L60:
        int[] r16 = this.mant;
        if (r15 >= r16.length) goto L63;
        r1.mant[(r16.length - r15) - 1] = r2[r13 - r15];
        r15 = r15 + 1;
        goto L60
    L63:
        r1.exp = (((this.exp + r12.exp) + r13) - (r16.length * 2)) + 1;
        if (this.sign != r12.sign) goto L66;
        int r17 = 1;
    L67:
        r1.sign = (byte) r17;
        if (r1.mant[r16.length - 1] != 0) goto L71;
        r1.exp = 0;
    L71:
        if (r13 <= (r16.length - 1)) goto L73;
        int r3 = r1.round(r2[r13 - r16.length]);
    L74:
        if (r3 != 0) goto L76;
        return r1;
    L76:
        return dotrap(r3, MULTIPLY_TRAP, r12, r1);
    L73:
        r3 = r1.round(0);
        goto L74
    L66:
        r17 = -1;
    L11:
        if (isNaN() == false) goto L14;
        return this;
    L14:
        if (r12.isNaN() == false) goto L16;
        return r12;
    L16:
        byte r4 = this.nans;
        if (r4 == 1) goto L19;
    L24:
        byte r18 = r12.nans;
        if (r18 != 1) goto L31;
        if (r4 != 0) goto L31;
        int[] r19 = this.mant;
        if (r19[r19.length - 1] == 0) goto L31;
        Dfp r20 = newInstance(r12);
        r20.sign = (byte) (this.sign * r12.sign);
        return r20;
    L31:
        if (r18 != 1) goto L35;
        if (r4 != 1) goto L35;
        Dfp r21 = newInstance(this);
        r21.sign = (byte) (this.sign * r12.sign);
        return r21;
    L35:
        if (r18 != 1) goto L39;
        if (r4 != 0) goto L39;
        int[] r22 = this.mant;
        if (r22[r22.length - 1] != 0) goto L39;
    L43:
        this.field.setIEEEFlagsBits(1);
        Dfp r23 = newInstance(getZero());
        r23.nans = 3;
        return dotrap(1, MULTIPLY_TRAP, r12, r23);
    L39:
        if (r4 != 1) goto L45;
        if (r18 != 0) goto L45;
        if (r12.mant[this.mant.length - 1] != 0) goto L45;
    L19:
        if (r12.nans != 0) goto L24;
        if (r12.mant[this.mant.length - 1] == 0) goto L24;
        Dfp r24 = newInstance(this);
        r24.sign = (byte) (this.sign * r12.sign);
        return r24;
    }

    public Dfp newInstance(long r3) {
        return new Dfp(getField(), r3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: pow, reason: avoid collision after fix types in other method */
    public Dfp pow2(double r1) {
        return DfpMath.pow(this, newInstance(r1));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: subtract, reason: avoid collision after fix types in other method */
    public Dfp subtract2(double r1) {
        return subtract(newInstance(r1));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: copySign, reason: avoid collision after fix types in other method */
    public Dfp copySign2(double r5) {
        long r6 = Double.doubleToLongBits(r5);
        byte r0 = this.sign;
        if (r0 >= 0) goto L5;
    L6:
        if (r0 >= 0) goto L11;
        if (r6 >= 0) goto L11;
    L9:
        return this;
    L11:
        return negate();
    L5:
        if (r6 >= 0) goto L9;
        goto L6
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(Dfp r1, Dfp r2, Dfp r3, Dfp r4, Dfp r5, Dfp r6) {
        return linearCombination2(r1, r2, r3, r4, r5, r6);
    }

    public Dfp newInstance(double r3) {
        return new Dfp(getField(), r3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: pow, reason: avoid collision after fix types in other method */
    public Dfp pow2(int r1) {
        return DfpMath.pow(this, r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(Dfp r1, Dfp r2, Dfp r3, Dfp r4, Dfp r5, Dfp r6, Dfp r7, Dfp r8) {
        return linearCombination2(r1, r2, r3, r4, r5, r6, r7, r8);
    }

    public Dfp newInstance(Dfp r4) {
        if (this.field.getRadixDigits() == r4.field.getRadixDigits()) goto L7;
        this.field.setIEEEFlagsBits(1);
        Dfp r0 = newInstance(getZero());
        r0.nans = 3;
        return dotrap(1, NEW_INSTANCE_TRAP, r4, r0);
    L7:
        return new Dfp(r4);
    }

    /* JADX INFO: renamed from: pow, reason: avoid collision after fix types in other method */
    public Dfp pow2(Dfp r1) {
        return DfpMath.pow(this, r1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: remainder, reason: avoid collision after fix types in other method */
    public Dfp remainder2(double r1) {
        return remainder2(newInstance(r1));
    }

    protected Dfp(DfpField r3, byte r4) {
        this(r3, r4);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(double[] r1, Dfp[] r2) throws DimensionMismatchException {
        return linearCombination2(r1, r2);
    }

    protected Dfp(DfpField r3, int r4) {
        this(r3, r4);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public /* bridge */ /* synthetic */ Dfp linearCombination(Dfp[] r1, Dfp[] r2) throws DimensionMismatchException {
        return linearCombination2(r1, r2);
    }

    protected Dfp(DfpField r11, long r12) {
        this.mant = new int[r11.getRadixDigits()];
        int r0 = 0;
        this.nans = 0;
        this.field = r11;
        if (r12 != Long.MIN_VALUE) goto L5;
        r12 = r12 + 1;
        boolean r1 = true;
    L7:
        if (r12 >= 0) goto L9;
        this.sign = -1;
        r12 = -r12;
    L10:
        this.exp = 0;
    L12:
        if (r12 == 0) goto L14;
        int[] r4 = this.mant;
        int r5 = r4.length;
        int r6 = this.exp;
        System.arraycopy(r4, r5 - r6, r4, (r4.length - 1) - r6, r6);
        int[] r7 = this.mant;
        r7[r7.length - 1] = (int) (r12 % 10000);
        r12 = r12 / 10000;
        this.exp++;
        goto L12
    L14:
        if (r1 == false) goto L21;
    L15:
        int[] r13 = this.mant;
        if (r0 >= (r13.length - 1)) goto L26;
        if (r13[r0] != 0) goto L19;
        r0 = r0 + 1;
        goto L15
    L19:
        r13[r0] = r13[r0] + 1;
        return;
    L26:
        return;
    L21:
        return;
    L9:
        this.sign = 1;
        goto L10
    L5:
        r1 = false;
        goto L7
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(Dfp[] r5, Dfp[] r6) throws DimensionMismatchException {
        if (r5.length != r6.length) goto L10;
        Dfp r0 = getZero();
        int r1 = 0;
    L6:
        if (r1 >= r5.length) goto L8;
        r0 = r0.add(r5[r1].multiply(r6[r1]));
        r1 = r1 + 1;
        goto L6
    L8:
        return r0;
    L10:
        throw new DimensionMismatchException(r5.length, r6.length);
    }

    public Dfp newInstance(String r3) {
        return new Dfp(this.field, r3);
    }

    public Dfp newInstance(byte r2, byte r3) {
        return this.field.newDfp(r2, r3);
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(double[] r6, Dfp[] r7) throws DimensionMismatchException {
        if (r6.length != r7.length) goto L10;
        Dfp r0 = getZero();
        int r1 = 0;
    L6:
        if (r1 >= r6.length) goto L8;
        r0 = r0.add(r7[r1].multiply2(r6[r1]));
        r1 = r1 + 1;
        goto L6
    L8:
        return r0;
    L10:
        throw new DimensionMismatchException(r6.length, r7.length);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public long round() {
        return FastMath.round(toDouble());
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(Dfp r1, Dfp r2, Dfp r3, Dfp r4) {
        return r1.multiply(r2).add(r3.multiply(r4));
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(double r1, Dfp r3, double r4, Dfp r6) {
        return r3.multiply2(r1).add(r6.multiply2(r4));
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(Dfp r1, Dfp r2, Dfp r3, Dfp r4, Dfp r5, Dfp r6) {
        return r1.multiply(r2).add(r3.multiply(r4)).add(r5.multiply(r6));
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(double r1, Dfp r3, double r4, Dfp r6, double r7, Dfp r9) {
        return r3.multiply2(r1).add(r6.multiply2(r4)).add(r9.multiply2(r7));
    }

    protected Dfp(DfpField r23, double r24) {
        this.mant = new int[r23.getRadixDigits()];
        this.sign = 1;
        this.exp = 0;
        this.nans = 0;
        this.field = r23;
        long r4 = Double.doubleToLongBits(r24);
        long r8 = r4 & 4503599627370495L;
        int r11 = ((int) ((9218868437227405312L & r4) >> 52)) - 1023;
        if (r11 != (-1023)) goto L16;
        if (r24 == 0.0d) goto L7;
        r11 = r11 + 1;
    L12:
        if ((r8 & 4503599627370496L) != 0) goto L14;
        r11 = r11 - 1;
        r8 = r8 << 1;
        goto L12
    L14:
        r8 = r8 & 4503599627370495L;
        goto L16
    L7:
        if ((r4 & Long.MIN_VALUE) == 0) goto L31;
        this.sign = -1;
        return;
    L31:
        return;
    L16:
        if (r11 == 1024) goto L18;
        Dfp r1 = new Dfp(r23, r8).divide(new Dfp(r23, 4503599627370496L)).add(r23.getOne2()).multiply(DfpMath.pow(r23.getTwo(), r11));
        if ((r4 & Long.MIN_VALUE) == 0) goto L28;
        r1 = r1.negate();
    L28:
        int[] r2 = r1.mant;
        int[] r3 = this.mant;
        System.arraycopy(r2, 0, r3, 0, r3.length);
        this.sign = r1.sign;
        this.exp = r1.exp;
        this.nans = r1.nans;
        return;
    L18:
        if (r24 == r24) goto L21;
        this.sign = 1;
        this.nans = 3;
        return;
    L21:
        if (r24 >= 0.0d) goto L23;
        this.sign = -1;
        this.nans = 1;
        return;
    L23:
        this.sign = 1;
        this.nans = 1;
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(Dfp r1, Dfp r2, Dfp r3, Dfp r4, Dfp r5, Dfp r6, Dfp r7, Dfp r8) {
        return r1.multiply(r2).add(r3.multiply(r4)).add(r5.multiply(r6)).add(r7.multiply(r8));
    }

    /* JADX INFO: renamed from: linearCombination, reason: avoid collision after fix types in other method */
    public Dfp linearCombination2(double r1, Dfp r3, double r4, Dfp r6, double r7, Dfp r9, double r10, Dfp r12) {
        return r3.multiply2(r1).add(r6.multiply2(r4)).add(r9.multiply2(r7)).add(r12.multiply2(r10));
    }

    public Dfp(Dfp r2) {
        this.mant = (int[]) r2.mant.clone();
        this.sign = r2.sign;
        this.exp = r2.exp;
        this.nans = r2.nans;
        this.field = r2.field;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp multiply(int r2) {
        if (r2 < 0) goto L8;
        if (r2 >= 10000) goto L8;
        return multiplyFast(r2);
    L8:
        return multiply(newInstance(r2));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: multiply, reason: avoid collision after fix types in other method */
    public Dfp multiply2(double r1) {
        return multiply(newInstance(r1));
    }

    protected Dfp(DfpField r17, String r18) {
        String r1 = r18;
        this.mant = new int[r17.getRadixDigits()];
        int r2 = 1;
        this.sign = 1;
        this.exp = 0;
        this.nans = 0;
        this.field = r17;
        int r4 = (getRadixDigits() * 4) + 8;
        char[] r6 = new char[r4];
        if (r1.equals(POS_INFINITY_STRING) == false) goto L7;
        this.sign = 1;
        this.nans = 1;
        return;
    L7:
        if (r1.equals(NEG_INFINITY_STRING) == false) goto L11;
        this.sign = -1;
        this.nans = 1;
        return;
    L11:
        if (r1.equals(NAN_STRING) == false) goto L14;
        this.sign = 1;
        this.nans = 3;
        return;
    L14:
        int r7 = r1.indexOf("e");
        if (r7 != (-1)) goto L18;
        r7 = r1.indexOf(ExifInterface.LONGITUDE_EAST);
    L18:
        if (r7 == (-1)) goto L34;
        String r12 = r1.substring(0, r7);
        String r3 = r1.substring(r7 + 1);
        int r8 = 0;
        boolean r13 = false;
        int r14 = 0;
    L21:
        if (r8 >= r3.length()) goto L31;
        if (r3.charAt(r8) != '-') goto L26;
        r13 = true;
    L30:
        r8 = r8 + 1;
        goto L21
    L26:
        if (r3.charAt(r8) < '0') goto L30;
        if (r3.charAt(r8) > '9') goto L30;
        r14 = ((r14 * 10) + r3.charAt(r8)) - 48;
        goto L30
    L31:
        if (r13 == false) goto L33;
        r14 = -r14;
    L33:
        r1 = r12;
    L36:
        if (r1.indexOf("-") == (-1)) goto L38;
        this.sign = -1;
    L38:
        int r5 = 0;
        boolean r9 = false;
        int r15 = 0;
    L40:
        if (r1.charAt(r5) >= '1') goto L42;
    L44:
        if (r9 == false) goto L49;
        if (r1.charAt(r5) != '0') goto L49;
        r15 = r15 - 1;
    L49:
        if (r1.charAt(r5) != '.') goto L51;
        r9 = true;
    L51:
        r5 = r5 + 1;
        if (r5 != r1.length()) goto L40;
    L53:
        r6[0] = '0';
        r6[1] = '0';
        r6[2] = '0';
        r6[3] = '0';
        int r10 = r15;
        int r16 = 0;
        int r19 = 4;
    L55:
        if (r5 == r1.length()) goto L56;
        int r11 = 4;
        if (r19 == (((this.mant.length * 4) + 4) + r2)) goto L59;
        if (r1.charAt(r5) == '.') goto L95;
        if (r1.charAt(r5) >= '0') goto L99;
    L102:
        r5 = r5 + 1;
    L103:
        r2 = 1;
        goto L55
    L99:
        if (r1.charAt(r5) > '9') goto L102;
        r6[r19] = r1.charAt(r5);
        r19 = r19 + 1;
        r5 = r5 + 1;
        r16 = r16 + 1;
        goto L103
    L95:
        r5 = r5 + 1;
        r10 = r16;
        r2 = 1;
        r9 = true;
    L59:
        if (r9 == false) goto L68;
        if (r19 == r11) goto L68;
    L62:
        r19 = r19 - 1;
        if (r19 == r11) goto L68;
        if (r6[r19] != '0') goto L68;
        r16 = r16 - 1;
        r11 = 4;
    L68:
        if (r9 == false) goto L71;
        if (r16 != 0) goto L71;
        r10 = 0;
    L71:
        int r20 = 4;
        if (r9 == true) goto L74;
        r10 = r19 - 4;
    L74:
        int r110 = (r16 - r2) + 4;
    L75:
        if (r110 <= r20) goto L80;
        if (r6[r110] != '0') goto L80;
        r110 = r110 - 1;
        r20 = 4;
    L80:
        int r21 = 4;
        int r22 = ((400 - r10) - (r14 % 4)) % 4;
        int r23 = 4 - r22;
        int r24 = r10 + r22;
    L81:
        int r25 = r110 - r23;
        int[] r26 = this.mant;
        if (r25 >= (r26.length * 4)) goto L86;
        int r27 = 0;
    L84:
        if (r27 >= r21) goto L81;
        r110 = r110 + 1;
        r6[r110] = '0';
        r27 = r27 + 1;
        r21 = 4;
        goto L84
    L86:
        int r28 = r26.length - r2;
    L87:
        if (r28 < 0) goto L89;
        this.mant[r28] = ((((r6[r23] - '0') * 1000) + ((r6[r23 + 1] - '0') * 100)) + ((r6[r23 + 2] - '0') * 10)) + (r6[r23 + 3] - '0');
        r23 = r23 + 4;
        r28 = r28 - 1;
        goto L87
    L89:
        this.exp = (r24 + r14) / 4;
        if (r23 >= r4) goto L128;
        round((r6[r23] - '0') * 1000);
        return;
    L128:
        return;
    L56:
        r11 = 4;
        goto L59
    L42:
        if (r1.charAt(r5) > '9') goto L44;
    L34:
        r14 = 0;
        goto L36
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: add, reason: avoid collision after fix types in other method */
    public Dfp add2(double r1) {
        return add(newInstance(r1));
    }

    public Dfp divide(int r11) {
        if (this.nans == 0) goto L12;
        if (isNaN() == false) goto L8;
        return this;
    L8:
        if (this.nans != 1) goto L12;
        return newInstance(this);
    L12:
        if (r11 != 0) goto L15;
        this.field.setIEEEFlagsBits(2);
        Dfp r12 = newInstance(getZero());
        r12.sign = this.sign;
        r12.nans = 1;
        return dotrap(2, DIVIDE_TRAP, getZero(), r12);
    L15:
        if (r11 >= 0) goto L17;
    L29:
        this.field.setIEEEFlagsBits(1);
        Dfp r13 = newInstance(getZero());
        r13.nans = 3;
        return dotrap(1, DIVIDE_TRAP, r13, r13);
    L17:
        if (r11 >= 10000) goto L29;
        Dfp r3 = newInstance(this);
        int r4 = this.mant.length - 1;
        int r6 = 0;
    L20:
        if (r4 < 0) goto L23;
        int[] r7 = r3.mant;
        int r8 = (r6 * 10000) + r7[r4];
        int r9 = r8 / r11;
        r6 = r8 - (r9 * r11);
        r7[r4] = r9;
        r4 = r4 - 1;
        goto L20
    L23:
        if (r3.mant[this.mant.length - 1] != 0) goto L25;
        r3.shiftLeft();
        int r10 = r6 * 10000;
        int r1 = r10 / r11;
        r6 = r10 - (r1 * r11);
        r3.mant[0] = r1;
    L25:
        int r14 = r3.round((r6 * 10000) / r11);
        if (r14 != 0) goto L28;
        return r3;
    L28:
        return dotrap(r14, DIVIDE_TRAP, r3, r3);
    }

    protected Dfp(DfpField r1, byte r2, byte r3) {
        this.field = r1;
        this.mant = new int[r1.getRadixDigits()];
        this.sign = r2;
        this.exp = 0;
        this.nans = r3;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    /* JADX INFO: renamed from: divide, reason: avoid collision after fix types in other method */
    public Dfp divide2(double r1) {
        return divide(newInstance(r1));
    }
}
