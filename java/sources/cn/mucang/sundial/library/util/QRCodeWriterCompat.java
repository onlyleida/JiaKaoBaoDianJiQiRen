package cn.mucang.sundial.library.util;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ/\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010JE\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0002\b\u0003\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u000f\u0010\u0014R$\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R$\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0019¨\u0006\u001f"}, d2 = {"Lcn/mucang/sundial/library/util/QRCodeWriterCompat;", "Lcom/google/zxing/Writer;", "Lcom/google/zxing/qrcode/encoder/QRCode;", "code", "", "width", "height", "quietZone", "Lcom/google/zxing/common/BitMatrix;", "renderResult", "(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;", "", "contents", "Lcom/google/zxing/BarcodeFormat;", "format", "encode", "(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;", "", "Lcom/google/zxing/EncodeHintType;", "hints", "(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;", "<set-?>", "leftPadding", "I", "getLeftPadding", "()I", "topPadding", "getTopPadding", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class QRCodeWriterCompat implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;
    private int leftPadding;
    private int topPadding;

    private final BitMatrix renderResult(QRCode code, int width, int height, int quietZone) {
        ByteMatrix matrix = code.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width2 = matrix.getWidth();
        int height2 = matrix.getHeight();
        int i = quietZone * 2;
        int i2 = width2 + i;
        int i3 = i + height2;
        int iMax = Math.max(width, i2);
        int iMax2 = Math.max(height, i3);
        int iMin = Math.min(iMax / i2, iMax2 / i3);
        this.leftPadding = (iMax - (width2 * iMin)) / 2;
        this.topPadding = (iMax2 - (height2 * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i4 = this.topPadding;
        int i5 = 0;
        while (i5 < height2) {
            int i6 = this.leftPadding;
            int i7 = 0;
            while (i7 < width2) {
                if (matrix.get(i7, i5) == 1) {
                    bitMatrix.setRegion(i6, i4, iMin, iMin);
                }
                i7++;
                i6 += iMin;
            }
            i5++;
            i4 += iMin;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String contents, BarcodeFormat format, int width, int height) throws WriterException {
        r.e(contents, "contents");
        r.e(format, "format");
        return encode(contents, format, width, height, null);
    }

    public final int getLeftPadding() {
        return this.leftPadding;
    }

    public final int getTopPadding() {
        return this.topPadding;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String contents, BarcodeFormat format, int width, int height, Map<EncodeHintType, ?> hints) throws WriterException {
        r.e(contents, "contents");
        r.e(format, "format");
        if (contents.length() == 0) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (format != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + format);
        }
        if (width < 0 || height < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + width + 'x' + height);
        }
        ErrorCorrectionLevel errorCorrectionLevelValueOf = ErrorCorrectionLevel.L;
        int i = QUIET_ZONE_SIZE;
        if (hints != null) {
            EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
            if (hints.containsKey(encodeHintType)) {
                errorCorrectionLevelValueOf = ErrorCorrectionLevel.valueOf(String.valueOf(hints.get(encodeHintType)));
            }
            EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
            if (hints.containsKey(encodeHintType2)) {
                i = Integer.parseInt(String.valueOf(hints.get(encodeHintType2)));
            }
        }
        QRCode code = Encoder.encode(contents, errorCorrectionLevelValueOf, hints);
        r.d(code, "code");
        return renderResult(code, width, height, i);
    }
}
