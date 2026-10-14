package cn.mucang.jiakaoyi.sundial.client;

import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jky.camera.UsbCameraManager;
import java.io.File;
import kotlin.Metadata;
import org.opencv.android.LoaderCallbackInterface;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0006\u0010\u001a\u001a\u00020\rJ\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u001c\u001a\u00020\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/SilenceCamera;", "Lorg/opencv/android/LoaderCallbackInterface;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "()V", "frameCallback", "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;", "openCVIsSuccess", "", "picFileCallback", "Lcn/mucang/jiakaoyi/sundial/client/SilenceCamera$PicFileCallback;", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "init", "", "onConnect", "onDisconnect", "onManagerConnected", "status", "", "onPackageInstall", "operation", "callback", "Lorg/opencv/android/InstallCallbackInterface;", "onPreviewFrame", "data", "", "release", "setPicFileCallback", "takePhoto", "PicFileCallback", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SilenceCamera implements LoaderCallbackInterface, UsbCameraManager.UsbCameraListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FrameCallback f9155a;
    private a b;
    private SourceVideoStream c;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.n$a */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/SilenceCamera$PicFileCallback;", "", "onFile", "", "file", "Ljava/io/File;", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a(File file);
    }
}
