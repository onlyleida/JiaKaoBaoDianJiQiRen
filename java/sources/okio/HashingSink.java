package okio;

import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0019\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018B!\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0019\u001a\u00020\t\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u001aJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0013\u0010\f\u001a\u00020\t8G@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lokio/HashingSink;", "Lokio/ForwardingSink;", "Lokio/Buffer;", SocialConstants.PARAM_SOURCE, "", "byteCount", "Lkotlin/v;", "write", "(Lokio/Buffer;J)V", "Lokio/ByteString;", "-deprecated_hash", "()Lokio/ByteString;", "hash", "Ljava/security/MessageDigest;", "messageDigest", "Ljava/security/MessageDigest;", "Ljavax/crypto/Mac;", "mac", "Ljavax/crypto/Mac;", "Lokio/Sink;", "sink", "", "algorithm", "<init>", "(Lokio/Sink;Ljava/lang/String;)V", "key", "(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V", "Companion", "jvm"}, k = 1, mv = {1, 1, 15})
public final class HashingSink extends ForwardingSink {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Mac mac;
    private final MessageDigest messageDigest;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\t\u0010\u0006J\u001f\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000e\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000f\u0010\r¨\u0006\u0012"}, d2 = {"Lokio/HashingSink$Companion;", "", "Lokio/Sink;", "sink", "Lokio/HashingSink;", "md5", "(Lokio/Sink;)Lokio/HashingSink;", "sha1", "sha256", "sha512", "Lokio/ByteString;", "key", "hmacSha1", "(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;", "hmacSha256", "hmacSha512", "<init>", "()V", "jvm"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final HashingSink hmacSha1(Sink sink, ByteString key) {
            r.f(sink, "sink");
            r.f(key, "key");
            return new HashingSink(sink, key, "HmacSHA1");
        }

        public final HashingSink hmacSha256(Sink sink, ByteString key) {
            r.f(sink, "sink");
            r.f(key, "key");
            return new HashingSink(sink, key, "HmacSHA256");
        }

        public final HashingSink hmacSha512(Sink sink, ByteString key) {
            r.f(sink, "sink");
            r.f(key, "key");
            return new HashingSink(sink, key, "HmacSHA512");
        }

        public final HashingSink md5(Sink sink) {
            r.f(sink, "sink");
            return new HashingSink(sink, "MD5");
        }

        public final HashingSink sha1(Sink sink) {
            r.f(sink, "sink");
            return new HashingSink(sink, TrainingMessage.ExtendAttribute.SHA_1);
        }

        public final HashingSink sha256(Sink sink) {
            r.f(sink, "sink");
            return new HashingSink(sink, TrainingMessage.ExtendAttribute.SHA_256);
        }

        public final HashingSink sha512(Sink sink) {
            r.f(sink, "sink");
            return new HashingSink(sink, "SHA-512");
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(Sink sink, String algorithm) {
        super(sink);
        r.f(sink, "sink");
        r.f(algorithm, "algorithm");
        this.messageDigest = MessageDigest.getInstance(algorithm);
        this.mac = null;
    }

    public static final HashingSink hmacSha1(Sink sink, ByteString byteString) {
        return INSTANCE.hmacSha1(sink, byteString);
    }

    public static final HashingSink hmacSha256(Sink sink, ByteString byteString) {
        return INSTANCE.hmacSha256(sink, byteString);
    }

    public static final HashingSink hmacSha512(Sink sink, ByteString byteString) {
        return INSTANCE.hmacSha512(sink, byteString);
    }

    public static final HashingSink md5(Sink sink) {
        return INSTANCE.md5(sink);
    }

    public static final HashingSink sha1(Sink sink) {
        return INSTANCE.sha1(sink);
    }

    public static final HashingSink sha256(Sink sink) {
        return INSTANCE.sha256(sink);
    }

    public static final HashingSink sha512(Sink sink) {
        return INSTANCE.sha512(sink);
    }

    /* JADX INFO: renamed from: -deprecated_hash, reason: not valid java name */
    public final ByteString m165deprecated_hash() {
        return hash();
    }

    public final ByteString hash() {
        byte[] result;
        MessageDigest messageDigest = this.messageDigest;
        if (messageDigest != null) {
            result = messageDigest.digest();
        } else {
            Mac mac = this.mac;
            if (mac == null) {
                r.o();
                throw null;
            }
            result = mac.doFinal();
        }
        r.b(result, "result");
        return new ByteString(result);
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer source, long byteCount) throws IOException {
        r.f(source, "source");
        Util.checkOffsetAndCount(source.size(), 0L, byteCount);
        Segment segment = source.head;
        if (segment == null) {
            r.o();
            throw null;
        }
        long j = 0;
        while (j < byteCount) {
            int iMin = (int) Math.min(byteCount - j, segment.limit - segment.pos);
            MessageDigest messageDigest = this.messageDigest;
            if (messageDigest != null) {
                messageDigest.update(segment.data, segment.pos, iMin);
            } else {
                Mac mac = this.mac;
                if (mac == null) {
                    r.o();
                    throw null;
                }
                mac.update(segment.data, segment.pos, iMin);
            }
            j += (long) iMin;
            segment = segment.next;
            if (segment == null) {
                r.o();
                throw null;
            }
        }
        super.write(source, byteCount);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(Sink sink, ByteString key, String algorithm) throws NoSuchAlgorithmException {
        super(sink);
        r.f(sink, "sink");
        r.f(key, "key");
        r.f(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            this.mac = mac;
            this.messageDigest = null;
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
