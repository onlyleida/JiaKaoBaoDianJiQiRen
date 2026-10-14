.class public final Lcn/mucang/android/jiakaoyi/k3collect/ui/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/ui/g;->v(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/k3collect/i0/a;)V
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
        "cn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$onBindViewHolder$1$1",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;->spLineType:Landroid/widget/Spinner;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;->spLineType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
