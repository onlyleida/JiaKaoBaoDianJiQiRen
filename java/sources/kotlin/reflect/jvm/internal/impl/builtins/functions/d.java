package kotlin.reflect.jvm.internal.impl.builtins.functions;

import androidx.exifinterface.media.ExifInterface;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.util.h;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends d0 {
    public static final a D = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        private final v0 b(d dVar, int i, t0 t0Var) {
            String lowerCase;
            String strB = t0Var.getName().b();
            r.d(strB, "typeParameter.name.asString()");
            if (r.a(strB, ExifInterface.GPS_DIRECTION_TRUE)) {
                lowerCase = "instance";
            } else if (r.a(strB, ExifInterface.LONGITUDE_EAST)) {
                lowerCase = SocialConstants.PARAM_RECEIVER;
            } else {
                lowerCase = strB.toLowerCase(Locale.ROOT);
                r.d(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
            }
            e eVarB = e.O.b();
            f fVarG = f.g(lowerCase);
            r.d(fVarG, "identifier(name)");
            f0 f0VarN = t0Var.n();
            r.d(f0VarN, "typeParameter.defaultType");
            o0 NO_SOURCE = o0.f14970a;
            r.d(NO_SOURCE, "NO_SOURCE");
            return new ValueParameterDescriptorImpl(dVar, null, i, eVarB, fVarG, f0VarN, false, false, false, null, NO_SOURCE);
        }

        public final d a(b functionClass, boolean z) {
            r.e(functionClass, "functionClass");
            List<t0> listP = functionClass.p();
            d dVar = new d(functionClass, null, CallableMemberDescriptor.Kind.DECLARATION, z, null);
            m0 m0VarF0 = functionClass.F0();
            List<? extends t0> listJ = u.j();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listP) {
                if (!(((t0) obj).getVariance() == Variance.IN_VARIANCE)) {
                    break;
                }
                arrayList.add(obj);
            }
            Iterable<IndexedValue> iterableS0 = CollectionsKt___CollectionsKt.S0(arrayList);
            ArrayList arrayList2 = new ArrayList(v.u(iterableS0, 10));
            for (IndexedValue indexedValue : iterableS0) {
                arrayList2.add(d.D.b(dVar, indexedValue.c(), (t0) indexedValue.d()));
            }
            dVar.N0(null, m0VarF0, listJ, arrayList2, ((t0) s.o0(listP)).n(), Modality.ABSTRACT, kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e);
            dVar.V0(true);
            return dVar;
        }
    }

    private d(k kVar, d dVar, CallableMemberDescriptor.Kind kind, boolean z) {
        super(kVar, dVar, e.O.b(), h.f15742g, kind, o0.f14970a);
        b1(true);
        d1(z);
        U0(false);
    }

    public /* synthetic */ d(k kVar, d dVar, CallableMemberDescriptor.Kind kind, boolean z, o oVar) {
        this(kVar, dVar, kind, z);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.u l1(List<f> list) {
        f fVar;
        int size = f().size() - list.size();
        boolean z = true;
        List<v0> valueParameters = f();
        r.d(valueParameters, "valueParameters");
        ArrayList arrayList = new ArrayList(v.u(valueParameters, 10));
        for (v0 v0Var : valueParameters) {
            f name = v0Var.getName();
            r.d(name, "it.name");
            int iH = v0Var.h();
            int i = iH - size;
            if (i >= 0 && (fVar = list.get(i)) != null) {
                name = fVar;
            }
            arrayList.add(v0Var.W(this, name, iH));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.impl.o.c cVarO0 = O0(TypeSubstitutor.b);
        if ((list instanceof Collection) && list.isEmpty()) {
            z = false;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((f) it.next()) == null) {
                }
            }
            z = false;
        }
        cVarO0.F(z);
        cVarO0.T(arrayList);
        cVarO0.M(a());
        r.d(cVarO0, "newCopyBuilder(TypeSubst…   .setOriginal(original)");
        kotlin.reflect.jvm.internal.impl.descriptors.u uVarI0 = super.I0(cVarO0);
        r.c(uVarI0);
        r.d(uVarI0, "super.doSubstitute(copyConfiguration)!!");
        return uVarI0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean B() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    protected kotlin.reflect.jvm.internal.impl.descriptors.impl.o H0(k newOwner, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, CallableMemberDescriptor.Kind kind, f fVar, e annotations, o0 source) {
        r.e(newOwner, "newOwner");
        r.e(kind, "kind");
        r.e(annotations, "annotations");
        r.e(source, "source");
        return new d(newOwner, (d) uVar, kind, isSuspend());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    protected kotlin.reflect.jvm.internal.impl.descriptors.u I0(kotlin.reflect.jvm.internal.impl.descriptors.impl.o.c configuration) {
        a0 type;
        r.e(configuration, "configuration");
        d dVar = (d) super.I0(configuration);
        if (dVar == null) {
            return null;
        }
        List<v0> listF = dVar.f();
        r.d(listF, "substituted.valueParameters");
        boolean z = false;
        if (!(listF instanceof Collection) || !listF.isEmpty()) {
            Iterator<T> it = listF.iterator();
            do {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                type = ((v0) it.next()).getType();
                r.d(type, "it.type");
            } while (!(kotlin.reflect.jvm.internal.impl.builtins.f.c(type) != null));
        } else {
            z = true;
            break;
        }
        if (z) {
            return dVar;
        }
        List<v0> listF2 = dVar.f();
        r.d(listF2, "substituted.valueParameters");
        ArrayList arrayList = new ArrayList(v.u(listF2, 10));
        Iterator<T> it2 = listF2.iterator();
        while (it2.hasNext()) {
            a0 type2 = ((v0) it2.next()).getType();
            r.d(type2, "it.type");
            arrayList.add(kotlin.reflect.jvm.internal.impl.builtins.f.c(type2));
        }
        return dVar.l1(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isInline() {
        return false;
    }
}
