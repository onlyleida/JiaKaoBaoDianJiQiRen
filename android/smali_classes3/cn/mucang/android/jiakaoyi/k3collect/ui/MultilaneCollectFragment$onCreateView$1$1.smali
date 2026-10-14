.class final Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Integer;",
        "Lcn/mucang/android/jiakaoyi/k3collect/i0/a;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "position",
        "",
        "item",
        "Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_apply:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;->$this_apply:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;->invoke(ILcn/mucang/android/jiakaoyi/k3collect/i0/a;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(ILcn/mucang/android/jiakaoyi/k3collect/i0/a;)V
    .locals 0

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->r(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$onCreateView$1$1;->$this_apply:Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->s(Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;)V

    return-void
.end method
