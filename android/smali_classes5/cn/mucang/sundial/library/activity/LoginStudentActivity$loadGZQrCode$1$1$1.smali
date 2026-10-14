.class public final Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1",
        "Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;",
        "",
        "scanLoginStatus",
        "Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;",
        "qrAuthUser",
        "Lkotlin/v;",
        "onCallback",
        "(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;

    iget-object v1, v1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;

    iget-object v1, v1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1$onCallback$1;-><init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$loadGZQrCode$1$1$1;ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
