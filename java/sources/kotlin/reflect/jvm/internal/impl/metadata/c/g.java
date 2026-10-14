package kotlin.reflect.jvm.internal.impl.metadata.c;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.s;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<ProtoBuf$Type> f15342a;

    public g(ProtoBuf$TypeTable typeTable) {
        r.e(typeTable, "typeTable");
        List<ProtoBuf$Type> typeList = typeTable.getTypeList();
        if (typeTable.hasFirstNullable()) {
            int firstNullable = typeTable.getFirstNullable();
            List<ProtoBuf$Type> typeList2 = typeTable.getTypeList();
            r.d(typeList2, "typeTable.typeList");
            ArrayList arrayList = new ArrayList(v.u(typeList2, 10));
            int i = 0;
            for (Object obj : typeList2) {
                int i2 = i + 1;
                if (i < 0) {
                    s.t();
                    throw null;
                }
                ProtoBuf$Type protoBuf$TypeN = (ProtoBuf$Type) obj;
                if (i >= firstNullable) {
                    ProtoBuf$Type.b builder = protoBuf$TypeN.toBuilder();
                    builder.L(true);
                    protoBuf$TypeN = builder.build();
                }
                arrayList.add(protoBuf$TypeN);
                i = i2;
            }
            typeList = arrayList;
        }
        r.d(typeList, "run {\n        val origin… else originalTypes\n    }");
        this.f15342a = typeList;
    }

    public final ProtoBuf$Type a(int i) {
        return this.f15342a.get(i);
    }
}
