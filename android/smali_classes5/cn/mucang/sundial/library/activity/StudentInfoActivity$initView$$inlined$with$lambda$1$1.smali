.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->onClick(Landroid/view/View;)V
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
        "\u0000\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\n\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "resultCode",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 2>",
        "Lkotlin/v;",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "cn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$2$2",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    iget-object p2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;

    iget-object p2, p2, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    sget-object p3, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcn/mucang/sundial/library/util/LoginUtil;->logoutWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;I)V

    :cond_0
    return-void
.end method
