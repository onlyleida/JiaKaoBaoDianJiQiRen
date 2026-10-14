.class final Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;->run()V
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
.field final synthetic $id:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;

    iput-object p2, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3$1;->$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3$1;->$id:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$3$1;->$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
