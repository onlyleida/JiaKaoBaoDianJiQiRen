package cn.mucang.android.core.utils;

import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class m0 {
    public static File a(String str) {
        if (n0.g(str) && "mounted".equals(Environment.getExternalStorageState())) {
            File file = new File(MucangConfig.getContext().getExternalFilesDir(null), str);
            if (file.exists()) {
                return file;
            }
        }
        return null;
    }
}
