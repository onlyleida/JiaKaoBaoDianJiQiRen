package cn.mucang.sundial.library.util;

import android.content.Context;
import cn.mucang.sundial.android.log.SundialLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcn/mucang/sundial/library/util/AssetUtils;", "", "Landroid/content/Context;", "context", "", "assetsPath", "dstPath", "", "copyAssetsToSD", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z", "Lkotlin/v;", "copyAssetsToDst", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "hasCopyFailedFile", "Z", "getHasCopyFailedFile", "()Z", "setHasCopyFailedFile", "(Z)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class AssetUtils {
    public static final AssetUtils INSTANCE = new AssetUtils();
    private static boolean hasCopyFailedFile;

    private AssetUtils() {
    }

    private final void copyAssetsToDst(Context context, String assetsPath, String dstPath) {
        try {
            String[] list = context.getAssets().list(assetsPath);
            File file = new File(dstPath);
            if (list != null) {
                if (!(list.length == 0)) {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    for (String assetsFileName : list) {
                        if (!r.a(assetsPath, "")) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(assetsPath);
                            String str = File.separator;
                            sb.append(str);
                            sb.append(assetsFileName);
                            copyAssetsToDst(context, sb.toString(), "" + file + str + assetsFileName);
                        } else {
                            r.d(assetsFileName, "assetsFileName");
                            copyAssetsToDst(context, assetsFileName, "" + file + File.separator + assetsFileName);
                        }
                    }
                    return;
                }
            }
            if (file.exists()) {
                SundialLog.normal("文件已经存在:" + file.getPath());
                return;
            }
            InputStream inputStreamOpen = context.getAssets().open(assetsPath);
            r.d(inputStreamOpen, "context.assets.open(assetsPath)");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    fileOutputStream.flush();
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e2) {
            SundialLog.normal("拷贝Assets文件夹：" + e2.getLocalizedMessage());
            hasCopyFailedFile = true;
        }
    }

    public static final boolean copyAssetsToSD(Context context, String assetsPath, String dstPath) {
        r.e(context, "context");
        r.e(assetsPath, "assetsPath");
        r.e(dstPath, "dstPath");
        hasCopyFailedFile = false;
        INSTANCE.copyAssetsToDst(context, assetsPath, dstPath);
        return !hasCopyFailedFile;
    }

    public final boolean getHasCopyFailedFile() {
        return hasCopyFailedFile;
    }

    public final void setHasCopyFailedFile(boolean z) {
        hasCopyFailedFile = z;
    }
}
