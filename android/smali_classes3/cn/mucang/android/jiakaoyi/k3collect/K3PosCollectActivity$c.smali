.class public final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->s0(Ljava/util/List;I)V
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
        "cn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initLineTypeSpinner$2",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->spLineTypeList:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
