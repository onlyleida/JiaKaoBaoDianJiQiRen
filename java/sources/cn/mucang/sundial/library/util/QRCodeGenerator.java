package cn.mucang.sundial.library.util;

import android.graphics.Bitmap;
import cn.mucang.android.core.utils.n0;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import f.a.a.a.p.b;
import java.util.Hashtable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/util/QRCodeGenerator;", "Lf/a/a/a/p/b;", "", "url", "", "width", "height", "Landroid/graphics/Bitmap;", "createQRImage", "(Ljava/lang/String;II)Landroid/graphics/Bitmap;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class QRCodeGenerator implements b {
    @Override // f.a.a.a.p.b
    public Bitmap createQRImage(String url, int width, int height) {
        try {
            if (n0.e(url)) {
                return null;
            }
            Hashtable hashtable = new Hashtable();
            hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
            hashtable.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
            hashtable.put(EncodeHintType.MARGIN, 1);
            QRCodeWriterCompat qRCodeWriterCompat = new QRCodeWriterCompat();
            r.c(url);
            BitMatrix bitMatrixEncode = qRCodeWriterCompat.encode(url, BarcodeFormat.QR_CODE, width, height, hashtable);
            int[] iArr = new int[width * height];
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    if (bitMatrixEncode.get(i2, i)) {
                        iArr[(i * width) + i2] = -16777216;
                    } else {
                        iArr[(i * width) + i2] = -1;
                    }
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
            return Bitmap.createBitmap(bitmapCreateBitmap, qRCodeWriterCompat.getLeftPadding(), qRCodeWriterCompat.getTopPadding(), width - (qRCodeWriterCompat.getLeftPadding() * 2), height - (qRCodeWriterCompat.getTopPadding() * 2));
        } catch (Exception unused) {
            return null;
        }
    }
}
