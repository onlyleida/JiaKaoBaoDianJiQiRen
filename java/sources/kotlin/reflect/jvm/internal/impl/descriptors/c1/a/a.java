package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DeserializedDescriptorResolver f14877a;
    private final g b;
    private final ConcurrentHashMap<kotlin.reflect.jvm.internal.impl.name.b, MemberScope> c;

    public a(DeserializedDescriptorResolver resolver, g kotlinClassFinder) {
        r.e(resolver, "resolver");
        r.e(kotlinClassFinder, "kotlinClassFinder");
        this.f14877a = resolver;
        this.b = kotlinClassFinder;
        this.c = new ConcurrentHashMap<>();
    }

    public final MemberScope a(f fileClass) {
        Collection collectionD;
        r.e(fileClass, "fileClass");
        ConcurrentHashMap<kotlin.reflect.jvm.internal.impl.name.b, MemberScope> concurrentHashMap = this.c;
        kotlin.reflect.jvm.internal.impl.name.b bVarG = fileClass.g();
        MemberScope memberScope = concurrentHashMap.get(bVarG);
        if (memberScope == null) {
            kotlin.reflect.jvm.internal.impl.name.c cVarH = fileClass.g().h();
            r.d(cVarH, "fileClass.classId.packageFqName");
            if (fileClass.b().c() == KotlinClassHeader.Kind.MULTIFILE_CLASS) {
                List<String> listF = fileClass.b().f();
                collectionD = new ArrayList();
                Iterator<T> it = listF.iterator();
                while (it.hasNext()) {
                    kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.resolve.jvm.d.d((String) it.next()).e());
                    r.d(bVarM, "topLevel(JvmClassName.by…velClassMaybeWithDollars)");
                    kotlin.reflect.jvm.internal.impl.load.kotlin.m mVarB = kotlin.reflect.jvm.internal.impl.load.kotlin.l.b(this.b, bVarM);
                    if (mVarB != null) {
                        collectionD.add(mVarB);
                    }
                }
            } else {
                collectionD = t.d(fileClass);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.impl.l lVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.l(this.f14877a.e().p(), cVarH);
            ArrayList arrayList = new ArrayList();
            Iterator it2 = collectionD.iterator();
            while (it2.hasNext()) {
                MemberScope memberScopeC = this.f14877a.c(lVar, (kotlin.reflect.jvm.internal.impl.load.kotlin.m) it2.next());
                if (memberScopeC != null) {
                    arrayList.add(memberScopeC);
                }
            }
            List listM0 = CollectionsKt___CollectionsKt.M0(arrayList);
            MemberScope memberScopeA = kotlin.reflect.jvm.internal.impl.resolve.scopes.b.f15523d.a("package " + cVarH + " (" + fileClass + ')', listM0);
            MemberScope memberScopePutIfAbsent = concurrentHashMap.putIfAbsent(bVarG, memberScopeA);
            memberScope = memberScopePutIfAbsent != null ? memberScopePutIfAbsent : memberScopeA;
        }
        r.d(memberScope, "cache.getOrPut(fileClass…ileClass)\", scopes)\n    }");
        return memberScope;
    }
}
