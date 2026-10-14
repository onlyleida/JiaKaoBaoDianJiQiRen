.class final Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->run()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->coachLoginSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u5b66\u5458\u672a\u767b\u5f55\u8df3\u6559\u7ec3\u9875\u9762"

    .line 4
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    const-class v1, Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    sget-object v2, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3$2;->INSTANCE:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3$2;

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V

    goto :goto_1

    :cond_2
    const-string v0, "\u8df3\u5b66\u5458\u9875\u9762"

    .line 6
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    const-class v1, Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity$default(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "\u672a\u6ce8\u518c\u6216\u6559\u7ec3\u672a\u767b\u5f55\u8df3\u6559\u7ec3\u767b\u5f55\u9875\u9762"

    .line 8
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    const-class v1, Lcn/mucang/sundial/library/activity/LoginActivity;

    sget-object v2, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3$1;->INSTANCE:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3$1;

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$3;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
