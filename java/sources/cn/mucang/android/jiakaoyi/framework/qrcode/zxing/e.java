package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import com.google.android.exoplayer2.C;
import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f3494a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3495a;

        static {
            int[] iArr = new int[Mode.values().length];
            f3495a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3495a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3495a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3495a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static void a(String str, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar, String str2) throws WriterException {
        try {
            for (byte b : str.getBytes(str2)) {
                aVar.d(b, 8);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new WriterException(e2);
        }
    }

    static void b(CharSequence charSequence, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) throws WriterException {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iP = p(charSequence.charAt(i));
            if (iP == -1) {
                throw new WriterException();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int iP2 = p(charSequence.charAt(i2));
                if (iP2 == -1) {
                    throw new WriterException();
                }
                aVar.d((iP * 45) + iP2, 11);
                i += 2;
            } else {
                aVar.d(iP, 6);
                i = i2;
            }
        }
    }

    static void c(String str, Mode mode, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar, String str2) throws WriterException {
        int i = a.f3495a[mode.ordinal()];
        if (i == 1) {
            h(str, aVar);
            return;
        }
        if (i == 2) {
            b(str, aVar);
            return;
        }
        if (i == 3) {
            a(str, aVar, str2);
        } else {
            if (i == 4) {
                e(str, aVar);
                return;
            }
            throw new WriterException("Invalid mode: " + mode);
        }
    }

    private static void d(CharacterSetECI characterSetECI, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) {
        aVar.d(Mode.ECI.getBits(), 4);
        aVar.d(characterSetECI.getValue(), 8);
    }

    static void e(String str, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) throws WriterException {
        int i;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i2 = 0; i2 < length; i2 += 2) {
                int i3 = ((bytes[i2] & UnsignedBytes.MAX_VALUE) << 8) | (bytes[i2 + 1] & UnsignedBytes.MAX_VALUE);
                int i4 = 33088;
                if (i3 >= 33088 && i3 <= 40956) {
                    i = i3 - i4;
                } else if (i3 < 57408 || i3 > 60351) {
                    i = -1;
                } else {
                    i4 = 49472;
                    i = i3 - i4;
                }
                if (i == -1) {
                    throw new WriterException("Invalid byte sequence");
                }
                aVar.d(((i >> 8) * 192) + (i & 255), 13);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new WriterException(e2);
        }
    }

    static void f(int i, m mVar, Mode mode, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(mVar);
        int i2 = 1 << characterCountBits;
        if (i < i2) {
            aVar.d(i, characterCountBits);
            return;
        }
        throw new WriterException(i + " is bigger than " + (i2 - 1));
    }

    static void g(Mode mode, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) {
        aVar.d(mode.getBits(), 4);
    }

    static void h(CharSequence charSequence, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                aVar.d((iCharAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    aVar.d((iCharAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    aVar.d(iCharAt, 4);
                }
            }
        }
    }

    private static int i(Mode mode, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar2, m mVar) {
        return aVar.h() + mode.getCharacterCountBits(mVar) + aVar2.h();
    }

    private static int j(d dVar) {
        return h.a(dVar) + h.c(dVar) + h.d(dVar) + h.e(dVar);
    }

    private static int k(cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar, ErrorCorrectionLevel errorCorrectionLevel, m mVar, d dVar) throws WriterException {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            i.a(aVar, errorCorrectionLevel, mVar, i3, dVar);
            int iJ = j(dVar);
            if (iJ < i) {
                i2 = i3;
                i = iJ;
            }
        }
        return i2;
    }

    private static Mode l(String str, String str2) {
        if ("Shift_JIS".equals(str2) && s(str)) {
            return Mode.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z2 = true;
            } else {
                if (p(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z = true;
            }
        }
        if (z) {
            return Mode.ALPHANUMERIC;
        }
        return z2 ? Mode.NUMERIC : Mode.BYTE;
    }

    private static m m(int i, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            m mVarE = m.e(i2);
            if (v(i, mVarE, errorCorrectionLevel)) {
                return mVarE;
            }
        }
        throw new WriterException("Data too big");
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static j n(String str, ErrorCorrectionLevel errorCorrectionLevel, Map<EncodeHintType, ?> map) throws WriterException {
        String string;
        m mVarT;
        CharacterSetECI characterSetECIByName;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType)) {
                string = map.get(encodeHintType).toString();
            } else {
                string = C.ISO88591_NAME;
            }
        } else {
            string = C.ISO88591_NAME;
        }
        Mode modeL = l(str, string);
        cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar = new cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a();
        Mode mode = Mode.BYTE;
        if (modeL == mode && !C.ISO88591_NAME.equals(string) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(string)) != null) {
            d(characterSetECIByName, aVar);
        }
        g(modeL, aVar);
        cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar2 = new cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a();
        c(str, modeL, aVar2, string);
        if (map != null) {
            EncodeHintType encodeHintType2 = EncodeHintType.QR_VERSION;
            if (map.containsKey(encodeHintType2)) {
                mVarT = m.e(Integer.parseInt(map.get(encodeHintType2).toString()));
                if (!v(i(modeL, aVar, aVar2, mVarT), mVarT, errorCorrectionLevel)) {
                    throw new WriterException("Data too big for requested version");
                }
            } else {
                mVarT = t(errorCorrectionLevel, modeL, aVar, aVar2);
            }
        } else {
            mVarT = t(errorCorrectionLevel, modeL, aVar, aVar2);
        }
        cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar3 = new cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a();
        aVar3.c(aVar);
        f(modeL == mode ? aVar2.i() : str.length(), mVarT, modeL, aVar3);
        aVar3.c(aVar2);
        m.b bVarC = mVarT.c(errorCorrectionLevel);
        int iD = mVarT.d() - bVarC.d();
        u(iD, aVar3);
        cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVarR = r(aVar3, mVarT.d(), iD, bVarC.c());
        j jVar = new j();
        jVar.c(errorCorrectionLevel);
        jVar.f(modeL);
        jVar.g(mVarT);
        int iB = mVarT.b();
        d dVar = new d(iB, iB);
        int iK = k(aVarR, errorCorrectionLevel, mVarT, dVar);
        jVar.d(iK);
        i.a(aVarR, errorCorrectionLevel, mVarT, iK, dVar);
        jVar.e(dVar);
        return jVar;
    }

    static byte[] o(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & UnsignedBytes.MAX_VALUE;
        }
        new l(f.f3497h).b(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    static int p(int i) {
        int[] iArr = f3494a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    static void q(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws WriterException {
        if (i4 >= i3) {
            throw new WriterException("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new WriterException("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new WriterException("RS blocks mismatch");
        }
        if (i != ((i9 + i11) * i6) + ((i10 + i12) * i5)) {
            throw new WriterException("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    static cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a r(cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar, int i, int i2, int i3) throws WriterException {
        if (aVar.i() != i2) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            q(i, i2, i3, i5, iArr, iArr2);
            int i6 = iArr[0];
            byte[] bArr = new byte[i6];
            aVar.k(i4 * 8, bArr, 0, i6);
            byte[] bArrO = o(bArr, iArr2[0]);
            arrayList.add(new c(bArr, bArrO));
            iMax = Math.max(iMax, i6);
            iMax2 = Math.max(iMax2, bArrO.length);
            i4 += iArr[0];
        }
        if (i2 != i4) {
            throw new WriterException("Data bytes does not match offset");
        }
        cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar2 = new cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a();
        for (int i7 = 0; i7 < iMax; i7++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrA = ((c) it.next()).a();
                if (i7 < bArrA.length) {
                    aVar2.d(bArrA[i7], 8);
                }
            }
        }
        for (int i8 = 0; i8 < iMax2; i8++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrB = ((c) it2.next()).b();
                if (i8 < bArrB.length) {
                    aVar2.d(bArrB[i8], 8);
                }
            }
        }
        if (i == aVar2.i()) {
            return aVar2;
        }
        throw new WriterException("Interleaving error: " + i + " and " + aVar2.i() + " differ.");
    }

    private static boolean s(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & UnsignedBytes.MAX_VALUE;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    private static m t(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar2) throws WriterException {
        return m(i(mode, aVar, aVar2, m(i(mode, aVar, aVar2, m.e(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    static void u(int i, cn.mucang.android.jiakaoyi.framework.qrcode.zxing.a aVar) throws WriterException {
        int i2 = i * 8;
        if (aVar.h() > i2) {
            throw new WriterException("data bits cannot fit in the QR Code" + aVar.h() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && aVar.h() < i2; i3++) {
            aVar.b(false);
        }
        int iH = aVar.h() & 7;
        if (iH > 0) {
            while (iH < 8) {
                aVar.b(false);
                iH++;
            }
        }
        int i4 = i - aVar.i();
        for (int i5 = 0; i5 < i4; i5++) {
            aVar.d((i5 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar.h() != i2) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }

    private static boolean v(int i, m mVar, ErrorCorrectionLevel errorCorrectionLevel) {
        return mVar.d() - mVar.c(errorCorrectionLevel).d() >= (i + 7) / 8;
    }
}
