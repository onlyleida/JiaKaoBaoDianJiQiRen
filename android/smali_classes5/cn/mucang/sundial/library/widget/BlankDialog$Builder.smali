.class public Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/widget/BlankDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001e\u001a\u00020\u001d8\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "",
        "",
        "theme",
        "setTheme",
        "(I)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "Landroidx/viewbinding/a;",
        "customViewBinding",
        "setCustomViewBinding",
        "(Landroidx/viewbinding/a;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "resId",
        "setBgResId",
        "(Ljava/lang/Integer;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "",
        "cancellable",
        "setCancellable",
        "(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "setCancellableOnTouchOutside",
        "Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;",
        "viewListener",
        "setViewListener",
        "(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "create",
        "()Lcn/mucang/sundial/library/widget/BlankDialog;",
        "show",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Params;",
        "params",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Params;",
        "getParams",
        "()Lcn/mucang/sundial/library/widget/BlankDialog$Params;",
        "<init>",
        "(Landroid/content/Context;)V",
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
.field private final context:Landroid/content/Context;

.field private final params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->context:Landroid/content/Context;

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;-><init>(Landroid/content/Context;ILandroidx/viewbinding/a;Ljava/lang/Integer;ZZLcn/mucang/sundial/library/widget/BlankDialog$ViewListener;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    return-void
.end method


# virtual methods
.method public final create()Lcn/mucang/sundial/library/widget/BlankDialog;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/widget/BlankDialog;

    iget-object v1, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/widget/BlankDialog;-><init>(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V

    return-object v0
.end method

.method protected final getParams()Lcn/mucang/sundial/library/widget/BlankDialog$Params;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    return-object v0
.end method

.method public final setBgResId(Ljava/lang/Integer;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->setBgResId(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final setCancellable(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->setCancellable(Z)V

    return-object p0
.end method

.method public final setCancellableOnTouchOutside(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->setCancellableOnTouchOutside(Z)V

    return-object p0
.end method

.method public final setCustomViewBinding(Landroidx/viewbinding/a;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->setCustomViewBinding(Landroidx/viewbinding/a;)V

    return-object p0
.end method

.method public final setTheme(I)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->setTheme(I)V

    return-object p0
.end method

.method public final setViewListener(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->setViewListener(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)V

    return-object p0
.end method

.method public show()Lcn/mucang/sundial/library/widget/BlankDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->create()Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
