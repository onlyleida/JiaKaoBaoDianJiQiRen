package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f15653a = new c();

    private c() {
    }

    private final boolean c(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.k kVar) {
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        if (mVarJ.l0(hVar)) {
            return true;
        }
        if (mVarJ.x(hVar)) {
            return false;
        }
        if (abstractTypeCheckerContext.o() && mVarJ.F(hVar)) {
            return true;
        }
        return mVarJ.w0(mVarJ.d(hVar), kVar);
    }

    private final boolean e(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h hVar, kotlin.reflect.jvm.internal.impl.types.model.h hVar2) {
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        if (f.b) {
            if (!mVarJ.a(hVar) && !mVarJ.j0(mVarJ.d(hVar))) {
                abstractTypeCheckerContext.m(hVar);
            }
            if (!mVarJ.a(hVar2)) {
                abstractTypeCheckerContext.m(hVar2);
            }
        }
        if (mVarJ.x(hVar2) || mVarJ.Z(hVar)) {
            return true;
        }
        if ((hVar instanceof kotlin.reflect.jvm.internal.impl.types.model.b) && mVarJ.j((kotlin.reflect.jvm.internal.impl.types.model.b) hVar)) {
            return true;
        }
        c cVar = f15653a;
        if (cVar.a(abstractTypeCheckerContext, hVar, AbstractTypeCheckerContext.a.b.f15638a)) {
            return true;
        }
        if (mVarJ.Z(hVar2) || cVar.a(abstractTypeCheckerContext, hVar2, AbstractTypeCheckerContext.a.d.f15640a) || mVarJ.J(hVar)) {
            return false;
        }
        return cVar.b(abstractTypeCheckerContext, hVar, mVarJ.d(hVar2));
    }

    public final boolean a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.h type, AbstractTypeCheckerContext.a supertypesPolicy) {
        kotlin.jvm.internal.r.e(abstractTypeCheckerContext, "<this>");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(supertypesPolicy, "supertypesPolicy");
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = abstractTypeCheckerContext.j();
        if (!((mVarJ.J(type) && !mVarJ.x(type)) || mVarJ.Z(type))) {
            abstractTypeCheckerContext.k();
            ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> arrayDequeH = abstractTypeCheckerContext.h();
            kotlin.jvm.internal.r.c(arrayDequeH);
            Set<kotlin.reflect.jvm.internal.impl.types.model.h> setI = abstractTypeCheckerContext.i();
            kotlin.jvm.internal.r.c(setI);
            arrayDequeH.push(type);
            while (!arrayDequeH.isEmpty()) {
                if (setI.size() > 1000) {
                    throw new IllegalStateException(("Too many supertypes for type: " + type + ". Supertypes = " + CollectionsKt___CollectionsKt.m0(setI, null, null, null, 0, null, null, 63, null)).toString());
                }
                kotlin.reflect.jvm.internal.impl.types.model.h current = arrayDequeH.pop();
                kotlin.jvm.internal.r.d(current, "current");
                if (setI.add(current)) {
                    AbstractTypeCheckerContext.a aVar = mVarJ.x(current) ? AbstractTypeCheckerContext.a.c.f15639a : supertypesPolicy;
                    if (!(!kotlin.jvm.internal.r.a(aVar, AbstractTypeCheckerContext.a.c.f15639a))) {
                        aVar = null;
                    }
                    if (aVar == null) {
                        continue;
                    } else {
                        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ2 = abstractTypeCheckerContext.j();
                        Iterator<kotlin.reflect.jvm.internal.impl.types.model.g> it = mVarJ2.U(mVarJ2.d(current)).iterator();
                        while (it.hasNext()) {
                            kotlin.reflect.jvm.internal.impl.types.model.h hVarA = aVar.a(abstractTypeCheckerContext, it.next());
                            if ((mVarJ.J(hVarA) && !mVarJ.x(hVarA)) || mVarJ.Z(hVarA)) {
                                abstractTypeCheckerContext.e();
                            } else {
                                arrayDequeH.add(hVarA);
                            }
                        }
                    }
                }
            }
            abstractTypeCheckerContext.e();
            return false;
        }
        return true;
    }

    public final boolean b(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.h start, kotlin.reflect.jvm.internal.impl.types.model.k end) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(start, "start");
        kotlin.jvm.internal.r.e(end, "end");
        kotlin.reflect.jvm.internal.impl.types.model.m mVarJ = context.j();
        if (f15653a.c(context, start, end)) {
            return true;
        }
        context.k();
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> arrayDequeH = context.h();
        kotlin.jvm.internal.r.c(arrayDequeH);
        Set<kotlin.reflect.jvm.internal.impl.types.model.h> setI = context.i();
        kotlin.jvm.internal.r.c(setI);
        arrayDequeH.push(start);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + start + ". Supertypes = " + CollectionsKt___CollectionsKt.m0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            kotlin.reflect.jvm.internal.impl.types.model.h current = arrayDequeH.pop();
            kotlin.jvm.internal.r.d(current, "current");
            if (setI.add(current)) {
                AbstractTypeCheckerContext.a aVar = mVarJ.x(current) ? AbstractTypeCheckerContext.a.c.f15639a : AbstractTypeCheckerContext.a.b.f15638a;
                if (!(!kotlin.jvm.internal.r.a(aVar, AbstractTypeCheckerContext.a.c.f15639a))) {
                    aVar = null;
                }
                if (aVar == null) {
                    continue;
                } else {
                    kotlin.reflect.jvm.internal.impl.types.model.m mVarJ2 = context.j();
                    Iterator<kotlin.reflect.jvm.internal.impl.types.model.g> it = mVarJ2.U(mVarJ2.d(current)).iterator();
                    while (it.hasNext()) {
                        kotlin.reflect.jvm.internal.impl.types.model.h hVarA = aVar.a(context, it.next());
                        if (f15653a.c(context, hVarA, end)) {
                            context.e();
                            return true;
                        }
                        arrayDequeH.add(hVarA);
                    }
                }
            }
        }
        context.e();
        return false;
    }

    public final boolean d(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.h subType, kotlin.reflect.jvm.internal.impl.types.model.h superType) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superType, "superType");
        return e(context, subType, superType);
    }
}
