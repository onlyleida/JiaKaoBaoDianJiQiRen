package cn.mucang.jiakaoyi.sundial.client;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\bJ@\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J\u0006\u0010\u0019\u001a\u00020\bR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "checkFace", "", "i420", "picture", "Lkotlin/Function1;", "Ljava/io/File;", "", "(ZZLkotlin/jvm/functions/Function1;)V", "capture", "Ljava/util/concurrent/atomic/AtomicBoolean;", "dir", "isChecking", "onFrame", "data", "", "width", "", "height", "stride", "size", "timeUs", "", "rotation", "release", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FrameCallback implements YuvFrameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f9108a;
    private final Function1<File, v> b;
    private File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f9109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9110e;

    /* JADX WARN: Multi-variable type inference failed */
    public FrameCallback(boolean z, boolean z2, Function1<? super File, v> picture) {
        r.e(picture, "picture");
        this.f9108a = z2;
        this.b = picture;
        this.c = new File(MucangConfig.getContext().getFilesDir(), "sundial");
        this.f9109d = new AtomicBoolean(false);
        if (this.c.exists()) {
            return;
        }
        this.c.mkdirs();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback
    public void a(byte[] data, int i, int i2, int i3, int i4, long j, int i5) {
        r.e(data, "data");
        if (!this.f9109d.get() || this.f9110e) {
            return;
        }
        this.f9110e = true;
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new FrameCallback$onFrame$1(this, data, i, i2, null), 3, null);
    }

    public final void g() {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new FrameCallback$capture$1(this, null), 3, null);
    }

    public final void h() {
    }

    public /* synthetic */ FrameCallback(boolean z, boolean z2, Function1 function1, int i, kotlin.jvm.internal.o oVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, function1);
    }
}
