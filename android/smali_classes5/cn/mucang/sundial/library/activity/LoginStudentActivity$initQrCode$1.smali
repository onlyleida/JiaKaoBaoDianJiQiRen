.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity;->initQrCode()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/QRCodeGenerator;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/QRCodeGenerator;-><init>()V

    invoke-static {v0}, Lf/a/a/a/p/a;->b(Lf/a/a/a/p/b;)V

    .line 2
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    const/high16 v1, 0x43690000    # 233.0f

    invoke-virtual {v0, v1, v1}, Lcn/mucang/android/account/m/b;->c(FF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;

    invoke-direct {v1, p0, v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;-><init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
