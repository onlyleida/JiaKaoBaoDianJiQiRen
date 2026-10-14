package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.n0;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, h> f15173a = new LinkedHashMap();

    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15174a;
        final /* synthetic */ i b;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.i$a$a, reason: collision with other inner class name */
        public final class C0334a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f15175a;
            private final List<Pair<String, n>> b;
            private Pair<String, n> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ a f15176d;

            public C0334a(a this$0, String functionName) {
                r.e(this$0, "this$0");
                r.e(functionName, "functionName");
                this.f15176d = this$0;
                this.f15175a = functionName;
                this.b = new ArrayList();
                this.c = kotlin.l.a(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, null);
            }

            public final Pair<String, h> a() {
                SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f15194a;
                String strB = this.f15176d.b();
                String strB2 = b();
                List<Pair<String, n>> list = this.b;
                ArrayList arrayList = new ArrayList(v.u(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Pair) it.next()).getFirst());
                }
                String strK = signatureBuildingComponents.k(strB, signatureBuildingComponents.j(strB2, arrayList, this.c.getFirst()));
                n second = this.c.getSecond();
                List<Pair<String, n>> list2 = this.b;
                ArrayList arrayList2 = new ArrayList(v.u(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((n) ((Pair) it2.next()).getSecond());
                }
                return kotlin.l.a(strK, new h(second, arrayList2));
            }

            public final String b() {
                return this.f15175a;
            }

            public final void c(String type, e... qualifiers) {
                n nVar;
                r.e(type, "type");
                r.e(qualifiers, "qualifiers");
                List<Pair<String, n>> list = this.b;
                if (qualifiers.length == 0) {
                    nVar = null;
                } else {
                    Iterable<IndexedValue> iterableU0 = ArraysKt___ArraysKt.u0(qualifiers);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(n0.d(v.u(iterableU0, 10)), 16));
                    for (IndexedValue indexedValue : iterableU0) {
                        linkedHashMap.put(Integer.valueOf(indexedValue.c()), (e) indexedValue.d());
                    }
                    nVar = new n(linkedHashMap);
                }
                list.add(kotlin.l.a(type, nVar));
            }

            public final void d(String type, e... qualifiers) {
                r.e(type, "type");
                r.e(qualifiers, "qualifiers");
                Iterable<IndexedValue> iterableU0 = ArraysKt___ArraysKt.u0(qualifiers);
                LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(n0.d(v.u(iterableU0, 10)), 16));
                for (IndexedValue indexedValue : iterableU0) {
                    linkedHashMap.put(Integer.valueOf(indexedValue.c()), (e) indexedValue.d());
                }
                this.c = kotlin.l.a(type, new n(linkedHashMap));
            }

            public final void e(JvmPrimitiveType type) {
                r.e(type, "type");
                String desc = type.getDesc();
                r.d(desc, "type.desc");
                this.c = kotlin.l.a(desc, null);
            }
        }

        public a(i this$0, String className) {
            r.e(this$0, "this$0");
            r.e(className, "className");
            this.b = this$0;
            this.f15174a = className;
        }

        public final void a(String name, Function1<? super C0334a, kotlin.v> block) {
            r.e(name, "name");
            r.e(block, "block");
            Map map = this.b.f15173a;
            C0334a c0334a = new C0334a(this, name);
            block.invoke(c0334a);
            Pair<String, h> pairA = c0334a.a();
            map.put(pairA.getFirst(), pairA.getSecond());
        }

        public final String b() {
            return this.f15174a;
        }
    }

    public final Map<String, h> b() {
        return this.f15173a;
    }
}
