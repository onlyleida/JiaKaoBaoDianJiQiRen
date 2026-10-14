.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/collectlayouts/dialog/MoveEditDialog$onCreate$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
        "",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->a(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->a(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;->a(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/p1/c;)Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3CollectMoveLineBinding;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
