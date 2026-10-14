.class public final Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/sundial/library/widget/MessageConfirmDialog$Builder$1",
        "Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "dialog",
        "Landroidx/viewbinding/a;",
        "viewBinding",
        "Lkotlin/v;",
        "setViews",
        "(Lcn/mucang/sundial/library/widget/BlankDialog;Landroidx/viewbinding/a;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder$1;->this$0:Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViews(Lcn/mucang/sundial/library/widget/BlankDialog;Landroidx/viewbinding/a;)V
    .locals 0

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder$1;->this$0:Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;

    invoke-virtual {p2, p1}, Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;->setDialog(Lcn/mucang/sundial/library/widget/BlankDialog;)V

    return-void
.end method
