package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes5.dex */
final class SubtitlePainter {
    private static final float INNER_PADDING_RATIO = 0.125f;
    private static final String TAG = "SubtitlePainter";
    private int backgroundColor;
    private final Paint bitmapPaint;
    private Rect bitmapRect;
    private float bottomPaddingFraction;
    private Bitmap cueBitmap;
    private float cueBitmapHeight;
    private float cueLine;
    private int cueLineAnchor;
    private int cueLineType;
    private float cuePosition;
    private int cuePositionAnchor;
    private float cueSize;
    private CharSequence cueText;
    private Layout.Alignment cueTextAlignment;
    private float cueTextSizePx;
    private float defaultTextSizePx;
    private int edgeColor;
    private StaticLayout edgeLayout;
    private int edgeType;
    private int foregroundColor;
    private final float outlineWidth;
    private int parentBottom;
    private int parentLeft;
    private int parentRight;
    private int parentTop;
    private final float shadowOffset;
    private final float shadowRadius;
    private final float spacingAdd;
    private final float spacingMult;
    private StaticLayout textLayout;
    private int textLeft;
    private int textPaddingX;
    private final TextPaint textPaint;
    private int textTop;
    private int windowColor;
    private final Paint windowPaint;

    public SubtitlePainter(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{android.R.attr.lineSpacingExtra, android.R.attr.lineSpacingMultiplier}, 0, 0);
        this.spacingAdd = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.spacingMult = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.outlineWidth = fRound;
        this.shadowRadius = fRound;
        this.shadowOffset = fRound;
        TextPaint textPaint = new TextPaint();
        this.textPaint = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.windowPaint = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.bitmapPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean areCharSequencesEqual(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    @RequiresNonNull({"cueBitmap", "bitmapRect"})
    private void drawBitmapLayout(Canvas canvas) {
        canvas.drawBitmap(this.cueBitmap, (Rect) null, this.bitmapRect, this.bitmapPaint);
    }

    private void drawLayout(Canvas canvas, boolean z) {
        if (z) {
            drawTextLayout(canvas);
            return;
        }
        Assertions.checkNotNull(this.bitmapRect);
        Assertions.checkNotNull(this.cueBitmap);
        drawBitmapLayout(canvas);
    }

    private void drawTextLayout(Canvas canvas) {
        StaticLayout staticLayout = this.textLayout;
        StaticLayout staticLayout2 = this.edgeLayout;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.textLeft, this.textTop);
        if (Color.alpha(this.windowColor) > 0) {
            this.windowPaint.setColor(this.windowColor);
            canvas.drawRect(-this.textPaddingX, BitmapDescriptorFactory.HUE_RED, staticLayout.getWidth() + this.textPaddingX, staticLayout.getHeight(), this.windowPaint);
        }
        int i = this.edgeType;
        if (i == 1) {
            this.textPaint.setStrokeJoin(Paint.Join.ROUND);
            this.textPaint.setStrokeWidth(this.outlineWidth);
            this.textPaint.setColor(this.edgeColor);
            this.textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i == 2) {
            TextPaint textPaint = this.textPaint;
            float f2 = this.shadowRadius;
            float f3 = this.shadowOffset;
            textPaint.setShadowLayer(f2, f3, f3, this.edgeColor);
        } else if (i == 3 || i == 4) {
            boolean z = i == 3;
            int i2 = z ? -1 : this.edgeColor;
            int i3 = z ? this.edgeColor : -1;
            float f4 = this.shadowRadius / 2.0f;
            this.textPaint.setColor(this.foregroundColor);
            this.textPaint.setStyle(Paint.Style.FILL);
            float f5 = -f4;
            this.textPaint.setShadowLayer(this.shadowRadius, f5, f5, i2);
            staticLayout2.draw(canvas);
            this.textPaint.setShadowLayer(this.shadowRadius, f4, f4, i3);
        }
        this.textPaint.setColor(this.foregroundColor);
        this.textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.textPaint.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        canvas.restoreToCount(iSave);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005b  */
    /* JADX WARN: Code duplicated, block: B:16:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    @RequiresNonNull({"cueBitmap"})
    private void setupBitmapLayout() {
        float f2;
        int i;
        float f3;
        Bitmap bitmap = this.cueBitmap;
        int i2 = this.parentRight;
        int i3 = this.parentLeft;
        int i4 = this.parentBottom;
        int i5 = this.parentTop;
        float f4 = i2 - i3;
        float f5 = i3 + (this.cuePosition * f4);
        float f6 = i4 - i5;
        float f7 = i5 + (this.cueLine * f6);
        int iRound = Math.round(f4 * this.cueSize);
        float f8 = this.cueBitmapHeight;
        int iRound2 = f8 != -3.4028235E38f ? Math.round(f6 * f8) : Math.round(iRound * (bitmap.getHeight() / bitmap.getWidth()));
        int i6 = this.cuePositionAnchor;
        if (i6 != 2) {
            if (i6 == 1) {
                f2 = iRound / 2;
            }
            int iRound3 = Math.round(f5);
            i = this.cueLineAnchor;
            if (i == 2) {
                if (i == 1) {
                    f3 = iRound2 / 2;
                }
                int iRound4 = Math.round(f7);
                this.bitmapRect = new Rect(iRound3, iRound4, iRound + iRound3, iRound2 + iRound4);
            }
            f3 = iRound2;
            f7 -= f3;
            int iRound5 = Math.round(f7);
            this.bitmapRect = new Rect(iRound3, iRound5, iRound + iRound3, iRound2 + iRound5);
        }
        f2 = iRound;
        f5 -= f2;
        int iRound6 = Math.round(f5);
        i = this.cueLineAnchor;
        if (i == 2) {
            if (i == 1) {
                f3 = iRound2 / 2;
            }
            int iRound7 = Math.round(f7);
            this.bitmapRect = new Rect(iRound6, iRound7, iRound + iRound6, iRound2 + iRound7);
        }
        f3 = iRound2;
        f7 -= f3;
        int iRound8 = Math.round(f7);
        this.bitmapRect = new Rect(iRound6, iRound8, iRound + iRound6, iRound2 + iRound8);
    }

    @RequiresNonNull({"cueText"})
    private void setupTextLayout() {
        int i;
        int i2;
        int iMax;
        int iMin;
        int iRound;
        int i3;
        CharSequence charSequence = this.cueText;
        SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(this.cueText);
        int i4 = this.parentRight - this.parentLeft;
        int i5 = this.parentBottom - this.parentTop;
        this.textPaint.setTextSize(this.defaultTextSizePx);
        int i6 = (int) ((this.defaultTextSizePx * INNER_PADDING_RATIO) + 0.5f);
        int i7 = i6 * 2;
        int i8 = i4 - i7;
        float f2 = this.cueSize;
        if (f2 != -3.4028235E38f) {
            i8 = (int) (i8 * f2);
        }
        int i9 = i8;
        if (i9 <= 0) {
            Log.w(TAG, "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        if (this.cueTextSizePx > BitmapDescriptorFactory.HUE_RED) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) this.cueTextSizePx), 0, spannableStringBuilder.length(), 16711680);
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
        if (this.edgeType == 1) {
            for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), ForegroundColorSpan.class)) {
                spannableStringBuilder2.removeSpan(foregroundColorSpan);
            }
        }
        if (Color.alpha(this.backgroundColor) > 0) {
            int i10 = this.edgeType;
            if (i10 == 0 || i10 == 2) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), 0, spannableStringBuilder.length(), 16711680);
            } else {
                spannableStringBuilder2.setSpan(new BackgroundColorSpan(this.backgroundColor), 0, spannableStringBuilder2.length(), 16711680);
            }
        }
        Layout.Alignment alignment = this.cueTextAlignment;
        if (alignment == null) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        }
        Layout.Alignment alignment2 = alignment;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, this.textPaint, i9, alignment2, this.spacingMult, this.spacingAdd, true);
        this.textLayout = staticLayout;
        int height = staticLayout.getHeight();
        int lineCount = this.textLayout.getLineCount();
        int iMax2 = 0;
        for (int i11 = 0; i11 < lineCount; i11++) {
            iMax2 = Math.max((int) Math.ceil(this.textLayout.getLineWidth(i11)), iMax2);
        }
        if (this.cueSize == -3.4028235E38f || iMax2 >= i9) {
            i9 = iMax2;
        }
        int i12 = i9 + i7;
        float f3 = this.cuePosition;
        if (f3 != -3.4028235E38f) {
            int iRound2 = Math.round(i4 * f3);
            int i13 = this.parentLeft;
            int i14 = iRound2 + i13;
            int i15 = this.cuePositionAnchor;
            i = 1;
            if (i15 != 1) {
                i2 = 2;
                if (i15 == 2) {
                    i14 -= i12;
                }
            } else {
                i2 = 2;
                i14 = ((i14 * 2) - i12) / 2;
            }
            iMax = Math.max(i14, i13);
            iMin = Math.min(i12 + iMax, this.parentRight);
        } else {
            i = 1;
            i2 = 2;
            iMax = ((i4 - i12) / 2) + this.parentLeft;
            iMin = iMax + i12;
        }
        int i16 = iMin - iMax;
        if (i16 <= 0) {
            Log.w(TAG, "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        float f4 = this.cueLine;
        if (f4 != -3.4028235E38f) {
            if (this.cueLineType == 0) {
                iRound = Math.round(i5 * f4) + this.parentTop;
                int i17 = this.cueLineAnchor;
                if (i17 == i2) {
                    iRound -= height;
                } else if (i17 == i) {
                    iRound = ((iRound * 2) - height) / i2;
                }
            } else {
                int lineBottom = this.textLayout.getLineBottom(0) - this.textLayout.getLineTop(0);
                float f5 = this.cueLine;
                if (f5 >= BitmapDescriptorFactory.HUE_RED) {
                    iRound = Math.round(f5 * lineBottom) + this.parentTop;
                } else {
                    iRound = Math.round((f5 + 1.0f) * lineBottom) + this.parentBottom;
                    iRound -= height;
                }
            }
            int i18 = iRound + height;
            int i19 = this.parentBottom;
            if (i18 <= i19) {
                int i20 = this.parentTop;
                if (iRound < i20) {
                    i3 = i20;
                }
                this.textLayout = new StaticLayout(spannableStringBuilder, this.textPaint, i16, alignment2, this.spacingMult, this.spacingAdd, true);
                this.edgeLayout = new StaticLayout(spannableStringBuilder2, this.textPaint, i16, alignment2, this.spacingMult, this.spacingAdd, true);
                this.textLeft = iMax;
                this.textTop = i3;
                this.textPaddingX = i6;
            }
            iRound = i19 - height;
        } else {
            iRound = (this.parentBottom - height) - ((int) (i5 * this.bottomPaddingFraction));
        }
        i3 = iRound;
        this.textLayout = new StaticLayout(spannableStringBuilder, this.textPaint, i16, alignment2, this.spacingMult, this.spacingAdd, true);
        this.edgeLayout = new StaticLayout(spannableStringBuilder2, this.textPaint, i16, alignment2, this.spacingMult, this.spacingAdd, true);
        this.textLeft = iMax;
        this.textTop = i3;
        this.textPaddingX = i6;
    }

    public void draw(Cue cue, CaptionStyleCompat captionStyleCompat, float f2, float f3, float f4, Canvas canvas, int i, int i2, int i3, int i4) {
        boolean z = cue.bitmap == null;
        int i5 = ViewCompat.MEASURED_STATE_MASK;
        if (z) {
            if (TextUtils.isEmpty(cue.text)) {
                return;
            } else {
                i5 = cue.windowColorSet ? cue.windowColor : captionStyleCompat.windowColor;
            }
        }
        if (areCharSequencesEqual(this.cueText, cue.text) && Util.areEqual(this.cueTextAlignment, cue.textAlignment) && this.cueBitmap == cue.bitmap && this.cueLine == cue.line && this.cueLineType == cue.lineType && Util.areEqual(Integer.valueOf(this.cueLineAnchor), Integer.valueOf(cue.lineAnchor)) && this.cuePosition == cue.position && Util.areEqual(Integer.valueOf(this.cuePositionAnchor), Integer.valueOf(cue.positionAnchor)) && this.cueSize == cue.size && this.cueBitmapHeight == cue.bitmapHeight && this.foregroundColor == captionStyleCompat.foregroundColor && this.backgroundColor == captionStyleCompat.backgroundColor && this.windowColor == i5 && this.edgeType == captionStyleCompat.edgeType && this.edgeColor == captionStyleCompat.edgeColor && Util.areEqual(this.textPaint.getTypeface(), captionStyleCompat.typeface) && this.defaultTextSizePx == f2 && this.cueTextSizePx == f3 && this.bottomPaddingFraction == f4 && this.parentLeft == i && this.parentTop == i2 && this.parentRight == i3 && this.parentBottom == i4) {
            drawLayout(canvas, z);
            return;
        }
        this.cueText = cue.text;
        this.cueTextAlignment = cue.textAlignment;
        this.cueBitmap = cue.bitmap;
        this.cueLine = cue.line;
        this.cueLineType = cue.lineType;
        this.cueLineAnchor = cue.lineAnchor;
        this.cuePosition = cue.position;
        this.cuePositionAnchor = cue.positionAnchor;
        this.cueSize = cue.size;
        this.cueBitmapHeight = cue.bitmapHeight;
        this.foregroundColor = captionStyleCompat.foregroundColor;
        this.backgroundColor = captionStyleCompat.backgroundColor;
        this.windowColor = i5;
        this.edgeType = captionStyleCompat.edgeType;
        this.edgeColor = captionStyleCompat.edgeColor;
        this.textPaint.setTypeface(captionStyleCompat.typeface);
        this.defaultTextSizePx = f2;
        this.cueTextSizePx = f3;
        this.bottomPaddingFraction = f4;
        this.parentLeft = i;
        this.parentTop = i2;
        this.parentRight = i3;
        this.parentBottom = i4;
        if (z) {
            Assertions.checkNotNull(this.cueText);
            setupTextLayout();
        } else {
            Assertions.checkNotNull(this.cueBitmap);
            setupBitmapLayout();
        }
        drawLayout(canvas, z);
    }
}
