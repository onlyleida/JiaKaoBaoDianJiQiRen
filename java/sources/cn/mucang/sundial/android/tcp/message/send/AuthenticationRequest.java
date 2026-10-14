package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.tcp.SocketClient;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import java.security.MessageDigest;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes5.dex */
public class AuthenticationRequest implements SendMessage, Request {
    private byte[] encrypted;
    private long timestamp;

    public static AuthenticationRequest create(SocketClient socketClient) {
        try {
            AuthenticationRequest authenticationRequest = new AuthenticationRequest();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            BytesEncoder bytesEncoder = new BytesEncoder();
            bytesEncoder.appendBytes(socketClient.getRegisterInfo().getDeviceCode().getBytes());
            bytesEncoder.appendDWORD(jCurrentTimeMillis);
            MessageDigest messageDigest = MessageDigest.getInstance(TrainingMessage.ExtendAttribute.SHA_256);
            messageDigest.update(bytesEncoder.toByteArray());
            byte[] bArrDigest = messageDigest.digest();
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, socketClient.getPrivateKey());
            authenticationRequest.setEncrypted(cipher.doFinal(bArrDigest));
            authenticationRequest.setTimestamp(jCurrentTimeMillis);
            return authenticationRequest;
        } catch (Exception e2) {
            t.e(ProtocolConfig.SUNDIAL, "生成鉴权包失败", e2);
            return null;
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendDWORD(this.timestamp);
        bytesEncoder.appendBytes(this.encrypted);
        return bytesEncoder.toByteArray();
    }

    public byte[] getEncrypted() {
        return this.encrypted;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 258;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setEncrypted(byte[] bArr) {
        this.encrypted = bArr;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }
}
