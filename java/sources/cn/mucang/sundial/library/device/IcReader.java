package cn.mucang.sundial.library.device;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\u0004¨\u0006\n"}, d2 = {"Lcn/mucang/sundial/library/device/IcReader;", "", "Lkotlin/v;", "init", "()V", "", "getData", "()Ljava/lang/String;", "destroy", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class IcReader {
    public abstract void destroy();

    public abstract String getData();

    public abstract void init();
}
