.class final Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->getResult(ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

.field final synthetic this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    iput-object p2, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    invoke-static {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$getQrCodeModel$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;->getQrToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x4e48

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-interface {v0, v3, v2}, Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;->onCallback(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    invoke-static {v1}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$getStopThreadFlag$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    invoke-static {v4}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$getQrCodeApi$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;->getLoginStatusResult(Ljava/lang/String;)Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;

    move-result-object v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    iget-object v4, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-static {v0, v1, v4}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$getResult(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V

    return-void

    .line 7
    :cond_3
    iget-object v4, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->getScanLoginStatus()I

    move-result v5

    invoke-interface {v4, v5, v0}, Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;->onCallback(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->getScanLoginStatus()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->getScanLoginStatus()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 9
    :cond_4
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    iget-object v4, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-static {v0, v1, v4}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$getResult(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    instance-of v4, v0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v4, :cond_5

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-interface {v0, v3, v2}, Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;->onCallback(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V

    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->this$0:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    iget-object v2, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;->$scanListener:Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$getResult(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V

    :cond_6
    :goto_1
    return-void
.end method
