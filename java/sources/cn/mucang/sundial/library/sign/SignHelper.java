package cn.mucang.sundial.library.sign;

import cn.mucang.android.core.encode.a;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.text.MessageFormat;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes5.dex */
public class SignHelper {
    private static final String TAG = "SignHelper";
    private EncryptAlgorithm algorithm;
    private PrivateKey privateKey = readPrivateKey();

    private SignHelper(EncryptAlgorithm encryptAlgorithm) {
        this.algorithm = encryptAlgorithm;
    }

    private String buildQuery(long j, String str) {
        return "?v=1.0.0." + this.algorithm.getLabel() + "&timestamp=" + j + "&sign=" + str;
    }

    public static SignHelper create(EncryptAlgorithm encryptAlgorithm) {
        return new SignHelper(encryptAlgorithm);
    }

    private static PrivateKey readPrivateKey() {
        return DeviceUtils.readPrivateKey(SundialManager.getInstance().getRegisterInfo());
    }

    private byte[] signTimestamp(long j) {
        return String.valueOf(j).length() >= 13 ? new byte[]{(byte) (j >>> 56), (byte) (j >>> 48), (byte) (j >>> 40), (byte) (j >>> 32), (byte) (j >>> 24), (byte) (j >>> 16), (byte) (j >>> 8), (byte) j} : new byte[]{(byte) (j >>> 24), (byte) (j >>> 16), (byte) (j >>> 8), (byte) j};
    }

    public String buildGetUrl(String str, String[] strArr) throws SignException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            strArr2[i] = a.g(strArr[i]);
        }
        String strSign = sign(sb.toString().getBytes(StandardCharsets.UTF_8), jCurrentTimeMillis);
        return new MessageFormat(str).format(strArr2) + buildQuery(jCurrentTimeMillis, strSign);
    }

    public String buildPostUrl(String str, byte[] bArr) throws SignException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return str + buildQuery(jCurrentTimeMillis, sign(bArr, jCurrentTimeMillis));
    }

    public String sign(byte[] bArr, long j) throws SignException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(this.algorithm.getValue());
            messageDigest.update(bArr);
            if (j > 0) {
                messageDigest.update(signTimestamp(j));
            }
            byte[] bArrDigest = messageDigest.digest();
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, this.privateKey);
            return a.e(cipher.doFinal(bArrDigest));
        } catch (Exception unused) {
            throw new SignException();
        }
    }
}
