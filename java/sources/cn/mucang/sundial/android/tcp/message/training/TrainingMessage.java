package cn.mucang.sundial.android.tcp.message.training;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Receive;
import cn.mucang.sundial.android.tcp.message.Send;
import cn.mucang.sundial.android.tcp.utils.ArrayUtils;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public class TrainingMessage implements Send, Receive {
    private byte[] body;
    private String deviceId;
    private ExtendAttribute extendAttribute;
    private int sequence;
    private int tid;
    private boolean verified;
    private byte[] verify;

    public static class ExtendAttribute {
        public static final String SHA_1 = "SHA-1";
        public static final String SHA_256 = "SHA-256";
        private String digestType;
        private boolean needReply;
        private boolean realtimeMessage;

        private ExtendAttribute() {
        }

        public static ExtendAttribute from(int i) {
            ExtendAttribute extendAttribute = new ExtendAttribute();
            extendAttribute.realtimeMessage = (i & 1) == 0;
            extendAttribute.needReply = (i & 2) != 0;
            int i2 = (i >>> 4) & 15;
            if (i2 == 0) {
                extendAttribute.digestType = null;
            } else if (i2 == 1) {
                extendAttribute.digestType = SHA_1;
            } else if (i2 == 2) {
                extendAttribute.digestType = SHA_256;
            }
            return extendAttribute;
        }

        public String getDigestType() {
            return this.digestType;
        }

        public int getValue() {
            int i = !this.realtimeMessage ? 1 : 0;
            if (this.needReply) {
                i |= 2;
            }
            String str = this.digestType;
            if (str == null) {
                return i;
            }
            if (SHA_1.equals(str)) {
                return i | 16;
            }
            return SHA_256.equals(this.digestType) ? i | 32 : i;
        }

        public boolean isNeedReply() {
            return this.needReply;
        }

        public boolean isRealtimeMessage() {
            return this.realtimeMessage;
        }

        public String toString() {
            return "ExtendAttribute{realtimeMessage=" + this.realtimeMessage + ", needReply=" + this.needReply + ", digestType='" + this.digestType + "'}";
        }

        public ExtendAttribute(boolean z, boolean z2, String str) {
            this.realtimeMessage = z;
            this.needReply = z2;
            this.digestType = str;
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(19);
        bytesEncoder.appendBytes(getMsgBody());
        if (!ArrayUtils.isEmpty(this.verify)) {
            bytesEncoder.appendBytes(this.verify);
        }
        return bytesEncoder.toByteArray();
    }

    public byte[] getBody() {
        return this.body;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public ExtendAttribute getExtendAttribute() {
        return this.extendAttribute;
    }

    public byte[] getMsgBody() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendWORD(this.tid);
        bytesEncoder.appendWORD(this.extendAttribute.getValue());
        bytesEncoder.appendWORD(this.sequence);
        bytesEncoder.appendBytes(this.deviceId.getBytes());
        if (ArrayUtils.getLength(this.body) > 0) {
            bytesEncoder.appendDWORD(this.body.length);
            bytesEncoder.appendBytes(this.body);
        } else {
            bytesEncoder.appendDWORD(0L);
        }
        return bytesEncoder.toByteArray();
    }

    public int getSequence() {
        return this.sequence;
    }

    public int getTid() {
        return this.tid;
    }

    public byte[] getVerify() {
        return this.verify;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        int i = bytesDecoder.readBYTE();
        if (i != 19) {
            throw new IllegalArgumentException("非法的透传消息，目前仅支持0x13，而收到的是：" + i);
        }
        this.tid = bytesDecoder.readWORD();
        this.extendAttribute = ExtendAttribute.from(bytesDecoder.readWORD());
        this.sequence = bytesDecoder.readWORD();
        this.deviceId = DeviceUtils.stringFromBytes(bytesDecoder.readBytes(16));
        long dword = bytesDecoder.readDWORD();
        if (dword > 0) {
            this.body = bytesDecoder.readBytes((int) dword);
        }
        this.verify = bytesDecoder.readBytes(bytesDecoder.available());
    }

    public boolean isVerified() {
        return this.verified;
    }

    public void setBody(byte[] bArr) {
        this.body = bArr;
    }

    public void setDeviceId(String str) {
        if (str.getBytes(StandardCharsets.UTF_8).length == 16) {
            this.deviceId = str;
            return;
        }
        throw new IllegalArgumentException("长度必须是16字节，非法的设备编号:" + str);
    }

    public void setExtendAttribute(ExtendAttribute extendAttribute) {
        this.extendAttribute = extendAttribute;
    }

    public void setSequence(int i) {
        this.sequence = i;
    }

    public void setTid(int i) {
        this.tid = i;
    }

    public void setVerified(boolean z) {
        this.verified = z;
    }

    public void setVerify(byte[] bArr) {
        this.verify = bArr;
    }
}
