package com.drakeet.multitype;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
public class MutableTypes implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<g<?>> f11695a;

    public MutableTypes(int i, List<g<?>> types) {
        r.f(types, "types");
        this.f11695a = types;
    }

    @Override // com.drakeet.multitype.h
    public int a(Class<?> clazz) {
        r.f(clazz, "clazz");
        Iterator<g<?>> it = d().iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (r.a(it.next().a(), clazz)) {
                break;
            }
            i2++;
        }
        if (i2 != -1) {
            return i2;
        }
        Iterator<g<?>> it2 = d().iterator();
        while (it2.hasNext()) {
            if (it2.next().a().isAssignableFrom(clazz)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.drakeet.multitype.h
    public boolean b(final Class<?> clazz) {
        r.f(clazz, "clazz");
        return z.F(d(), new Function1<g<?>, Boolean>() { // from class: com.drakeet.multitype.MutableTypes$unregister$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(g<?> gVar) {
                return Boolean.valueOf(invoke2(gVar));
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(g<?> it) {
                r.f(it, "it");
                return r.a(it.a(), clazz);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.drakeet.multitype.h
    public <T> void c(g<T> type) {
        r.f(type, "type");
        d().add(type);
    }

    public List<g<?>> d() {
        return this.f11695a;
    }

    @Override // com.drakeet.multitype.h
    public <T> g<T> getType(int i) {
        Object obj = d().get(i);
        if (obj != null) {
            return (g) obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.drakeet.multitype.Type<T>");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ MutableTypes(int i, List list, int i2, o oVar) {
        i = (i2 & 1) != 0 ? 0 : i;
        this(i, (i2 & 2) != 0 ? new ArrayList(i) : list);
    }
}
