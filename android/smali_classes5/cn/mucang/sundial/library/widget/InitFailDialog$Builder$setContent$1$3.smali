.class final Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->setContent(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;
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


# instance fields
.field final synthetic $clickController:Lcn/mucang/sundial/library/util/ClickController;

.field final synthetic $this_apply:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;Lcn/mucang/sundial/library/util/ClickController;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;->$this_apply:Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;

    iput-object p2, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;->$clickController:Lcn/mucang/sundial/library/util/ClickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;->$clickController:Lcn/mucang/sundial/library/util/ClickController;

    new-instance v0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3$1;-><init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;)V

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/ClickController;->click(Lcn/mucang/sundial/library/util/ClickController$ClickListener;)V

    return-void
.end method
