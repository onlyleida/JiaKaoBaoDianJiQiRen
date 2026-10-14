package androidx.core.e;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public class c implements Spannable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Spannable f1100a;
    private final a b;
    private final PrecomputedText c;

    public a a() {
        return this.b;
    }

    public PrecomputedText b() {
        Spannable spannable = this.f1100a;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1100a.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1100a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1100a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1100a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.c.getSpans(i, i2, cls) : (T[]) this.f1100a.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1100a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1100a.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.c.removeSpan(obj);
        } else {
            this.f1100a.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.c.setSpan(obj, i, i2, i3);
        } else {
            this.f1100a.setSpan(obj, i, i2, i3);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1100a.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f1100a.toString();
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextPaint f1101a;
        private final TextDirectionHeuristic b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f1102d;

        /* JADX INFO: renamed from: androidx.core.e.c$a$a, reason: collision with other inner class name */
        public static class C0031a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final TextPaint f1103a;
            private TextDirectionHeuristic b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1104d;

            public C0031a(TextPaint textPaint) {
                this.f1103a = textPaint;
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    this.c = 1;
                    this.f1104d = 1;
                } else {
                    this.f1104d = 0;
                    this.c = 0;
                }
                if (i >= 18) {
                    this.b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.b = null;
                }
            }

            public a a() {
                return new a(this.f1103a, this.b, this.c, this.f1104d);
            }

            public C0031a b(int i) {
                this.c = i;
                return this;
            }

            public C0031a c(int i) {
                this.f1104d = i;
                return this;
            }

            public C0031a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.b = textDirectionHeuristic;
                return this;
            }
        }

        @SuppressLint({"NewApi"})
        a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f1101a = textPaint;
            this.b = textDirectionHeuristic;
            this.c = i;
            this.f1102d = i2;
        }

        public boolean a(a aVar) {
            int i = Build.VERSION.SDK_INT;
            if ((i >= 23 && (this.c != aVar.b() || this.f1102d != aVar.c())) || this.f1101a.getTextSize() != aVar.e().getTextSize() || this.f1101a.getTextScaleX() != aVar.e().getTextScaleX() || this.f1101a.getTextSkewX() != aVar.e().getTextSkewX()) {
                return false;
            }
            if ((i >= 21 && (this.f1101a.getLetterSpacing() != aVar.e().getLetterSpacing() || !TextUtils.equals(this.f1101a.getFontFeatureSettings(), aVar.e().getFontFeatureSettings()))) || this.f1101a.getFlags() != aVar.e().getFlags()) {
                return false;
            }
            if (i >= 24) {
                if (!this.f1101a.getTextLocales().equals(aVar.e().getTextLocales())) {
                    return false;
                }
            } else if (i >= 17 && !this.f1101a.getTextLocale().equals(aVar.e().getTextLocale())) {
                return false;
            }
            if (this.f1101a.getTypeface() == null) {
                return aVar.e().getTypeface() == null;
            }
            return this.f1101a.getTypeface().equals(aVar.e().getTypeface());
        }

        public int b() {
            return this.c;
        }

        public int c() {
            return this.f1102d;
        }

        public TextDirectionHeuristic d() {
            return this.b;
        }

        public TextPaint e() {
            return this.f1101a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.b == aVar.d();
            }
            return false;
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                return androidx.core.util.c.b(Float.valueOf(this.f1101a.getTextSize()), Float.valueOf(this.f1101a.getTextScaleX()), Float.valueOf(this.f1101a.getTextSkewX()), Float.valueOf(this.f1101a.getLetterSpacing()), Integer.valueOf(this.f1101a.getFlags()), this.f1101a.getTextLocales(), this.f1101a.getTypeface(), Boolean.valueOf(this.f1101a.isElegantTextHeight()), this.b, Integer.valueOf(this.c), Integer.valueOf(this.f1102d));
            }
            if (i >= 21) {
                return androidx.core.util.c.b(Float.valueOf(this.f1101a.getTextSize()), Float.valueOf(this.f1101a.getTextScaleX()), Float.valueOf(this.f1101a.getTextSkewX()), Float.valueOf(this.f1101a.getLetterSpacing()), Integer.valueOf(this.f1101a.getFlags()), this.f1101a.getTextLocale(), this.f1101a.getTypeface(), Boolean.valueOf(this.f1101a.isElegantTextHeight()), this.b, Integer.valueOf(this.c), Integer.valueOf(this.f1102d));
            }
            if (i >= 18) {
                return androidx.core.util.c.b(Float.valueOf(this.f1101a.getTextSize()), Float.valueOf(this.f1101a.getTextScaleX()), Float.valueOf(this.f1101a.getTextSkewX()), Integer.valueOf(this.f1101a.getFlags()), this.f1101a.getTextLocale(), this.f1101a.getTypeface(), this.b, Integer.valueOf(this.c), Integer.valueOf(this.f1102d));
            }
            return i >= 17 ? androidx.core.util.c.b(Float.valueOf(this.f1101a.getTextSize()), Float.valueOf(this.f1101a.getTextScaleX()), Float.valueOf(this.f1101a.getTextSkewX()), Integer.valueOf(this.f1101a.getFlags()), this.f1101a.getTextLocale(), this.f1101a.getTypeface(), this.b, Integer.valueOf(this.c), Integer.valueOf(this.f1102d)) : androidx.core.util.c.b(Float.valueOf(this.f1101a.getTextSize()), Float.valueOf(this.f1101a.getTextScaleX()), Float.valueOf(this.f1101a.getTextSkewX()), Integer.valueOf(this.f1101a.getFlags()), this.f1101a.getTypeface(), this.b, Integer.valueOf(this.c), Integer.valueOf(this.f1102d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(VectorFormat.DEFAULT_PREFIX);
            sb.append("textSize=" + this.f1101a.getTextSize());
            sb.append(", textScaleX=" + this.f1101a.getTextScaleX());
            sb.append(", textSkewX=" + this.f1101a.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                sb.append(", letterSpacing=" + this.f1101a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f1101a.isElegantTextHeight());
            }
            if (i >= 24) {
                sb.append(", textLocale=" + this.f1101a.getTextLocales());
            } else if (i >= 17) {
                sb.append(", textLocale=" + this.f1101a.getTextLocale());
            }
            sb.append(", typeface=" + this.f1101a.getTypeface());
            if (i >= 26) {
                sb.append(", variationSettings=" + this.f1101a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.b);
            sb.append(", breakStrategy=" + this.c);
            sb.append(", hyphenationFrequency=" + this.f1102d);
            sb.append(VectorFormat.DEFAULT_SUFFIX);
            return sb.toString();
        }

        public a(PrecomputedText.Params params) {
            this.f1101a = params.getTextPaint();
            this.b = params.getTextDirection();
            this.c = params.getBreakStrategy();
            this.f1102d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }
    }
}
