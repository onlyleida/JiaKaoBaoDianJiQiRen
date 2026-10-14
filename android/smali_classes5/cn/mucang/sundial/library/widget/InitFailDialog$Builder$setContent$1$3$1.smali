.class public final Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/util/ClickController$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;->onClick(Landroid/view/View;)V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "cn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1",
        "Lcn/mucang/sundial/library/util/ClickController$ClickListener;",
        "Lkotlin/v;",
        "onClickCountFull",
        "()V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1;->this$0:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCountFull()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1;->this$0:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;

    iget-object v0, v0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;->$this_apply:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1;->this$0:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;

    iget-object v2, v2, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;->$this_apply:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->getContext()Landroid/app/Activity;

    move-result-object v2

    .line 4
    const-class v3, Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    .line 5
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
