.class final Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/DebugActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;

    invoke-direct {v0}, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "\u70b9\u51fb\u6559\u7ec3\u5f3a\u5236\u9000\u51fa\u6309\u94ae"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->coachLoginSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5f3a\u5236\u9000\u51fa\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    const-string v0, "DataManager.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object p1

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->INIT:Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateCoachStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;)V

    const-string p1, "\u6559\u7ec3\u5df2\u5f3a\u5236\u7b7e\u9000"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
