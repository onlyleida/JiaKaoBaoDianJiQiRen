package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class DeserializedPackageFragmentImpl extends k {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.a f15541h;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d i;
    private final kotlin.reflect.jvm.internal.impl.metadata.c.d j;
    private final r k;
    private ProtoBuf$PackageFragment l;
    private MemberScope m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragmentImpl(kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.storage.m storageManager, z module, ProtoBuf$PackageFragment proto, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVar) {
        super(fqName, storageManager, module);
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        this.f15541h = metadataVersion;
        this.i = dVar;
        ProtoBuf$StringTable strings = proto.getStrings();
        kotlin.jvm.internal.r.d(strings, "proto.strings");
        ProtoBuf$QualifiedNameTable qualifiedNames = proto.getQualifiedNames();
        kotlin.jvm.internal.r.d(qualifiedNames, "proto.qualifiedNames");
        kotlin.reflect.jvm.internal.impl.metadata.c.d dVar2 = new kotlin.reflect.jvm.internal.impl.metadata.c.d(strings, qualifiedNames);
        this.j = dVar2;
        this.k = new r(proto, dVar2, metadataVersion, new Function1<kotlin.reflect.jvm.internal.impl.name.b, o0>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl$classDataFinder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final o0 invoke(kotlin.reflect.jvm.internal.impl.name.b it) {
                kotlin.jvm.internal.r.e(it, "it");
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVar3 = this.this$0.i;
                if (dVar3 != null) {
                    return dVar3;
                }
                o0 NO_SOURCE = o0.f14970a;
                kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
                return NO_SOURCE;
            }
        });
        this.l = proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.k
    public void H0(g components) {
        kotlin.jvm.internal.r.e(components, "components");
        ProtoBuf$PackageFragment protoBuf$PackageFragment = this.l;
        if (protoBuf$PackageFragment == null) {
            throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
        }
        this.l = null;
        ProtoBuf$Package protoBuf$Package = protoBuf$PackageFragment.getPackage();
        kotlin.jvm.internal.r.d(protoBuf$Package, "proto.`package`");
        this.m = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e(this, protoBuf$Package, this.j, this.f15541h, this.i, components, kotlin.jvm.internal.r.m("scope of ", this), new Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl$initialize$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Collection<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                Collection<kotlin.reflect.jvm.internal.impl.name.b> collectionB = this.this$0.B0().b();
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionB) {
                    kotlin.reflect.jvm.internal.impl.name.b bVar = (kotlin.reflect.jvm.internal.impl.name.b) obj;
                    if ((bVar.l() || ClassDeserializer.c.a().contains(bVar)) ? false : true) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((kotlin.reflect.jvm.internal.impl.name.b) it.next()).j());
                }
                return arrayList2;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.k
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public r B0() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
    public MemberScope m() {
        MemberScope memberScope = this.m;
        if (memberScope != null) {
            return memberScope;
        }
        kotlin.jvm.internal.r.u("_memberScope");
        throw null;
    }
}
