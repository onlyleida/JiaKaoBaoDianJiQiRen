package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.e {
    private final Object[] c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(kotlin.reflect.jvm.internal.impl.name.f fVar, Object[] values) {
        super(fVar, null);
        kotlin.jvm.internal.r.e(values, "values");
        this.c = values;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.e
    public List<c> getElements() {
        Object[] objArr = this.c;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            c.a aVar = c.b;
            kotlin.jvm.internal.r.c(obj);
            arrayList.add(aVar.a(obj, null));
        }
        return arrayList;
    }
}
