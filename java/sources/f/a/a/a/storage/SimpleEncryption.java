package f.a.a.a.storage;

import android.util.Base64;
import cn.mucang.android.core.encode.Digests;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.r.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/core/storage/SimpleEncryption;", "Lcn/mucang/android/core/storage/Encryption;", "key", "", "(Ljava/lang/String;)V", "algorithm", "charset", "Ljava/nio/charset/Charset;", "kotlin.jvm.PlatformType", "getKey", "()Ljava/lang/String;", "keyBytes", "", "buildCipher", "Ljavax/crypto/Cipher;", "encrypt", "", "decrypt", "str", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SimpleEncryption implements Encryption {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14489a;
    private final String b;
    private final Charset c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f14490d;

    public SimpleEncryption(String key) {
        r.e(key, "key");
        this.f14489a = key;
        this.b = "AES/CBC/PKCS5Padding";
        Charset charset = Charset.forName("UTF-8");
        this.c = charset;
        String strMd5 = Digests.md5(key);
        r.d(strMd5, "md5(key)");
        r.d(charset, "charset");
        byte[] bytes = strMd5.getBytes(charset);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        this.f14490d = bytes;
    }

    private final Cipher c(boolean z) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f14490d, "AES");
        Charset charset = this.c;
        r.d(charset, "charset");
        byte[] bytes = "HelloEncryption.".getBytes(charset);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bytes);
        Cipher cipher = Cipher.getInstance(this.b);
        if (z) {
            cipher.init(1, secretKeySpec, ivParameterSpec);
        } else {
            cipher.init(2, secretKeySpec, ivParameterSpec);
        }
        r.d(cipher, "cipher");
        return cipher;
    }

    @Override // f.a.a.a.storage.Encryption
    public String a(String str) {
        r.e(str, "str");
        try {
            Cipher cipherC = c(true);
            Charset charset = this.c;
            r.d(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            r.d(bytes, "(this as java.lang.String).getBytes(charset)");
            return Base64.encodeToString(cipherC.doFinal(bytes), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // f.a.a.a.storage.Encryption
    public String b(String str) {
        r.e(str, "str");
        try {
            byte[] bs = c(false).doFinal(Base64.decode(str, 0));
            r.d(bs, "bs");
            Charset charset = this.c;
            r.d(charset, "charset");
            return new String(bs, charset);
        } catch (Exception unused) {
            return null;
        }
    }
}
