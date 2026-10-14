.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$onCreateView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/eventbus/event/DialogEvent;",
        ">;"
    }
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
        "Lcn/mucang/sundial/android/eventbus/event/DialogEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/DialogEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/DialogEvent;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e29\u99a8\u63d0\u793a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/sundial/android/eventbus/event/DialogEvent;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    .line 4
    new-instance v1, Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 5
    iget-object p1, p1, Lcn/mucang/sundial/android/eventbus/event/DialogEvent;->message:Ljava/lang/String;

    const-string v2, "it.message"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/activity/StudentInfoActivity$onCreateView$2$1;

    invoke-direct {v2}, Lcn/mucang/sundial/library/activity/StudentInfoActivity$onCreateView$2$1;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$setDialog$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;Lcn/mucang/sundial/library/widget/BlankDialog;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/DialogEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity$onCreateView$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/DialogEvent;)V

    return-void
.end method
