package cn.mucang.android.jiakaoyi.teachingk2.push;

import com.alivc.live.pusher.AlivcLivePusher;
import java.text.SimpleDateFormat;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Point;
import org.opencv.core.Scalar;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$onFrame$1", f = "PusherManager.kt", l = {}, m = "invokeSuspend")
final class PusherManager$onFrame$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ byte[] $byteArray;
    final /* synthetic */ int $height;
    final /* synthetic */ int $rotation;
    final /* synthetic */ int $size;
    final /* synthetic */ int $stride;
    final /* synthetic */ long $timeUs;
    final /* synthetic */ int $width;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PusherManager$onFrame$1(int i, int i2, byte[] bArr, int i3, int i4, long j, int i5, Continuation<? super PusherManager$onFrame$1> continuation) {
        super(2, continuation);
        this.$width = i;
        this.$height = i2;
        this.$byteArray = bArr;
        this.$stride = i3;
        this.$size = i4;
        this.$timeUs = j;
        this.$rotation = i5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new PusherManager$onFrame$1(this.$width, this.$height, this.$byteArray, this.$stride, this.$size, this.$timeUs, this.$rotation, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$onFrame$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Mat mat;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (kotlin.jvm.internal.r.a(PusherManager.i, kotlin.coroutines.jvm.internal.a.a(true))) {
            if (PusherManager.f7476g && PusherManager.f7477h != null) {
                if (PusherManager.f7474e != null) {
                    Mat mat2 = PusherManager.f7474e;
                    kotlin.jvm.internal.r.c(mat2);
                    if (mat2.width() != this.$width) {
                        mat = PusherManager.f7474e;
                        if (mat != null) {
                            mat.release();
                        }
                        PusherManager pusherManager = PusherManager.f7472a;
                        PusherManager.f7474e = new Mat((this.$height * 3) / 2, this.$width, CvType.CV_8UC1);
                        PusherManager.f7475f = new byte[this.$byteArray.length];
                    }
                } else {
                    mat = PusherManager.f7474e;
                    if (mat != null) {
                        mat.release();
                    }
                    PusherManager pusherManager2 = PusherManager.f7472a;
                    PusherManager.f7474e = new Mat((this.$height * 3) / 2, this.$width, CvType.CV_8UC1);
                    PusherManager.f7475f = new byte[this.$byteArray.length];
                }
                Mat mat3 = PusherManager.f7474e;
                if (mat3 != null) {
                    kotlin.coroutines.jvm.internal.a.d(mat3.put(0, 0, this.$byteArray));
                }
                Mat mat4 = PusherManager.f7474e;
                SimpleDateFormat simpleDateFormat = PusherManager.f7477h;
                Imgproc.putText(mat4, simpleDateFormat == null ? null : simpleDateFormat.format(kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis())), new Point(((double) this.$width) * 0.03d, ((double) this.$height) * 0.08d), 3, 0.53d, new Scalar(0.0d), 3);
                Mat mat5 = PusherManager.f7474e;
                SimpleDateFormat simpleDateFormat2 = PusherManager.f7477h;
                Imgproc.putText(mat5, simpleDateFormat2 != null ? simpleDateFormat2.format(kotlin.coroutines.jvm.internal.a.e(System.currentTimeMillis())) : null, new Point(((double) this.$width) * 0.03d, ((double) this.$height) * 0.08d), 3, 0.53d, new Scalar(255.0d), 2);
                Mat mat6 = PusherManager.f7474e;
                if (mat6 != null) {
                    kotlin.coroutines.jvm.internal.a.d(mat6.get(0, 0, PusherManager.f7475f));
                }
            }
            byte[] bArr = PusherManager.f7475f;
            if (bArr == null) {
                bArr = this.$byteArray;
            }
            byte[] bArr2 = bArr;
            AlivcLivePusher alivcLivePusher = PusherManager.b;
            if (alivcLivePusher != null) {
                alivcLivePusher.inputStreamVideoData(bArr2, this.$width, this.$height, this.$stride, this.$size, this.$timeUs, this.$rotation);
            }
        }
        return kotlin.v.f15822a;
    }
}
