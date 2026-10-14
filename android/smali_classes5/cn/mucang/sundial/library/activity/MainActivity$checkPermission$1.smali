.class final Lcn/mucang/sundial/library/activity/MainActivity$checkPermission$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/n/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/MainActivity;->checkPermission()V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/model/PermissionsResult;",
        "kotlin.jvm.PlatformType",
        "result",
        "Lkotlin/v;",
        "permissionsResult",
        "(Lcn/mucang/android/core/permission/model/PermissionsResult;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/MainActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/MainActivity$checkPermission$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    const-string v0, "result"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/MainActivity$checkPermission$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/MainActivity;->access$stayThenJump(Lcn/mucang/sundial/library/activity/MainActivity;)V

    :cond_0
    return-void
.end method
