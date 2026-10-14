package androidx.core.e;

import android.text.SpannableStringBuilder;
import com.google.common.base.Ascii;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final d f1088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f1089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f1090f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final a f1091g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final a f1092h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f1093a;
    private final int b;
    private final d c;

    /* JADX INFO: renamed from: androidx.core.e.a$a, reason: collision with other inner class name */
    public static final class C0030a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1094a;
        private int b;
        private d c;

        public C0030a() {
            c(a.e(Locale.getDefault()));
        }

        private static a b(boolean z) {
            return z ? a.f1092h : a.f1091g;
        }

        private void c(boolean z) {
            this.f1094a = z;
            this.c = a.f1088d;
            this.b = 2;
        }

        public a a() {
            return (this.b == 2 && this.c == a.f1088d) ? b(this.f1094a) : new a(this.f1094a, this.b, this.c);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f1095f = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CharSequence f1096a;
        private final boolean b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1097d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private char f1098e;

        static {
            for (int i = 0; i < 1792; i++) {
                f1095f[i] = Character.getDirectionality(i);
            }
        }

        b(CharSequence charSequence, boolean z) {
            this.f1096a = charSequence;
            this.b = z;
            this.c = charSequence.length();
        }

        private static byte c(char c) {
            return c < 1792 ? f1095f[c] : Character.getDirectionality(c);
        }

        private byte f() {
            char cCharAt;
            int i = this.f1097d;
            do {
                int i2 = this.f1097d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1096a;
                int i3 = i2 - 1;
                this.f1097d = i3;
                cCharAt = charSequence.charAt(i3);
                this.f1098e = cCharAt;
                if (cCharAt == '&') {
                    return Ascii.FF;
                }
            } while (cCharAt != ';');
            this.f1097d = i;
            this.f1098e = ';';
            return Ascii.CR;
        }

        private byte g() {
            char cCharAt;
            do {
                int i = this.f1097d;
                if (i >= this.c) {
                    return Ascii.FF;
                }
                CharSequence charSequence = this.f1096a;
                this.f1097d = i + 1;
                cCharAt = charSequence.charAt(i);
                this.f1098e = cCharAt;
            } while (cCharAt != ';');
            return Ascii.FF;
        }

        private byte h() {
            char cCharAt;
            int i = this.f1097d;
            while (true) {
                int i2 = this.f1097d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1096a;
                int i3 = i2 - 1;
                this.f1097d = i3;
                char cCharAt2 = charSequence.charAt(i3);
                this.f1098e = cCharAt2;
                if (cCharAt2 == '<') {
                    return Ascii.FF;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i4 = this.f1097d;
                        if (i4 <= 0) {
                            break;
                        }
                        CharSequence charSequence2 = this.f1096a;
                        int i5 = i4 - 1;
                        this.f1097d = i5;
                        cCharAt = charSequence2.charAt(i5);
                        this.f1098e = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
            this.f1097d = i;
            this.f1098e = '>';
            return Ascii.CR;
        }

        private byte i() {
            char cCharAt;
            int i = this.f1097d;
            while (true) {
                int i2 = this.f1097d;
                if (i2 >= this.c) {
                    this.f1097d = i;
                    this.f1098e = '<';
                    return Ascii.CR;
                }
                CharSequence charSequence = this.f1096a;
                this.f1097d = i2 + 1;
                char cCharAt2 = charSequence.charAt(i2);
                this.f1098e = cCharAt2;
                if (cCharAt2 == '>') {
                    return Ascii.FF;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i3 = this.f1097d;
                        if (i3 >= this.c) {
                            break;
                        }
                        CharSequence charSequence2 = this.f1096a;
                        this.f1097d = i3 + 1;
                        cCharAt = charSequence2.charAt(i3);
                        this.f1098e = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        byte a() {
            char cCharAt = this.f1096a.charAt(this.f1097d - 1);
            this.f1098e = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f1096a, this.f1097d);
                this.f1097d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f1097d--;
            byte bC = c(this.f1098e);
            if (!this.b) {
                return bC;
            }
            char c = this.f1098e;
            if (c == '>') {
                return h();
            }
            return c == ';' ? f() : bC;
        }

        byte b() {
            char cCharAt = this.f1096a.charAt(this.f1097d);
            this.f1098e = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.f1096a, this.f1097d);
                this.f1097d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f1097d++;
            byte bC = c(this.f1098e);
            if (!this.b) {
                return bC;
            }
            char c = this.f1098e;
            if (c == '<') {
                return i();
            }
            return c == '&' ? g() : bC;
        }

        int d() {
            this.f1097d = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f1097d < this.c && i == 0) {
                byte b = b();
                if (b != 0) {
                    if (b == 1 || b == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (b != 9) {
                        switch (b) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                    }
                } else if (i3 == 0) {
                    return -1;
                }
                i = i3;
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.f1097d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i == i3) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i == i3) {
                            return 1;
                        }
                        break;
                    case 18:
                        i3++;
                        continue;
                    default:
                        continue;
                }
                i3--;
            }
            return 0;
        }

        int e() {
            this.f1097d = this.c;
            int i = 0;
            int i2 = 0;
            while (this.f1097d > 0) {
                byte bA = a();
                if (bA == 0) {
                    if (i == 0) {
                        return -1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 == 0) {
                                i2 = i;
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    static {
        d dVar = e.c;
        f1088d = dVar;
        f1089e = Character.toString((char) 8206);
        f1090f = Character.toString((char) 8207);
        f1091g = new a(false, 2, dVar);
        f1092h = new a(true, 2, dVar);
    }

    a(boolean z, int i, d dVar) {
        this.f1093a = z;
        this.b = i;
        this.c = dVar;
    }

    private static int a(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).e();
    }

    public static a c() {
        return new C0030a().a();
    }

    static boolean e(Locale locale) {
        return f.b(locale) == 1;
    }

    private String f(CharSequence charSequence, d dVar) {
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        if (!this.f1093a && (zA || b(charSequence) == 1)) {
            return f1089e;
        }
        if (this.f1093a) {
            return (!zA || b(charSequence) == -1) ? f1090f : "";
        }
        return "";
    }

    private String g(CharSequence charSequence, d dVar) {
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        if (!this.f1093a && (zA || a(charSequence) == 1)) {
            return f1089e;
        }
        if (this.f1093a) {
            return (!zA || a(charSequence) == -1) ? f1090f : "";
        }
        return "";
    }

    public boolean d() {
        return (this.b & 2) != 0;
    }

    public CharSequence h(CharSequence charSequence) {
        return i(charSequence, this.c, true);
    }

    public CharSequence i(CharSequence charSequence, d dVar, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z) {
            spannableStringBuilder.append((CharSequence) g(charSequence, zA ? e.b : e.f1105a));
        }
        if (zA != this.f1093a) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) f(charSequence, zA ? e.b : e.f1105a));
        }
        return spannableStringBuilder;
    }

    public String j(String str) {
        return k(str, this.c, true);
    }

    public String k(String str, d dVar, boolean z) {
        if (str == null) {
            return null;
        }
        return i(str, dVar, z).toString();
    }
}
