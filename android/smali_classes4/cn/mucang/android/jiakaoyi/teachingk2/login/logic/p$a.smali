.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->findFocus()Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
