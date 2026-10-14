package cn.mucang.android.jiakaoyi.framework.tts.j;

import android.util.Log;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.framework.log.f;
import com.buihha.audiorecorder.SimpleLame;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a(File file, File file2) throws Throwable {
        SimpleLame.a(16000, 1, 16000, 32);
        byte[] bArrJ = m.j(file);
        if (bArrJ == null || bArrJ.length < 1) {
            return false;
        }
        Log.e("mp3", file.getAbsolutePath() + " : 字节长度:" + bArrJ.length);
        int length = bArrJ.length / 2;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            sArr[i] = (short) (((bArrJ[i2 + 1] & UnsignedBytes.MAX_VALUE) << 8) | (bArrJ[i2] & UnsignedBytes.MAX_VALUE));
        }
        byte[] bArr = new byte[(int) ((((double) length) * 1.25d) + 7200.0d)];
        try {
            int iEncode = SimpleLame.encode(sArr, sArr, length, bArr);
            SimpleLame.flush(bArr);
            SimpleLame.close();
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    fileOutputStream2.write(bArr, 0, iEncode);
                    fileOutputStream2.flush();
                    o.a(fileOutputStream2);
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        file2.delete();
                        f.o("mp3文件写入出错:" + th.getLocalizedMessage());
                        return false;
                    } finally {
                        o.a(fileOutputStream);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            try {
                f.o("pcm转mp3出错:" + th3.getLocalizedMessage());
                return false;
            } finally {
                SimpleLame.close();
            }
        }
    }
}
