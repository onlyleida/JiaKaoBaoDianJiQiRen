package kotlin.reflect;

import cn.mucang.android.core.webview.MenuOptions;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.slf4j.Marker;

/* JADX INFO: renamed from: kotlin.reflect.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lkotlin/reflect/KTypeProjection;", "", "variance", "Lkotlin/reflect/KVariance;", "type", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V", "getType", "()Lkotlin/reflect/KType;", "getVariance", "()Lkotlin/reflect/KVariance;", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "hashCode", "", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public final /* data */ class KTypeProjection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KVariance f15780a;
    private final KType b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15779d = new a(null);
    public static final KTypeProjection c = new KTypeProjection(null, null);

    /* JADX INFO: renamed from: kotlin.reflect.r$a */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0002¨\u0006\u000e"}, d2 = {"Lkotlin/reflect/KTypeProjection$Companion;", "", "()V", "STAR", "Lkotlin/reflect/KTypeProjection;", "getSTAR", "()Lkotlin/reflect/KTypeProjection;", "star", "getStar$annotations", "contravariant", "type", "Lkotlin/reflect/KType;", "covariant", "invariant", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class a {
        private a() {
        }

        public final KTypeProjection a(KType type) {
            kotlin.jvm.internal.r.e(type, "type");
            return new KTypeProjection(KVariance.IN, type);
        }

        public final KTypeProjection b(KType type) {
            kotlin.jvm.internal.r.e(type, "type");
            return new KTypeProjection(KVariance.OUT, type);
        }

        public final KTypeProjection c() {
            return KTypeProjection.c;
        }

        public final KTypeProjection d(KType type) {
            kotlin.jvm.internal.r.e(type, "type");
            return new KTypeProjection(KVariance.INVARIANT, type);
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    public KTypeProjection(KVariance kVariance, KType kType) {
        String str;
        this.f15780a = kVariance;
        this.b = kType;
        if ((kVariance == null) == (kType == null)) {
            return;
        }
        if (kVariance == null) {
            str = "Star projection must have no type specified.";
        } else {
            str = "The projection variance " + kVariance + " requires type to be specified.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final KVariance getF15780a() {
        return this.f15780a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final KType getB() {
        return this.b;
    }

    public final KType c() {
        return this.b;
    }

    public final KVariance d() {
        return this.f15780a;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KTypeProjection)) {
            return false;
        }
        KTypeProjection kTypeProjection = (KTypeProjection) other;
        return kotlin.jvm.internal.r.a(this.f15780a, kTypeProjection.f15780a) && kotlin.jvm.internal.r.a(this.b, kTypeProjection.b);
    }

    public int hashCode() {
        KVariance kVariance = this.f15780a;
        int iHashCode = (kVariance != null ? kVariance.hashCode() : 0) * 31;
        KType kType = this.b;
        return iHashCode + (kType != null ? kType.hashCode() : 0);
    }

    public String toString() {
        KVariance kVariance = this.f15780a;
        if (kVariance == null) {
            return Marker.ANY_MARKER;
        }
        int i = s.f15781a[kVariance.ordinal()];
        if (i == 1) {
            return String.valueOf(this.b);
        }
        if (i == 2) {
            return "in " + this.b;
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "out " + this.b;
    }
}
