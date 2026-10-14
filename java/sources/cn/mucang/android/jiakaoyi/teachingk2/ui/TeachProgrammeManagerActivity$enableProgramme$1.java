package cn.mucang.android.jiakaoyi.teachingk2.ui;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.opencv.imgcodecs.Imgcodecs;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.TeachProgrammeManagerActivity", f = "TeachProgrammeManagerActivity.kt", l = {Imgcodecs.IMWRITE_JPEG2000_COMPRESSION_X1000}, m = "enableProgramme")
final class TeachProgrammeManagerActivity$enableProgramme$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TeachProgrammeManagerActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachProgrammeManagerActivity$enableProgramme$1(TeachProgrammeManagerActivity teachProgrammeManagerActivity, Continuation<? super TeachProgrammeManagerActivity$enableProgramme$1> continuation) {
        super(continuation);
        this.this$0 = teachProgrammeManagerActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m(null, this);
    }
}
