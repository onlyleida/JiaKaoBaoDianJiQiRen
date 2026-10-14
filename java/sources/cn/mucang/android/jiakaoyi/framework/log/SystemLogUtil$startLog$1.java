package cn.mucang.android.jiakaoyi.framework.log;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.Charsets;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.log.SystemLogUtil$startLog$1", f = "SystemLogUtil.kt", l = {}, m = "invokeSuspend")
final class SystemLogUtil$startLog$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ boolean $save;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SystemLogUtil$startLog$1(boolean z, Continuation<? super SystemLogUtil$startLog$1> continuation) {
        super(2, continuation);
        this.$save = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SystemLogUtil$startLog$1(this.$save, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SystemLogUtil$startLog$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.Object, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Process processExec;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            File file = new File(MucangConfig.getContext().getExternalCacheDir(), "SystemLog");
            if (!file.exists()) {
                file.mkdirs();
            }
            if (this.$save) {
                StringBuilder sb = new StringBuilder();
                sb.append("logcat -v time > ");
                sb.append((Object) file.getAbsolutePath());
                String str = File.separator;
                sb.append((Object) str);
                sb.append("test.log");
                t.h("SystemLogUtil", sb.toString());
                processExec = Runtime.getRuntime().exec(new String[]{"sh", "-c", "logcat -v time > " + ((Object) file.getAbsolutePath()) + ((Object) str) + "test.log"});
            } else {
                t.h("SystemLogUtil", "logcat -v time");
                processExec = Runtime.getRuntime().exec("logcat -v time");
            }
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            InputStream inputStream = processExec.getInputStream();
            r.d(inputStream, "process.inputStream");
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.f15811a);
            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
            while (true) {
                ?? line = bufferedReader.readLine();
                ref$ObjectRef.element = line;
                if (((String) line) == null) {
                    break;
                }
                r.c(line);
                DebugLogUtil.a(1, (String) line);
            }
            processExec.waitFor();
            t.h("SystemLogUtil", "System日志拉取结束");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return v.f15822a;
    }
}
