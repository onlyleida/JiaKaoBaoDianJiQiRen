package kotlin.reflect.jvm.internal.impl.metadata.c;

import java.util.LinkedList;
import java.util.List;
import kotlin.Triple;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProtoBuf$StringTable f15340a;
    private final ProtoBuf$QualifiedNameTable b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15341a;

        static {
            int[] iArr = new int[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.values().length];
            iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.CLASS.ordinal()] = 1;
            iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.PACKAGE.ordinal()] = 2;
            iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.LOCAL.ordinal()] = 3;
            f15341a = iArr;
        }
    }

    public d(ProtoBuf$StringTable strings, ProtoBuf$QualifiedNameTable qualifiedNames) {
        r.e(strings, "strings");
        r.e(qualifiedNames, "qualifiedNames");
        this.f15340a = strings;
        this.b = qualifiedNames;
    }

    private final Triple<List<String>, List<String>, Boolean> c(int i) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = false;
        while (i != -1) {
            ProtoBuf$QualifiedNameTable.QualifiedName qualifiedName = this.b.getQualifiedName(i);
            String string = this.f15340a.getString(qualifiedName.getShortName());
            ProtoBuf$QualifiedNameTable.QualifiedName.Kind kind = qualifiedName.getKind();
            r.c(kind);
            int i2 = a.f15341a[kind.ordinal()];
            if (i2 == 1) {
                linkedList2.addFirst(string);
            } else if (i2 == 2) {
                linkedList.addFirst(string);
            } else if (i2 == 3) {
                linkedList2.addFirst(string);
                z = true;
            }
            i = qualifiedName.getParentQualifiedName();
        }
        return new Triple<>(linkedList, linkedList2, Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.c.c
    public boolean a(int i) {
        return c(i).getThird().booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.c.c
    public String b(int i) {
        Triple<List<String>, List<String>, Boolean> tripleC = c(i);
        List<String> listComponent1 = tripleC.component1();
        String strM0 = CollectionsKt___CollectionsKt.m0(tripleC.component2(), ".", null, null, 0, null, null, 62, null);
        if (listComponent1.isEmpty()) {
            return strM0;
        }
        return CollectionsKt___CollectionsKt.m0(listComponent1, "/", null, null, 0, null, null, 62, null) + '/' + strM0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.c.c
    public String getString(int i) {
        String string = this.f15340a.getString(i);
        r.d(string, "strings.getString(index)");
        return string;
    }
}
