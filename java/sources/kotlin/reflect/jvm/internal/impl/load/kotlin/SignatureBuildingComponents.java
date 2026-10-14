package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class SignatureBuildingComponents {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SignatureBuildingComponents f15194a = new SignatureBuildingComponents();

    private SignatureBuildingComponents() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c(String str) {
        if (str.length() <= 1) {
            return str;
        }
        return 'L' + str + ';';
    }

    public final String[] b(String... signatures) {
        kotlin.jvm.internal.r.e(signatures, "signatures");
        ArrayList arrayList = new ArrayList(signatures.length);
        for (String str : signatures) {
            arrayList.add("<init>(" + str + ")V");
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    public final Set<String> d(String internalName, String... signatures) {
        kotlin.jvm.internal.r.e(internalName, "internalName");
        kotlin.jvm.internal.r.e(signatures, "signatures");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : signatures) {
            linkedHashSet.add(internalName + '.' + str);
        }
        return linkedHashSet;
    }

    public final Set<String> e(String name, String... signatures) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signatures, "signatures");
        return d(h(name), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    public final Set<String> f(String name, String... signatures) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signatures, "signatures");
        return d(i(name), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    public final String g(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return kotlin.jvm.internal.r.m("java/util/function/", name);
    }

    public final String h(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return kotlin.jvm.internal.r.m("java/lang/", name);
    }

    public final String i(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return kotlin.jvm.internal.r.m("java/util/", name);
    }

    public final String j(String name, List<String> parameters, String ret) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(parameters, "parameters");
        kotlin.jvm.internal.r.e(ret, "ret");
        return name + '(' + CollectionsKt___CollectionsKt.m0(parameters, "", null, null, 0, null, new Function1<String, CharSequence>() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents$jvmDescriptor$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(String it) {
                kotlin.jvm.internal.r.e(it, "it");
                return SignatureBuildingComponents.f15194a.c(it);
            }
        }, 30, null) + ')' + c(ret);
    }

    public final String k(String internalName, String jvmDescriptor) {
        kotlin.jvm.internal.r.e(internalName, "internalName");
        kotlin.jvm.internal.r.e(jvmDescriptor, "jvmDescriptor");
        return internalName + '.' + jvmDescriptor;
    }
}
