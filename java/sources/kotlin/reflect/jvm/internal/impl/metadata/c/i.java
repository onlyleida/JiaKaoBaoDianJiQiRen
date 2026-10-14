package kotlin.reflect.jvm.internal.impl.metadata.c;

import java.util.List;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;

/* JADX INFO: loaded from: classes6.dex */
public final class i {
    public static final a b = new a(null);
    private static final i c = new i(u.j());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<ProtoBuf$VersionRequirement> f15351a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final i a(ProtoBuf$VersionRequirementTable table) {
            r.e(table, "table");
            if (table.getRequirementCount() == 0) {
                return b();
            }
            List<ProtoBuf$VersionRequirement> requirementList = table.getRequirementList();
            r.d(requirementList, "table.requirementList");
            return new i(requirementList, null);
        }

        public final i b() {
            return i.c;
        }
    }

    private i(List<ProtoBuf$VersionRequirement> list) {
        this.f15351a = list;
    }

    public /* synthetic */ i(List list, o oVar) {
        this(list);
    }

    public final ProtoBuf$VersionRequirement b(int i) {
        return (ProtoBuf$VersionRequirement) s.f0(this.f15351a, i);
    }
}
