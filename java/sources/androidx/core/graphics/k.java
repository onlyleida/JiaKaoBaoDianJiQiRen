package androidx.core.graphics;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes.dex */
public class k extends l {
    @Override // androidx.core.graphics.l
    public Typeface b(Context context, androidx.core.a.f.c.b bVar, Resources resources, int i) {
        try {
            androidx.core.a.f.c.C0022c[] c0022cArrA = bVar.a();
            int length = c0022cArrA.length;
            FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                androidx.core.a.f.c.C0022c c0022c = c0022cArrA[i2];
                try {
                    Font.Builder weight = new Font.Builder(resources, c0022c.b()).setWeight(c0022c.e());
                    if (!c0022c.f()) {
                        i3 = 0;
                    }
                    Font fontBuild = weight.setSlant(i3).setTtcIndex(c0022c.c()).setFontVariationSettings(c0022c.d()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
                i2++;
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : Videoio.CAP_PROP_XI_DOWNSAMPLING, (i & 2) != 0 ? 1 : 0)).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c A[Catch: IOException -> 0x0060, Exception -> 0x008b, PHI: r4
      0x001c: PHI (r4v5 android.graphics.fonts.FontFamily$Builder) = (r4v3 android.graphics.fonts.FontFamily$Builder), (r4v1 android.graphics.fonts.FontFamily$Builder) binds: [B:20:0x0051, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {Exception -> 0x008b, blocks: (B:3:0x0005, B:6:0x000c, B:7:0x000e, B:10:0x001c, B:28:0x005f, B:27:0x005c, B:32:0x0066, B:36:0x0071, B:39:0x0076), top: B:45:0x0005 }] */
    @Override // androidx.core.graphics.l
    public Typeface c(Context context, CancellationSignal cancellationSignal, androidx.core.d.f.b[] bVarArr, int i) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = bVarArr.length;
            FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    if (builder == null) {
                        return null;
                    }
                    return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : Videoio.CAP_PROP_XI_DOWNSAMPLING, (i & 2) != 0 ? 1 : 0)).build();
                }
                androidx.core.d.f.b bVar = bVarArr[i2];
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(bVar.d(), "r", cancellationSignal);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            Font.Builder weight = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(bVar.e());
                            if (!bVar.f()) {
                                i3 = 0;
                            }
                            Font fontBuild = weight.setSlant(i3).setTtcIndex(bVar.c()).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(fontBuild);
                            } else {
                                builder.addFont(fontBuild);
                            }
                            if (parcelFileDescriptorOpenFileDescriptor != null) {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            }
                        } catch (Throwable th) {
                            if (parcelFileDescriptorOpenFileDescriptor != null) {
                                try {
                                    parcelFileDescriptorOpenFileDescriptor.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } else if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                } catch (IOException unused) {
                }
                i2++;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // androidx.core.graphics.l
    protected Typeface d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // androidx.core.graphics.l
    public Typeface e(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font fontBuild = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.l
    protected androidx.core.d.f.b h(androidx.core.d.f.b[] bVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
