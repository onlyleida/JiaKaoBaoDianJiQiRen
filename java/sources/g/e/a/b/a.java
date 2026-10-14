package g.e.a.b;

import android.os.Environment;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static BufferedOutputStream f14575a;

    static {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator;
    }

    public static void a() {
        try {
            BufferedOutputStream bufferedOutputStream = f14575a;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.flush();
                f14575a.close();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
