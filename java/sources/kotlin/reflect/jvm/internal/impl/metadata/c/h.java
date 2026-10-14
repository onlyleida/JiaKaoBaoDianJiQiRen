package kotlin.reflect.jvm.internal.impl.metadata.c;

import java.util.ArrayList;
import java.util.List;
import kotlin.DeprecationLevel;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.protobuf.n;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f15343f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f15344a;
    private final ProtoBuf$VersionRequirement.VersionKind b;
    private final DeprecationLevel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f15345d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f15346e;

    public static final class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.c.h$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0344a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f15347a;

            static {
                int[] iArr = new int[ProtoBuf$VersionRequirement.Level.values().length];
                iArr[ProtoBuf$VersionRequirement.Level.WARNING.ordinal()] = 1;
                iArr[ProtoBuf$VersionRequirement.Level.ERROR.ordinal()] = 2;
                iArr[ProtoBuf$VersionRequirement.Level.HIDDEN.ordinal()] = 3;
                f15347a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final List<h> a(n proto, c nameResolver, i table) {
            List<Integer> ids;
            r.e(proto, "proto");
            r.e(nameResolver, "nameResolver");
            r.e(table, "table");
            if (proto instanceof ProtoBuf$Class) {
                ids = ((ProtoBuf$Class) proto).getVersionRequirementList();
            } else if (proto instanceof ProtoBuf$Constructor) {
                ids = ((ProtoBuf$Constructor) proto).getVersionRequirementList();
            } else if (proto instanceof ProtoBuf$Function) {
                ids = ((ProtoBuf$Function) proto).getVersionRequirementList();
            } else if (proto instanceof ProtoBuf$Property) {
                ids = ((ProtoBuf$Property) proto).getVersionRequirementList();
            } else {
                if (!(proto instanceof ProtoBuf$TypeAlias)) {
                    throw new IllegalStateException(r.m("Unexpected declaration: ", proto.getClass()));
                }
                ids = ((ProtoBuf$TypeAlias) proto).getVersionRequirementList();
            }
            r.d(ids, "ids");
            ArrayList arrayList = new ArrayList();
            for (Integer id : ids) {
                a aVar = h.f15343f;
                r.d(id, "id");
                h hVarB = aVar.b(id.intValue(), nameResolver, table);
                if (hVarB != null) {
                    arrayList.add(hVarB);
                }
            }
            return arrayList;
        }

        public final h b(int i, c nameResolver, i table) {
            DeprecationLevel deprecationLevel;
            r.e(nameResolver, "nameResolver");
            r.e(table, "table");
            ProtoBuf$VersionRequirement protoBuf$VersionRequirementB = table.b(i);
            if (protoBuf$VersionRequirementB == null) {
                return null;
            }
            b bVarA = b.f15348d.a(protoBuf$VersionRequirementB.hasVersion() ? Integer.valueOf(protoBuf$VersionRequirementB.getVersion()) : null, protoBuf$VersionRequirementB.hasVersionFull() ? Integer.valueOf(protoBuf$VersionRequirementB.getVersionFull()) : null);
            ProtoBuf$VersionRequirement.Level level = protoBuf$VersionRequirementB.getLevel();
            r.c(level);
            int i2 = C0344a.f15347a[level.ordinal()];
            if (i2 == 1) {
                deprecationLevel = DeprecationLevel.WARNING;
            } else if (i2 == 2) {
                deprecationLevel = DeprecationLevel.ERROR;
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                deprecationLevel = DeprecationLevel.HIDDEN;
            }
            DeprecationLevel deprecationLevel2 = deprecationLevel;
            Integer numValueOf = protoBuf$VersionRequirementB.hasErrorCode() ? Integer.valueOf(protoBuf$VersionRequirementB.getErrorCode()) : null;
            String string = protoBuf$VersionRequirementB.hasMessage() ? nameResolver.getString(protoBuf$VersionRequirementB.getMessage()) : null;
            ProtoBuf$VersionRequirement.VersionKind versionKind = protoBuf$VersionRequirementB.getVersionKind();
            r.d(versionKind, "info.versionKind");
            return new h(bVarA, versionKind, deprecationLevel2, numValueOf, string);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f15348d = new a(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final b f15349e = new b(256, 256, 256);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f15350a;
        private final int b;
        private final int c;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(o oVar) {
                this();
            }

            public final b a(Integer num, Integer num2) {
                if (num2 != null) {
                    return new b(num2.intValue() & 255, (num2.intValue() >> 8) & 255, (num2.intValue() >> 16) & 255);
                }
                return num != null ? new b(num.intValue() & 7, (num.intValue() >> 3) & 15, (num.intValue() >> 7) & 127) : b.f15349e;
            }
        }

        public b(int i, int i2, int i3) {
            this.f15350a = i;
            this.b = i2;
            this.c = i3;
        }

        public final String a() {
            StringBuilder sb;
            int i;
            if (this.c == 0) {
                sb = new StringBuilder();
                sb.append(this.f15350a);
                sb.append('.');
                i = this.b;
            } else {
                sb = new StringBuilder();
                sb.append(this.f15350a);
                sb.append('.');
                sb.append(this.b);
                sb.append('.');
                i = this.c;
            }
            sb.append(i);
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f15350a == bVar.f15350a && this.b == bVar.b && this.c == bVar.c;
        }

        public int hashCode() {
            return (((this.f15350a * 31) + this.b) * 31) + this.c;
        }

        public String toString() {
            return a();
        }

        public /* synthetic */ b(int i, int i2, int i3, int i4, o oVar) {
            this(i, i2, (i4 & 4) != 0 ? 0 : i3);
        }
    }

    public h(b version, ProtoBuf$VersionRequirement.VersionKind kind, DeprecationLevel level, Integer num, String str) {
        r.e(version, "version");
        r.e(kind, "kind");
        r.e(level, "level");
        this.f15344a = version;
        this.b = kind;
        this.c = level;
        this.f15345d = num;
        this.f15346e = str;
    }

    public final ProtoBuf$VersionRequirement.VersionKind a() {
        return this.b;
    }

    public final b b() {
        return this.f15344a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("since ");
        sb.append(this.f15344a);
        sb.append(' ');
        sb.append(this.c);
        Integer num = this.f15345d;
        sb.append(num != null ? r.m(" error ", num) : "");
        String str = this.f15346e;
        sb.append(str != null ? r.m(": ", str) : "");
        return sb.toString();
    }
}
