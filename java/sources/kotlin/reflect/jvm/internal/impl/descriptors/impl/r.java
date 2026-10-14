package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.v0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r implements kotlin.reflect.jvm.internal.impl.descriptors.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14953a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final MemberScope a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, v0 typeSubstitution, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            kotlin.jvm.internal.r.e(dVar, "<this>");
            kotlin.jvm.internal.r.e(typeSubstitution, "typeSubstitution");
            kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            r rVar = dVar instanceof r ? (r) dVar : null;
            if (rVar != null) {
                return rVar.w(typeSubstitution, kotlinTypeRefiner);
            }
            MemberScope memberScopeO0 = dVar.o0(typeSubstitution);
            kotlin.jvm.internal.r.d(memberScopeO0, "this.getMemberScope(\n   …ubstitution\n            )");
            return memberScopeO0;
        }

        public final MemberScope b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            kotlin.jvm.internal.r.e(dVar, "<this>");
            kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            r rVar = dVar instanceof r ? (r) dVar : null;
            if (rVar != null) {
                return rVar.e0(kotlinTypeRefiner);
            }
            MemberScope memberScopeU = dVar.U();
            kotlin.jvm.internal.r.d(memberScopeU, "this.unsubstitutedMemberScope");
            return memberScopeU;
        }
    }

    protected abstract MemberScope e0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar);

    protected abstract MemberScope w(v0 v0Var, kotlin.reflect.jvm.internal.impl.types.checker.g gVar);
}
