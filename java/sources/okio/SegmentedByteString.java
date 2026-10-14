package okio;

import com.iflytek.cloud.SpeechEvent;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010>\u001a\u00020\u0002¢\u0006\u0004\bX\u0010YJ\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\rJ\u000f\u0010\u0014\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\u0007J\u000f\u0010\u0015\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0007J\u000f\u0010\u0016\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0007J\u000f\u0010\u0017\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0019\u0010\u0007J\u0017\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010\rJ\u001f\u0010\"\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010'\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u0002H\u0010¢\u0006\u0004\b%\u0010&J\u000f\u0010*\u001a\u00020\u0002H\u0010¢\u0006\u0004\b(\u0010)J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\n /*\u0004\u0018\u00010.0.H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00105\u001a\u0002042\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00105\u001a\u0002042\u0006\u00108\u001a\u000207H\u0010¢\u0006\u0004\b9\u0010:J/\u0010@\u001a\u00020?2\u0006\u0010;\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u00012\u0006\u0010=\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0002H\u0016¢\u0006\u0004\b@\u0010AJ/\u0010@\u001a\u00020?2\u0006\u0010;\u001a\u00020\u00022\u0006\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0002H\u0016¢\u0006\u0004\b@\u0010BJ\u001f\u0010D\u001a\u00020\u00022\u0006\u0010<\u001a\u00020+2\u0006\u0010C\u001a\u00020\u0002H\u0016¢\u0006\u0004\bD\u0010EJ\u001f\u0010F\u001a\u00020\u00022\u0006\u0010<\u001a\u00020+2\u0006\u0010C\u001a\u00020\u0002H\u0016¢\u0006\u0004\bF\u0010EJ\u000f\u0010H\u001a\u00020+H\u0010¢\u0006\u0004\bG\u0010-J\u001a\u0010J\u001a\u00020?2\b\u0010<\u001a\u0004\u0018\u00010IH\u0096\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\u0002H\u0016¢\u0006\u0004\bL\u0010)J\u000f\u0010M\u001a\u00020\u000bH\u0016¢\u0006\u0004\bM\u0010\rR\"\u0010O\u001a\b\u0012\u0004\u0012\u00020+0N8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u001c\u0010T\u001a\u00020S8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W¨\u0006Z"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "", "pos", "segment", "(I)I", "toByteString", "()Lokio/ByteString;", "Ljava/lang/Object;", "writeReplace", "()Ljava/lang/Object;", "", "utf8", "()Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "string", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "base64", "hex", "toAsciiLowercase", "toAsciiUppercase", "md5", "sha1", "sha256", "sha512", "key", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "base64Url", "beginIndex", "endIndex", "substring", "(II)Lokio/ByteString;", "", "internalGet$jvm", "(I)B", "internalGet", "getSize$jvm", "()I", "getSize", "", "toByteArray", "()[B", "Ljava/nio/ByteBuffer;", "kotlin.jvm.PlatformType", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "Ljava/io/OutputStream;", "out", "Lkotlin/v;", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "write$jvm", "(Lokio/Buffer;)V", "offset", "other", "otherOffset", "byteCount", "", "rangeEquals", "(ILokio/ByteString;II)Z", "(I[BII)Z", "fromIndex", "indexOf", "([BI)I", "lastIndexOf", "internalArray$jvm", "internalArray", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "", "segments", "[[B", "getSegments", "()[[B", "", "directory", "[I", "getDirectory", "()[I", "<init>", "(Lokio/Buffer;I)V", "jvm"}, k = 1, mv = {1, 1, 15})
public final class SegmentedByteString extends ByteString {
    private final transient int[] directory;
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(Buffer buffer, int i) {
        super(ByteString.EMPTY.getData());
        r.f(buffer, "buffer");
        Util.checkOffsetAndCount(buffer.size(), 0L, i);
        Segment segment = buffer.head;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (segment == null) {
                r.o();
                throw null;
            }
            int i5 = segment.limit;
            int i6 = segment.pos;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            segment = segment.next;
        }
        byte[][] bArr = new byte[i4][];
        this.directory = new int[i4 * 2];
        Segment segment2 = buffer.head;
        int i7 = 0;
        while (i2 < i) {
            if (segment2 == null) {
                r.o();
                throw null;
            }
            bArr[i7] = segment2.data;
            int i8 = segment2.limit;
            int i9 = segment2.pos;
            i2 += i8 - i9;
            if (i2 > i) {
                i2 = i;
            }
            int[] iArr = this.directory;
            iArr[i7] = i2;
            iArr[i7 + i4] = i9;
            segment2.shared = true;
            i7++;
            segment2 = segment2.next;
        }
        this.segments = bArr;
    }

    private final int segment(int pos) {
        int iBinarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, pos + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        ByteString byteString = toByteString();
        if (byteString != null) {
            return byteString;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.Object");
    }

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof ByteString) {
            ByteString byteString = (ByteString) other;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    public final int[] getDirectory() {
        return this.directory;
    }

    public final byte[][] getSegments() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$jvm() {
        return this.directory[this.segments.length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode = getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            byte[] bArr = this.segments[i];
            int[] iArr = this.directory;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = (i5 - i2) + i4;
            while (i4 < i6) {
                i3 = (i3 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i2 = i5;
        }
        setHashCode$jvm(i3);
        return i3;
    }

    @Override // okio.ByteString
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public ByteString hmacSha1(ByteString key) {
        r.f(key, "key");
        return toByteString().hmacSha1(key);
    }

    @Override // okio.ByteString
    public ByteString hmacSha256(ByteString key) {
        r.f(key, "key");
        return toByteString().hmacSha256(key);
    }

    @Override // okio.ByteString
    public ByteString hmacSha512(ByteString key) {
        r.f(key, "key");
        return toByteString().hmacSha512(key);
    }

    @Override // okio.ByteString
    public int indexOf(byte[] other, int fromIndex) {
        r.f(other, "other");
        return toByteString().indexOf(other, fromIndex);
    }

    @Override // okio.ByteString
    public byte[] internalArray$jvm() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$jvm(int pos) {
        Util.checkOffsetAndCount(this.directory[this.segments.length - 1], pos, 1L);
        int iSegment = segment(pos);
        int i = iSegment == 0 ? 0 : this.directory[iSegment - 1];
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        return bArr[iSegment][(pos - i) + iArr[bArr.length + iSegment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] other, int fromIndex) {
        r.f(other, "other");
        return toByteString().lastIndexOf(other, fromIndex);
    }

    @Override // okio.ByteString
    public ByteString md5() {
        return toByteString().md5();
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int offset, ByteString other, int otherOffset, int byteCount) {
        r.f(other, "other");
        if (offset < 0 || offset > size() - byteCount) {
            return false;
        }
        int iSegment = segment(offset);
        while (byteCount > 0) {
            int i = iSegment == 0 ? 0 : this.directory[iSegment - 1];
            int iMin = Math.min(byteCount, ((this.directory[iSegment] - i) + i) - offset);
            int[] iArr = this.directory;
            byte[][] bArr = this.segments;
            if (!other.rangeEquals(otherOffset, bArr[iSegment], (offset - i) + iArr[bArr.length + iSegment], iMin)) {
                return false;
            }
            offset += iMin;
            otherOffset += iMin;
            byteCount -= iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public ByteString sha1() {
        return toByteString().sha1();
    }

    @Override // okio.ByteString
    public ByteString sha256() {
        return toByteString().sha256();
    }

    @Override // okio.ByteString
    public ByteString sha512() {
        return toByteString().sha512();
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        r.f(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public ByteString substring(int beginIndex, int endIndex) {
        return toByteString().substring(beginIndex, endIndex);
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    public byte[] toByteArray() {
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.directory;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            Platform.arraycopy(this.segments[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // okio.ByteString
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public String utf8() {
        return toByteString().utf8();
    }

    @Override // okio.ByteString
    public void write(OutputStream out) throws IOException {
        r.f(out, "out");
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.directory;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            out.write(this.segments[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    @Override // okio.ByteString
    public void write$jvm(Buffer buffer) {
        r.f(buffer, "buffer");
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.directory;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            Segment segment = new Segment(this.segments[i], i3, (i3 + i4) - i2, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                if (segment2 == null) {
                    r.o();
                    throw null;
                }
                Segment segment3 = segment2.prev;
                if (segment3 == null) {
                    r.o();
                    throw null;
                }
                segment3.push(segment);
            }
            i++;
            i2 = i4;
        }
        buffer.setSize$jvm(buffer.size() + ((long) i2));
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int offset, byte[] other, int otherOffset, int byteCount) {
        r.f(other, "other");
        if (offset < 0 || offset > size() - byteCount || otherOffset < 0 || otherOffset > other.length - byteCount) {
            return false;
        }
        int iSegment = segment(offset);
        while (byteCount > 0) {
            int i = iSegment == 0 ? 0 : this.directory[iSegment - 1];
            int iMin = Math.min(byteCount, ((this.directory[iSegment] - i) + i) - offset);
            int[] iArr = this.directory;
            byte[][] bArr = this.segments;
            if (!Util.arrayRangeEquals(bArr[iSegment], (offset - i) + iArr[bArr.length + iSegment], other, otherOffset, iMin)) {
                return false;
            }
            offset += iMin;
            otherOffset += iMin;
            byteCount -= iMin;
            iSegment++;
        }
        return true;
    }
}
