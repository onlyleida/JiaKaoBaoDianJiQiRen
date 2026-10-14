package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class DeserializedTypeParameterDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.b {
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.i k;
    private final ProtoBuf$TypeParameter l;
    private final a m;

    /* JADX WARN: Illegal instructions before constructor call */
    public DeserializedTypeParameterDescriptor(kotlin.reflect.jvm.internal.impl.serialization.deserialization.i c, ProtoBuf$TypeParameter proto, int i) {
        r.e(c, "c");
        r.e(proto, "proto");
        m mVarH = c.h();
        k kVarE = c.e();
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        kotlin.reflect.jvm.internal.impl.name.f fVarB = q.b(c.g(), proto.getName());
        t tVar = t.f15615a;
        ProtoBuf$TypeParameter.Variance variance = proto.getVariance();
        r.d(variance, "proto.variance");
        super(mVarH, kVarE, eVarB, fVarB, tVar.d(variance), proto.getReified(), i, o0.f14970a, r0.a.f14979a);
        this.k = c;
        this.l = proto;
        this.m = new a(c.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor$annotations$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                return CollectionsKt___CollectionsKt.M0(this.this$0.k.c().d().f(this.this$0.K0(), this.this$0.k.g()));
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    public /* bridge */ /* synthetic */ void G0(a0 a0Var) {
        L0(a0Var);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected List<a0> H0() {
        List<ProtoBuf$Type> listP = kotlin.reflect.jvm.internal.impl.metadata.c.f.p(this.l, this.k.j());
        if (listP.isEmpty()) {
            return kotlin.collections.t.d(DescriptorUtilsKt.g(this).y());
        }
        TypeDeserializer typeDeserializerI = this.k.i();
        ArrayList arrayList = new ArrayList(v.u(listP, 10));
        Iterator<T> it = listP.iterator();
        while (it.hasNext()) {
            arrayList.add(typeDeserializerI.q((ProtoBuf$Type) it.next()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.b, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public a getAnnotations() {
        return this.m;
    }

    public final ProtoBuf$TypeParameter K0() {
        return this.l;
    }

    protected Void L0(a0 type) {
        r.e(type, "type");
        throw new IllegalStateException(r.m("There should be no cycles for deserialized type parameters, but found for: ", this));
    }
}
