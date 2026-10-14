package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class ScopesHolderForClass<T extends MemberScope> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f14858a;
    private final Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, T> b;
    private final kotlin.reflect.jvm.internal.impl.types.checker.g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h f14859d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f14857f = {kotlin.jvm.internal.v.i(new PropertyReference1Impl(kotlin.jvm.internal.v.b(ScopesHolderForClass.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f14856e = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final <T extends MemberScope> ScopesHolderForClass<T> a(d classDescriptor, kotlin.reflect.jvm.internal.impl.storage.m storageManager, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefinerForOwnerModule, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.g, ? extends T> scopeFactory) {
            kotlin.jvm.internal.r.e(classDescriptor, "classDescriptor");
            kotlin.jvm.internal.r.e(storageManager, "storageManager");
            kotlin.jvm.internal.r.e(kotlinTypeRefinerForOwnerModule, "kotlinTypeRefinerForOwnerModule");
            kotlin.jvm.internal.r.e(scopeFactory, "scopeFactory");
            return new ScopesHolderForClass<>(classDescriptor, storageManager, scopeFactory, kotlinTypeRefinerForOwnerModule, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ScopesHolderForClass(d dVar, kotlin.reflect.jvm.internal.impl.storage.m mVar, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.g, ? extends T> function1, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        this.f14858a = dVar;
        this.b = function1;
        this.c = gVar;
        this.f14859d = mVar.c(new Function0<T>(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass$scopeForOwnerModule$2
            final /* synthetic */ ScopesHolderForClass<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final MemberScope invoke() {
                return (MemberScope) ((ScopesHolderForClass) this.this$0).b.invoke(((ScopesHolderForClass) this.this$0).c);
            }
        });
    }

    public /* synthetic */ ScopesHolderForClass(d dVar, kotlin.reflect.jvm.internal.impl.storage.m mVar, Function1 function1, kotlin.reflect.jvm.internal.impl.types.checker.g gVar, kotlin.jvm.internal.o oVar) {
        this(dVar, mVar, function1, gVar);
    }

    private final T d() {
        return (T) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f14859d, this, f14857f[0]);
    }

    public final T c(final kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (!kotlinTypeRefiner.c(DescriptorUtilsKt.l(this.f14858a))) {
            return (T) d();
        }
        kotlin.reflect.jvm.internal.impl.types.q0 q0VarI = this.f14858a.i();
        kotlin.jvm.internal.r.d(q0VarI, "classDescriptor.typeConstructor");
        return !kotlinTypeRefiner.d(q0VarI) ? (T) d() : (T) kotlinTypeRefiner.b(this.f14858a, new Function0<T>(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass$getScope$1
            final /* synthetic */ ScopesHolderForClass<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final MemberScope invoke() {
                return (MemberScope) ((ScopesHolderForClass) this.this$0).b.invoke(kotlinTypeRefiner);
            }
        });
    }
}
