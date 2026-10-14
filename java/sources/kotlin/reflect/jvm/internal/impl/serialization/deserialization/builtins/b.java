package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends DeserializedPackageFragmentImpl implements kotlin.reflect.jvm.internal.impl.builtins.a {
    public static final a n = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final b a(kotlin.reflect.jvm.internal.impl.name.c fqName, m storageManager, z module, InputStream inputStream, boolean z) throws IOException {
            r.e(fqName, "fqName");
            r.e(storageManager, "storageManager");
            r.e(module, "module");
            r.e(inputStream, "inputStream");
            try {
                kotlin.reflect.jvm.internal.impl.metadata.b.a aVarA = kotlin.reflect.jvm.internal.impl.metadata.b.a.f15322f.a(inputStream);
                if (aVarA == null) {
                    r.u("version");
                    throw null;
                }
                if (aVarA.h()) {
                    ProtoBuf$PackageFragment proto = ProtoBuf$PackageFragment.parseFrom(inputStream, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m.e());
                    kotlin.io.b.a(inputStream, null);
                    r.d(proto, "proto");
                    return new b(fqName, storageManager, module, proto, aVarA, z, null);
                }
                throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + kotlin.reflect.jvm.internal.impl.metadata.b.a.f15323g + ", actual " + aVarA + ". Please update Kotlin");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.b.a(inputStream, th);
                    throw th2;
                }
            }
        }
    }

    private b(kotlin.reflect.jvm.internal.impl.name.c cVar, m mVar, z zVar, ProtoBuf$PackageFragment protoBuf$PackageFragment, kotlin.reflect.jvm.internal.impl.metadata.b.a aVar, boolean z) {
        super(cVar, mVar, zVar, protoBuf$PackageFragment, aVar, null);
    }

    public /* synthetic */ b(kotlin.reflect.jvm.internal.impl.name.c cVar, m mVar, z zVar, ProtoBuf$PackageFragment protoBuf$PackageFragment, kotlin.reflect.jvm.internal.impl.metadata.b.a aVar, boolean z, o oVar) {
        this(cVar, mVar, zVar, protoBuf$PackageFragment, aVar, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.w, kotlin.reflect.jvm.internal.impl.descriptors.impl.i
    public String toString() {
        return "builtins package fragment for " + e() + " from " + DescriptorUtilsKt.l(this);
    }
}
