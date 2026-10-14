package cn.mucang.sundial.android.tcp.decoder;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class BytesDecoder {
    private DataInputStream din;

    public BytesDecoder(byte[] bArr) {
        this.din = new DataInputStream(new ByteArrayInputStream(bArr));
    }

    private String getString(byte[] bArr) {
        try {
            return bArr.length == 0 ? "" : new String(bArr, "GBK").trim();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public int available() {
        try {
            return this.din.available();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String readBCD(int i) {
        return DeviceUtils.readBCD(readBytes(i));
    }

    public int readBYTE() {
        try {
            return this.din.readByte() & UnsignedBytes.MAX_VALUE;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public byte[] readBytes(int i, boolean z) {
        if (z) {
            i = Math.min(i, available());
        }
        byte[] bArr = new byte[i];
        try {
            this.din.readFully(bArr);
            return bArr;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public long readDWORD() {
        try {
            return ((long) this.din.readInt()) & 4294967295L;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String readString(int i) {
        try {
            return new String(readBytes(i), "GBK").trim();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public int readWORD() {
        try {
            return this.din.readUnsignedShort();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String readString() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                byte b = this.din.readByte();
                if (b == 0) {
                    break;
                }
                byteArrayOutputStream.write(b);
            } catch (EOFException unused) {
                t.m(ProtocolConfig.SUNDIAL, "又读到底了，才读出个字符串来");
                SundialLog.com("又读到底了，才读出个字符串来");
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        return getString(byteArrayOutputStream.toByteArray());
    }

    public byte[] readBytes(int i) {
        return readBytes(i, false);
    }
}
