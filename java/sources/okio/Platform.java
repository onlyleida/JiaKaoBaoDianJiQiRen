package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: okio.-Platform, reason: invalid class name */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\u001a7\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\u000b\u001a\u00020\n*\u00020\u0000H\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0013\u0010\r\u001a\u00020\u0000*\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000e*\n\u0010\u0010\"\u00020\u000f2\u00020\u000f*\n\u0010\u0012\"\u00020\u00112\u00020\u0011*\n\u0010\u0013\"\u00020\u00112\u00020\u0011*\n\u0010\u0014\"\u00020\u00112\u00020\u0011*\n\u0010\u0015\"\u00020\u00112\u00020\u0011¨\u0006\u0016"}, d2 = {"", "src", "", "srcPos", "dest", "destPos", "length", "Lkotlin/v;", "arraycopy", "([BI[BII)V", "", "toUtf8String", "([B)Ljava/lang/String;", "asUtf8ToByteArray", "(Ljava/lang/String;)[B", "Ljava/lang/ArrayIndexOutOfBoundsException;", "ArrayIndexOutOfBoundsException", "", "JvmField", "JvmName", "JvmOverloads", "JvmStatic", "jvm"}, k = 2, mv = {1, 1, 15})
public final class Platform {
    public static final void arraycopy(byte[] src, int i, byte[] dest, int i2, int i3) {
        r.f(src, "src");
        r.f(dest, "dest");
        System.arraycopy(src, i, dest, i2, i3);
    }

    public static final byte[] asUtf8ToByteArray(String receiver) {
        r.f(receiver, "$receiver");
        byte[] bytes = receiver.getBytes(Charsets.f15811a);
        r.b(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final String toUtf8String(byte[] receiver) {
        r.f(receiver, "$receiver");
        return new String(receiver, Charsets.f15811a);
    }
}
