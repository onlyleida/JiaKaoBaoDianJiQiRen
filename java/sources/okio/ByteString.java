package okio;

import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import com.iflytek.cloud.SpeechEvent;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;
import okio.internal.ByteStringKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0018\b\u0016\u0018\u0000 p2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001pB\u0011\b\u0000\u0012\u0006\u0010g\u001a\u000207¢\u0006\u0004\bn\u0010oJ\u0017\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\b\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0019\u0010\u0014J\u000f\u0010\u001a\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001d\u0010\u001bJ\u000f\u0010\u001e\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001e\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0000H\u0016¢\u0006\u0004\b!\u0010 J\u0017\u0010\"\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\"\u0010 J\u000f\u0010#\u001a\u00020\u0003H\u0016¢\u0006\u0004\b#\u0010\u0014J\u000f\u0010$\u001a\u00020\u0003H\u0016¢\u0006\u0004\b$\u0010\u0014J\u000f\u0010%\u001a\u00020\u0000H\u0016¢\u0006\u0004\b%\u0010\u001bJ\u000f\u0010&\u001a\u00020\u0000H\u0016¢\u0006\u0004\b&\u0010\u001bJ#\u0010*\u001a\u00020\u00002\b\b\u0002\u0010(\u001a\u00020'2\b\b\u0002\u0010)\u001a\u00020'H\u0017¢\u0006\u0004\b*\u0010+J\u0017\u00100\u001a\u00020-2\u0006\u0010,\u001a\u00020'H\u0010¢\u0006\u0004\b.\u0010/J\u0018\u00103\u001a\u00020-2\u0006\u00101\u001a\u00020'H\u0087\u0002¢\u0006\u0004\b2\u0010/J\u000f\u00106\u001a\u00020'H\u0010¢\u0006\u0004\b4\u00105J\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010;\u001a\u000207H\u0010¢\u0006\u0004\b:\u00109J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020?H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010@\u001a\u00020\f2\u0006\u0010C\u001a\u00020BH\u0010¢\u0006\u0004\bD\u0010EJ/\u0010K\u001a\u00020J2\u0006\u0010F\u001a\u00020'2\u0006\u0010G\u001a\u00020\u00002\u0006\u0010H\u001a\u00020'2\u0006\u0010I\u001a\u00020'H\u0016¢\u0006\u0004\bK\u0010LJ/\u0010K\u001a\u00020J2\u0006\u0010F\u001a\u00020'2\u0006\u0010G\u001a\u0002072\u0006\u0010H\u001a\u00020'2\u0006\u0010I\u001a\u00020'H\u0016¢\u0006\u0004\bK\u0010MJ\u0015\u0010O\u001a\u00020J2\u0006\u0010N\u001a\u00020\u0000¢\u0006\u0004\bO\u0010PJ\u0015\u0010O\u001a\u00020J2\u0006\u0010N\u001a\u000207¢\u0006\u0004\bO\u0010QJ\u0015\u0010S\u001a\u00020J2\u0006\u0010R\u001a\u00020\u0000¢\u0006\u0004\bS\u0010PJ\u0015\u0010S\u001a\u00020J2\u0006\u0010R\u001a\u000207¢\u0006\u0004\bS\u0010QJ!\u0010U\u001a\u00020'2\u0006\u0010G\u001a\u00020\u00002\b\b\u0002\u0010T\u001a\u00020'H\u0007¢\u0006\u0004\bU\u0010VJ!\u0010U\u001a\u00020'2\u0006\u0010G\u001a\u0002072\b\b\u0002\u0010T\u001a\u00020'H\u0017¢\u0006\u0004\bU\u0010WJ!\u0010X\u001a\u00020'2\u0006\u0010G\u001a\u00020\u00002\b\b\u0002\u0010T\u001a\u00020'H\u0007¢\u0006\u0004\bX\u0010VJ!\u0010X\u001a\u00020'2\u0006\u0010G\u001a\u0002072\b\b\u0002\u0010T\u001a\u00020'H\u0017¢\u0006\u0004\bX\u0010WJ\u001a\u0010Z\u001a\u00020J2\b\u0010G\u001a\u0004\u0018\u00010YH\u0096\u0002¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020'H\u0016¢\u0006\u0004\b\\\u00105J\u0018\u0010]\u001a\u00020'2\u0006\u0010G\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\u0003H\u0016¢\u0006\u0004\b_\u0010\u0014J\u0017\u00102\u001a\u00020-2\u0006\u00101\u001a\u00020'H\u0007¢\u0006\u0004\b`\u0010/J\u000f\u0010b\u001a\u00020'H\u0007¢\u0006\u0004\ba\u00105R$\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0000@\u0000X\u0081\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010c\u001a\u0004\bd\u0010\u0014\"\u0004\be\u0010fR\u001c\u0010g\u001a\u0002078\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\bg\u0010h\u001a\u0004\bi\u00109R\"\u0010\\\u001a\u00020'8\u0000@\u0000X\u0081\u000e¢\u0006\u0012\n\u0004\b\\\u0010j\u001a\u0004\bk\u00105\"\u0004\bl\u0010mR\u0013\u0010b\u001a\u00020'8G@\u0006¢\u0006\u0006\u001a\u0004\bb\u00105¨\u0006q"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "", "algorithm", "digest", "(Ljava/lang/String;)Lokio/ByteString;", "key", "hmac", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "Ljava/io/ObjectInputStream;", "in", "Lkotlin/v;", "readObject", "(Ljava/io/ObjectInputStream;)V", "Ljava/io/ObjectOutputStream;", "out", "writeObject", "(Ljava/io/ObjectOutputStream;)V", "utf8", "()Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "string", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "base64", "md5", "()Lokio/ByteString;", "sha1", "sha256", "sha512", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "base64Url", "hex", "toAsciiLowercase", "toAsciiUppercase", "", "beginIndex", "endIndex", "substring", "(II)Lokio/ByteString;", "pos", "", "internalGet$jvm", "(I)B", "internalGet", "index", "getByte", "get", "getSize$jvm", "()I", "getSize", "", "toByteArray", "()[B", "internalArray$jvm", "internalArray", "Ljava/nio/ByteBuffer;", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "Ljava/io/OutputStream;", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "write$jvm", "(Lokio/Buffer;)V", "offset", "other", "otherOffset", "byteCount", "", "rangeEquals", "(ILokio/ByteString;II)Z", "(I[BII)Z", "prefix", "startsWith", "(Lokio/ByteString;)Z", "([B)Z", "suffix", "endsWith", "fromIndex", "indexOf", "(Lokio/ByteString;I)I", "([BI)I", "lastIndexOf", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "compareTo", "(Lokio/ByteString;)I", "toString", "-deprecated_getByte", "-deprecated_size", "size", "Ljava/lang/String;", "getUtf8$jvm", "setUtf8$jvm", "(Ljava/lang/String;)V", "data", "[B", "getData$jvm", "I", "getHashCode$jvm", "setHashCode$jvm", "(I)V", "<init>", "([B)V", "Companion", "jvm"}, k = 1, mv = {1, 1, 15})
public class ByteString implements Serializable, Comparable<ByteString> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final ByteString EMPTY = ByteStringKt.getCOMMON_EMPTY();
    private static final long serialVersionUID = 1;
    private final byte[] data;
    private transient int hashCode;
    private transient String utf8;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b,\u0010-J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00020\u0002\"\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\f\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0006\u0010\u000bJ\u0013\u0010\f\u001a\u00020\u0005*\u00020\rH\u0007¢\u0006\u0004\b\u0006\u0010\u000eJ\u0013\u0010\u0010\u001a\u00020\u0005*\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0016\u001a\u00020\u0005*\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u0005*\u00020\u000fH\u0007¢\u0006\u0004\b\u0017\u0010\u0011J\u0013\u0010\u0018\u001a\u00020\u0005*\u00020\u000fH\u0007¢\u0006\u0004\b\u0018\u0010\u0011J\u001b\u0010\u001c\u001a\u00020\u0005*\u00020\u00192\u0006\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001d\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u001e\u0010\u0011J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u001f\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b \u0010\u0015J\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u000fH\u0007¢\u0006\u0004\b!\u0010\u0011J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\rH\u0007¢\u0006\u0004\b#\u0010\u000eJ'\u0010\u0006\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b#\u0010\u000bJ\u001f\u0010\u001a\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b&\u0010\u001bR\u0016\u0010'\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006."}, d2 = {"Lokio/ByteString$Companion;", "", "", "", "data", "Lokio/ByteString;", "of", "([B)Lokio/ByteString;", "", "offset", "byteCount", "([BII)Lokio/ByteString;", "toByteString", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)Lokio/ByteString;", "", "encodeUtf8", "(Ljava/lang/String;)Lokio/ByteString;", "Ljava/nio/charset/Charset;", "charset", "encodeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;", "encode", "decodeBase64", "decodeHex", "Ljava/io/InputStream;", "read", "(Ljava/io/InputStream;I)Lokio/ByteString;", "readByteString", "string", "-deprecated_decodeBase64", "-deprecated_decodeHex", "-deprecated_encodeString", "-deprecated_encodeUtf8", SpeechEvent.KEY_EVENT_TTS_BUFFER, "-deprecated_of", "array", "inputstream", "-deprecated_read", "EMPTY", "Lokio/ByteString;", "", "serialVersionUID", "J", "<init>", "()V", "jvm"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i, Object obj) {
            if ((i & 1) != 0) {
                charset = Charsets.f15811a;
            }
            return companion.encodeString(str, charset);
        }

        public static /* bridge */ /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            return companion.of(bArr, i, i2);
        }

        /* JADX INFO: renamed from: -deprecated_decodeBase64, reason: not valid java name */
        public final ByteString m154deprecated_decodeBase64(String string) {
            r.f(string, "string");
            return decodeBase64(string);
        }

        /* JADX INFO: renamed from: -deprecated_decodeHex, reason: not valid java name */
        public final ByteString m155deprecated_decodeHex(String string) {
            r.f(string, "string");
            return decodeHex(string);
        }

        /* JADX INFO: renamed from: -deprecated_encodeString, reason: not valid java name */
        public final ByteString m156deprecated_encodeString(String string, Charset charset) {
            r.f(string, "string");
            r.f(charset, "charset");
            return encodeString(string, charset);
        }

        /* JADX INFO: renamed from: -deprecated_encodeUtf8, reason: not valid java name */
        public final ByteString m157deprecated_encodeUtf8(String string) {
            r.f(string, "string");
            return encodeUtf8(string);
        }

        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final ByteString m158deprecated_of(ByteBuffer buffer) {
            r.f(buffer, "buffer");
            return of(buffer);
        }

        /* JADX INFO: renamed from: -deprecated_read, reason: not valid java name */
        public final ByteString m160deprecated_read(InputStream inputstream, int byteCount) {
            r.f(inputstream, "inputstream");
            return read(inputstream, byteCount);
        }

        public final ByteString decodeBase64(String receiver) {
            r.f(receiver, "$receiver");
            return ByteStringKt.commonDecodeBase64(receiver);
        }

        public final ByteString decodeHex(String receiver) {
            r.f(receiver, "$receiver");
            return ByteStringKt.commonDecodeHex(receiver);
        }

        public final ByteString encodeString(String receiver, Charset charset) {
            r.f(receiver, "$receiver");
            r.f(charset, "charset");
            byte[] bytes = receiver.getBytes(charset);
            r.b(bytes, "(this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        public final ByteString encodeUtf8(String receiver) {
            r.f(receiver, "$receiver");
            return ByteStringKt.commonEncodeUtf8(receiver);
        }

        public final ByteString of(byte... data) {
            r.f(data, "data");
            return ByteStringKt.commonOf(data);
        }

        public final ByteString read(InputStream receiver, int i) throws IOException {
            r.f(receiver, "$receiver");
            int i2 = 0;
            if (!(i >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + i).toString());
            }
            byte[] bArr = new byte[i];
            while (i2 < i) {
                int i3 = receiver.read(bArr, i2, i - i2);
                if (i3 == -1) {
                    throw new EOFException();
                }
                i2 += i3;
            }
            return new ByteString(bArr);
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final ByteString m159deprecated_of(byte[] array, int offset, int byteCount) {
            r.f(array, "array");
            return of(array, offset, byteCount);
        }

        public final ByteString of(byte[] receiver, int i, int i2) {
            r.f(receiver, "$receiver");
            Util.checkOffsetAndCount(receiver.length, i, i2);
            byte[] bArr = new byte[i2];
            Platform.arraycopy(receiver, i, bArr, 0, i2);
            return new ByteString(bArr);
        }

        public final ByteString of(ByteBuffer receiver) {
            r.f(receiver, "$receiver");
            byte[] bArr = new byte[receiver.remaining()];
            receiver.get(bArr);
            return new ByteString(bArr);
        }
    }

    public ByteString(byte[] data) {
        r.f(data, "data");
        this.data = data;
    }

    public static final ByteString decodeBase64(String str) {
        return INSTANCE.decodeBase64(str);
    }

    public static final ByteString decodeHex(String str) {
        return INSTANCE.decodeHex(str);
    }

    private final ByteString digest(String algorithm) {
        byte[] bArrDigest = MessageDigest.getInstance(algorithm).digest(this.data);
        r.b(bArrDigest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new ByteString(bArrDigest);
    }

    public static final ByteString encodeString(String str, Charset charset) {
        return INSTANCE.encodeString(str, charset);
    }

    public static final ByteString encodeUtf8(String str) {
        return INSTANCE.encodeUtf8(str);
    }

    private final ByteString hmac(String algorithm, ByteString key) throws NoSuchAlgorithmException {
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            byte[] bArrDoFinal = mac.doFinal(this.data);
            r.b(bArrDoFinal, "mac.doFinal(data)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static /* bridge */ /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return byteString.indexOf(byteString2, i);
    }

    public static /* bridge */ /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i2 & 2) != 0) {
            i = byteString.size();
        }
        return byteString.lastIndexOf(byteString2, i);
    }

    public static final ByteString of(ByteBuffer byteBuffer) {
        return INSTANCE.of(byteBuffer);
    }

    public static final ByteString of(byte... bArr) {
        return INSTANCE.of(bArr);
    }

    public static final ByteString of(byte[] bArr, int i, int i2) {
        return INSTANCE.of(bArr, i, i2);
    }

    public static final ByteString read(InputStream inputStream, int i) throws IOException {
        return INSTANCE.read(inputStream, i);
    }

    private final void readObject(ObjectInputStream in) throws IllegalAccessException, NoSuchFieldException, IOException {
        ByteString byteString = INSTANCE.read(in, in.readInt());
        Field field = ByteString.class.getDeclaredField("data");
        r.b(field, "field");
        field.setAccessible(true);
        field.set(this, byteString.data);
    }

    public static /* bridge */ /* synthetic */ ByteString substring$default(ByteString byteString, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = byteString.size();
        }
        return byteString.substring(i, i2);
    }

    private final void writeObject(ObjectOutputStream out) throws IOException {
        out.writeInt(this.data.length);
        out.write(this.data);
    }

    /* JADX INFO: renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m152deprecated_getByte(int index) {
        return getByte(index);
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m153deprecated_size() {
        return size();
    }

    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        r.b(byteBufferAsReadOnlyBuffer, "ByteBuffer.wrap(data).asReadOnlyBuffer()");
        return byteBufferAsReadOnlyBuffer;
    }

    public String base64() {
        return ByteStringKt.commonBase64(this);
    }

    public String base64Url() {
        return ByteStringKt.commonBase64Url(this);
    }

    public final boolean endsWith(ByteString suffix) {
        r.f(suffix, "suffix");
        return ByteStringKt.commonEndsWith(this, suffix);
    }

    public boolean equals(Object other) {
        return ByteStringKt.commonEquals(this, other);
    }

    public final byte getByte(int index) {
        return internalGet$jvm(index);
    }

    /* JADX INFO: renamed from: getData$jvm, reason: from getter */
    public final byte[] getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: getHashCode$jvm, reason: from getter */
    public final int getHashCode() {
        return this.hashCode;
    }

    public int getSize$jvm() {
        return ByteStringKt.commonGetSize(this);
    }

    /* JADX INFO: renamed from: getUtf8$jvm, reason: from getter */
    public final String getUtf8() {
        return this.utf8;
    }

    public int hashCode() {
        return ByteStringKt.commonHashCode(this);
    }

    public String hex() {
        return ByteStringKt.commonHex(this);
    }

    public ByteString hmacSha1(ByteString key) {
        r.f(key, "key");
        return hmac("HmacSHA1", key);
    }

    public ByteString hmacSha256(ByteString key) {
        r.f(key, "key");
        return hmac("HmacSHA256", key);
    }

    public ByteString hmacSha512(ByteString key) {
        r.f(key, "key");
        return hmac("HmacSHA512", key);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf$default(this, byteString, 0, 2, (Object) null);
    }

    public final int indexOf(ByteString other, int fromIndex) {
        r.f(other, "other");
        return indexOf(other.internalArray$jvm(), fromIndex);
    }

    public int indexOf(byte[] bArr) {
        return indexOf$default(this, bArr, 0, 2, (Object) null);
    }

    public byte[] internalArray$jvm() {
        return ByteStringKt.commonInternalArray(this);
    }

    public byte internalGet$jvm(int pos) {
        return ByteStringKt.commonGetByte(this, pos);
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf$default(this, byteString, 0, 2, (Object) null);
    }

    public final int lastIndexOf(ByteString other, int fromIndex) {
        r.f(other, "other");
        return lastIndexOf(other.internalArray$jvm(), fromIndex);
    }

    public int lastIndexOf(byte[] bArr) {
        return lastIndexOf$default(this, bArr, 0, 2, (Object) null);
    }

    public ByteString md5() {
        return digest("MD5");
    }

    public boolean rangeEquals(int offset, ByteString other, int otherOffset, int byteCount) {
        r.f(other, "other");
        return ByteStringKt.commonRangeEquals(this, offset, other, otherOffset, byteCount);
    }

    public final void setHashCode$jvm(int i) {
        this.hashCode = i;
    }

    public final void setUtf8$jvm(String str) {
        this.utf8 = str;
    }

    public ByteString sha1() {
        return digest(TrainingMessage.ExtendAttribute.SHA_1);
    }

    public ByteString sha256() {
        return digest(TrainingMessage.ExtendAttribute.SHA_256);
    }

    public ByteString sha512() {
        return digest("SHA-512");
    }

    public final int size() {
        return getSize$jvm();
    }

    public final boolean startsWith(ByteString prefix) {
        r.f(prefix, "prefix");
        return ByteStringKt.commonStartsWith(this, prefix);
    }

    public String string(Charset charset) {
        r.f(charset, "charset");
        return new String(this.data, charset);
    }

    public ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    public ByteString substring(int i) {
        return substring$default(this, i, 0, 2, null);
    }

    public ByteString substring(int beginIndex, int endIndex) {
        return ByteStringKt.commonSubstring(this, beginIndex, endIndex);
    }

    public ByteString toAsciiLowercase() {
        return ByteStringKt.commonToAsciiLowercase(this);
    }

    public ByteString toAsciiUppercase() {
        return ByteStringKt.commonToAsciiUppercase(this);
    }

    public byte[] toByteArray() {
        return ByteStringKt.commonToByteArray(this);
    }

    public String toString() {
        return ByteStringKt.commonToString(this);
    }

    public String utf8() {
        return ByteStringKt.commonUtf8(this);
    }

    public void write(OutputStream out) throws IOException {
        r.f(out, "out");
        out.write(this.data);
    }

    public void write$jvm(Buffer buffer) {
        r.f(buffer, "buffer");
        byte[] bArr = this.data;
        buffer.write(bArr, 0, bArr.length);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString other) {
        r.f(other, "other");
        return ByteStringKt.commonCompareTo(this, other);
    }

    public final boolean endsWith(byte[] suffix) {
        r.f(suffix, "suffix");
        return ByteStringKt.commonEndsWith(this, suffix);
    }

    public int indexOf(byte[] other, int fromIndex) {
        r.f(other, "other");
        return ByteStringKt.commonIndexOf(this, other, fromIndex);
    }

    public int lastIndexOf(byte[] other, int fromIndex) {
        r.f(other, "other");
        for (int iMin = Math.min(fromIndex, this.data.length - other.length); iMin >= 0; iMin--) {
            if (Util.arrayRangeEquals(this.data, iMin, other, 0, other.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public boolean rangeEquals(int offset, byte[] other, int otherOffset, int byteCount) {
        r.f(other, "other");
        return ByteStringKt.commonRangeEquals(this, offset, other, otherOffset, byteCount);
    }

    public final boolean startsWith(byte[] prefix) {
        r.f(prefix, "prefix");
        return ByteStringKt.commonStartsWith(this, prefix);
    }

    public static /* bridge */ /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return byteString.indexOf(bArr, i);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    public static /* bridge */ /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i2 & 2) != 0) {
            i = byteString.size();
        }
        return byteString.lastIndexOf(bArr, i);
    }
}
