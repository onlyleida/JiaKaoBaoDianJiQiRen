package okio;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.u;
import kotlin.collections.y;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u000b\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0017B!\b\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\u00020\r8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lokio/Options;", "Ljava/util/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "", "index", "get", "(I)Lokio/ByteString;", "", "byteStrings", "[Lokio/ByteString;", "getByteStrings$jvm", "()[Lokio/ByteString;", "", "trie", "[I", "getTrie$jvm", "()[I", "getSize", "()I", "size", "<init>", "([Lokio/ByteString;[I)V", "Companion", "jvm"}, k = 1, mv = {1, 1, 15})
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ByteString[] byteStrings;
    private final int[] trie;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J[\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\u00122\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\u0011\"\u00020\tH\u0007¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\u00020\u0002*\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lokio/Options$Companion;", "", "", "nodeOffset", "Lokio/Buffer;", "node", "", "byteStringOffset", "", "Lokio/ByteString;", "byteStrings", "fromIndex", "toIndex", "indexes", "Lkotlin/v;", "buildTrieRecursive", "(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V", "", "Lokio/Options;", "of", "([Lokio/ByteString;)Lokio/Options;", "getIntCount", "(Lokio/Buffer;)J", "intCount", "<init>", "()V", "jvm"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        private final void buildTrieRecursive(long nodeOffset, Buffer node, int byteStringOffset, List<? extends ByteString> byteStrings, int fromIndex, int toIndex, List<Integer> indexes) throws IOException {
            int i;
            int i2;
            int i3;
            int i4 = byteStringOffset;
            if (!(fromIndex < toIndex)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            for (int i5 = fromIndex; i5 < toIndex; i5++) {
                if (!(byteStrings.get(i5).size() >= i4)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
            ByteString byteString = byteStrings.get(fromIndex);
            ByteString byteString2 = byteStrings.get(toIndex - 1);
            if (i4 == byteString.size()) {
                int iIntValue = indexes.get(fromIndex).intValue();
                int i6 = fromIndex + 1;
                ByteString byteString3 = byteStrings.get(i6);
                i = i6;
                i2 = iIntValue;
                byteString = byteString3;
            } else {
                i = fromIndex;
                i2 = -1;
            }
            if (byteString.getByte(i4) == byteString2.getByte(i4)) {
                int iMin = Math.min(byteString.size(), byteString2.size());
                int i7 = 0;
                for (int i8 = i4; i8 < iMin && byteString.getByte(i8) == byteString2.getByte(i8); i8++) {
                    i7++;
                }
                long intCount = nodeOffset + getIntCount(node) + ((long) 2) + ((long) i7) + 1;
                node.writeInt(-i7);
                node.writeInt(i2);
                int i9 = i4 + i7;
                while (i4 < i9) {
                    node.writeInt(byteString.getByte(i4) & UnsignedBytes.MAX_VALUE);
                    i4++;
                }
                if (i + 1 == toIndex) {
                    if (!(i9 == byteStrings.get(i).size())) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    node.writeInt(indexes.get(i).intValue());
                    return;
                } else {
                    Buffer buffer = new Buffer();
                    node.writeInt(((int) (getIntCount(buffer) + intCount)) * (-1));
                    buildTrieRecursive(intCount, buffer, i9, byteStrings, i, toIndex, indexes);
                    node.writeAll(buffer);
                    return;
                }
            }
            int i10 = 1;
            for (int i11 = i + 1; i11 < toIndex; i11++) {
                if (byteStrings.get(i11 - 1).getByte(i4) != byteStrings.get(i11).getByte(i4)) {
                    i10++;
                }
            }
            long intCount2 = nodeOffset + getIntCount(node) + ((long) 2) + ((long) (i10 * 2));
            node.writeInt(i10);
            node.writeInt(i2);
            for (int i12 = i; i12 < toIndex; i12++) {
                byte b = byteStrings.get(i12).getByte(i4);
                if (i12 == i || b != byteStrings.get(i12 - 1).getByte(i4)) {
                    node.writeInt(b & UnsignedBytes.MAX_VALUE);
                }
            }
            Buffer buffer2 = new Buffer();
            while (i < toIndex) {
                byte b2 = byteStrings.get(i).getByte(i4);
                int i13 = i + 1;
                int i14 = i13;
                while (true) {
                    if (i14 >= toIndex) {
                        i3 = toIndex;
                        break;
                    } else {
                        if (b2 != byteStrings.get(i14).getByte(i4)) {
                            i3 = i14;
                            break;
                        }
                        i14++;
                    }
                }
                if (i13 == i3 && i4 + 1 == byteStrings.get(i).size()) {
                    node.writeInt(indexes.get(i).intValue());
                } else {
                    node.writeInt(((int) (intCount2 + getIntCount(buffer2))) * (-1));
                    buildTrieRecursive(intCount2, buffer2, i4 + 1, byteStrings, i, i3, indexes);
                }
                buffer2 = buffer2;
                i = i3;
            }
            node.writeAll(buffer2);
        }

        static /* bridge */ /* synthetic */ void buildTrieRecursive$default(Companion companion, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) throws IOException {
            companion.buildTrieRecursive((i4 & 1) != 0 ? 0L : j, buffer, (i4 & 4) != 0 ? 0 : i, list, (i4 & 16) != 0 ? 0 : i2, (i4 & 32) != 0 ? list.size() : i3, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / ((long) 4);
        }

        public final Options of(ByteString... byteStrings) throws IOException {
            r.f(byteStrings, "byteStrings");
            int i = 0;
            o oVar = null;
            if (byteStrings.length == 0) {
                return new Options(new ByteString[0], new int[]{0, -1}, oVar);
            }
            List listQ0 = ArraysKt___ArraysKt.q0(byteStrings);
            y.z(listQ0);
            ArrayList arrayList = new ArrayList(byteStrings.length);
            for (ByteString byteString : byteStrings) {
                arrayList.add(-1);
            }
            Object[] array = arrayList.toArray(new Integer[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            Integer[] numArr = (Integer[]) array;
            List listP = u.p((Integer[]) Arrays.copyOf(numArr, numArr.length));
            int length = byteStrings.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                listP.set(u.i(listQ0, byteStrings[i2], 0, 0, 6, null), Integer.valueOf(i3));
                i2++;
                i3++;
            }
            if (!(((ByteString) listQ0.get(0)).size() > 0)) {
                throw new IllegalArgumentException("the empty byte string is not a supported option".toString());
            }
            int i4 = 0;
            while (i4 < listQ0.size()) {
                ByteString byteString2 = (ByteString) listQ0.get(i4);
                int i5 = i4 + 1;
                int i6 = i5;
                while (i6 < listQ0.size()) {
                    ByteString byteString3 = (ByteString) listQ0.get(i6);
                    if (!byteString3.startsWith(byteString2)) {
                        break;
                    }
                    if (!(byteString3.size() != byteString2.size())) {
                        throw new IllegalArgumentException(("duplicate option: " + byteString3).toString());
                    }
                    if (((Number) listP.get(i6)).intValue() > ((Number) listP.get(i4)).intValue()) {
                        listQ0.remove(i6);
                        listP.remove(i6);
                    } else {
                        i6++;
                    }
                }
                i4 = i5;
            }
            Buffer buffer = new Buffer();
            buildTrieRecursive$default(this, 0L, buffer, 0, listQ0, 0, 0, listP, 53, null);
            int[] iArr = new int[(int) getIntCount(buffer)];
            while (!buffer.exhausted()) {
                iArr[i] = buffer.readInt();
                i++;
            }
            return new Options((ByteString[]) byteStrings.clone(), iArr, oVar);
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, o oVar) {
        this(byteStringArr, iArr);
    }

    public static final Options of(ByteString... byteStringArr) {
        return INSTANCE.of(byteStringArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj != null ? obj instanceof ByteString : true) {
            return contains((ByteString) obj);
        }
        return false;
    }

    /* JADX INFO: renamed from: getByteStrings$jvm, reason: from getter */
    public final ByteString[] getByteStrings() {
        return this.byteStrings;
    }

    public int getSize() {
        return this.byteStrings.length;
    }

    /* JADX INFO: renamed from: getTrie$jvm, reason: from getter */
    public final int[] getTrie() {
        return this.trie;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj != null ? obj instanceof ByteString : true) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj != null ? obj instanceof ByteString : true) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ ByteString remove(int i) {
        return removeAt(i);
    }

    public /* bridge */ ByteString removeAt(int i) {
        return (ByteString) super.remove(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int index) {
        return this.byteStrings[index];
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj != null ? obj instanceof ByteString : true) {
            return remove((ByteString) obj);
        }
        return false;
    }

    public /* bridge */ boolean remove(ByteString byteString) {
        return super.remove((Object) byteString);
    }
}
