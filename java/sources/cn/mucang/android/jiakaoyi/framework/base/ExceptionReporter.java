package cn.mucang.android.jiakaoyi.framework.base;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import java.io.File;
import kotlin.Metadata;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ExceptionReporter;", "", "()V", "reportException", "", "UploadExceptionApi", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExceptionReporter {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.b$a */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ExceptionReporter$UploadExceptionApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "uploadException", "", "file", "Ljava/io/File;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BaseDeviceManagerApi {
        public final boolean m(File file) throws ApiException, InternalException, HttpException {
            r.e(file, "file");
            return httpPost("/api/open/error-info/add-error-info.htm", FilesKt__FileReadWriteKt.b(file)).isSuccess();
        }
    }

    public static final void b() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.base.a
            @Override // java.lang.Runnable
            public final void run() {
                ExceptionReporter.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        try {
            File file = new File(MucangConfig.getContext().getExternalFilesDir(CustomLogInfoBuilder.LOG_TYPE), "exception.txt");
            if (file.exists()) {
                if (!(!(FilesKt__FileReadWriteKt.b(file).length == 0)) || new a().m(file)) {
                    m.f(file);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
