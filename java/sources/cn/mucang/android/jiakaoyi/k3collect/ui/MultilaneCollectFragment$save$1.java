package cn.mucang.android.jiakaoyi.k3collect.ui;

import android.content.Intent;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectFragment$save$1", f = "MultilaneCollectFragment.kt", l = {135}, m = "invokeSuspend")
final class MultilaneCollectFragment$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ String $examSiteId;
    final /* synthetic */ List<K3SrcData> $listResult;
    int label;
    final /* synthetic */ MultilaneCollectFragment this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectFragment$save$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectFragment$save$1$1", f = "MultilaneCollectFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ long[] $ids;
        int label;
        final /* synthetic */ MultilaneCollectFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long[] jArr, MultilaneCollectFragment multilaneCollectFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$ids = jArr;
            this.this$0 = multilaneCollectFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$ids, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            Intent intent = new Intent();
            intent.putExtra("idsJson", this.$ids);
            androidx.fragment.app.d activity = this.this$0.getActivity();
            if (activity != null) {
                activity.setResult(200, intent);
            }
            androidx.fragment.app.d activity2 = this.this$0.getActivity();
            if (activity2 != null) {
                activity2.finish();
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MultilaneCollectFragment$save$1(List<K3SrcData> list, String str, MultilaneCollectFragment multilaneCollectFragment, Continuation<? super MultilaneCollectFragment$save$1> continuation) {
        super(2, continuation);
        this.$listResult = list;
        this.$examSiteId = str;
        this.this$0 = multilaneCollectFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new MultilaneCollectFragment$save$1(this.$listResult, this.$examSiteId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((MultilaneCollectFragment$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            long[] jArr = new long[this.$listResult.size()];
            int i2 = 0;
            int size = this.$listResult.size() - 1;
            if (size >= 0) {
                while (true) {
                    int i3 = i2 + 1;
                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(this.$examSiteId, this.$listResult.get(i2));
                    Long l = this.$listResult.get(i2).id;
                    r.d(l, "listResult[index].id");
                    if (l.longValue() > 0) {
                        Long l2 = this.$listResult.get(i2).id;
                        r.d(l2, "listResult[index].id");
                        jArr[i2] = l2.longValue();
                    }
                    if (i3 > size) {
                        break;
                    }
                    i2 = i3;
                }
            }
            u.h("多车道采集完成");
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(jArr, this.this$0, null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
        }
        return v.f15822a;
    }
}
