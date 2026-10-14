package cn.mucang.android.jiakaoyi.k3setting.backup;

import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.TabCount;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.i0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.backup.BackupDiffViewModel$loadLightAssemble$1", f = "BackupDiffViewModel.kt", l = {}, m = "invokeSuspend")
final class BackupDiffViewModel$loadLightAssemble$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ BackupDiffViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackupDiffViewModel$loadLightAssemble$1(BackupDiffViewModel backupDiffViewModel, Continuation<? super BackupDiffViewModel$loadLightAssemble$1> continuation) {
        super(2, continuation);
        this.this$0 = backupDiffViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new BackupDiffViewModel$loadLightAssemble$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((BackupDiffViewModel$loadLightAssemble$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (this.this$0.i == null) {
            try {
                LoadingViewModel.f(this.this$0, false, null, 2, null);
                String strOptString = new JSONObject(this.this$0.q()).optString("lightCombinationList");
                this.this$0.i = JSON.parseArray(strOptString, LightAssembleModel.class);
                LoadingViewModel.h(this.this$0, false, null, 2, null);
                LoadingViewModel.h(this.this$0, false, null, 2, null);
            } catch (Exception e2) {
                e2.printStackTrace();
                LoadingViewModel.d(this.this$0, false, null, 2, null);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (this.this$0.i != null) {
            List list = this.this$0.i;
            r.c(list);
            arrayList.addAll(list);
        }
        this.this$0.r().l(arrayList);
        this.this$0.p().l(new TabCount(DataType.LIGHT_GROUP.getType(), arrayList.size()));
        return v.f15822a;
    }
}
