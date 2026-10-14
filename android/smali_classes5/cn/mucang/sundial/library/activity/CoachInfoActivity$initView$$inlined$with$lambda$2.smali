.class final Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/CoachInfoActivity;->initView()V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/activity/CoachInfoActivity$initView$1$2",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "\u6309\u94ae\u70b9\u51fb\u5b66\u5458\u767b\u5f55"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    .line 5
    const-class v2, Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "person_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    sget-object v1, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "check_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
