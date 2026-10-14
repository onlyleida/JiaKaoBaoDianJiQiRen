package kotlin.reflect.jvm.internal.impl.resolve;

import XI.K0.XI.XI;
import java.util.Collection;
import java.util.LinkedList;
import kotlin.collections.s;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class OverridingUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <H> Collection<H> a(Collection<? extends H> collection, Function1<? super H, ? extends kotlin.reflect.jvm.internal.impl.descriptors.a> descriptorByHandle) {
        r.e(collection, "<this>");
        r.e(descriptorByHandle, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        kotlin.reflect.jvm.internal.impl.utils.e eVarA = kotlin.reflect.jvm.internal.impl.utils.e.c.a();
        while (!linkedList.isEmpty()) {
            Object objC0 = s.c0(linkedList);
            final kotlin.reflect.jvm.internal.impl.utils.e eVarA2 = kotlin.reflect.jvm.internal.impl.utils.e.c.a();
            Collection<XI.AbstractBinderC0002XI> collectionQ = OverridingUtil.q(objC0, linkedList, descriptorByHandle, new Function1<H, v>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt$selectMostSpecificInEachOverridableGroup$overridableGroup$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(Object obj) {
                    invoke2(obj);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(H it) {
                    kotlin.reflect.jvm.internal.impl.utils.e<H> eVar = eVarA2;
                    r.d(it, "it");
                    eVar.add(it);
                }
            });
            r.d(collectionQ, "val conflictedHandles = …nflictedHandles.add(it) }");
            if (collectionQ.size() == 1 && eVarA2.isEmpty()) {
                Object objB0 = s.B0(collectionQ);
                r.d(objB0, "overridableGroup.single()");
                eVarA.add(objB0);
            } else {
                XI.AbstractBinderC0002XI abstractBinderC0002XI = (Object) OverridingUtil.M(collectionQ, descriptorByHandle);
                r.d(abstractBinderC0002XI, "selectMostSpecificMember…roup, descriptorByHandle)");
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke = descriptorByHandle.invoke(abstractBinderC0002XI);
                for (XI.AbstractBinderC0002XI it : collectionQ) {
                    r.d(it, "it");
                    if (!OverridingUtil.C(aVarInvoke, descriptorByHandle.invoke(it))) {
                        eVarA2.add(it);
                    }
                }
                if (!eVarA2.isEmpty()) {
                    eVarA.addAll(eVarA2);
                }
                eVarA.add(abstractBinderC0002XI);
            }
        }
        return eVarA;
    }
}
