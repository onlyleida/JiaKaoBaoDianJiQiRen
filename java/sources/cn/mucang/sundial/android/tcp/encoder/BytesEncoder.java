package cn.mucang.sundial.android.tcp.encoder;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BytesEncoder {
    private ByteArrayOutputStream bout = new ByteArrayOutputStream(128);
    private DataOutputStream dout = new DataOutputStream(this.bout);

    public void appendBCD(String str) {
        appendBytes(DeviceUtils.writeBCD(str));
    }

    public void appendBYTE(int i) {
        if (i < 0 || i > 255) {
            try {
                SundialLog.normal("非法的无符号的byte:" + i);
                i = 0;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        this.dout.writeByte(i & 255);
    }

    public void appendBytes(byte[] bArr) {
        try {
            this.dout.write(bArr);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void appendDWORD(long j) {
        if (j < 0 || j > 4294967295L) {
            try {
                SundialLog.normal("非法的无符号的int:" + j);
                j = 0L;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        this.dout.writeInt((int) j);
    }

    public void appendString(String str) {
        appendBytes(DeviceUtils.bytesFromString(str));
    }

    public void appendWORD(int i) {
        if (i < 0 || i > 65535) {
            try {
                SundialLog.normal("非法的无符号的short:" + i);
                i = 0;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        this.dout.writeShort(i & ExifInterface.COLOR_SPACE_UNCALIBRATED);
    }

    public byte[] toByteArray() {
        return this.bout.toByteArray();
    }

    public void appendBCD(String str, int i) {
        while (str.length() < i * 2) {
            str = "0" + str;
        }
        byte[] bArrWriteBCD = DeviceUtils.writeBCD(str);
        if (bArrWriteBCD.length != i) {
            bArrWriteBCD = Arrays.copyOf(bArrWriteBCD, i);
        }
        appendBytes(bArrWriteBCD);
    }

    public void appendString(String str, int i) {
        byte[] bytes = str.getBytes(StandardCharsets.US_ASCII);
        if (bytes.length <= i) {
            appendBytes(Arrays.copyOf(bytes, i));
            return;
        }
        SundialLog.normal("当前的字符串长度不能大于：" + i + ",字符串：" + str);
        throw new IllegalArgumentException("当前的字符串长度不能大于：" + i + ",字符串：" + str);
    }
}
