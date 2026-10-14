.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/binder/SignalReverseBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalReverseItem;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;",
        "callback",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "renderChoice",
        "viewBinding",
        "isReverse",
        "",
        "uilib_release"
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
.field private final b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->b:Lkotlin/jvm/b/a;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    const-string p3, "$item"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->b()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->c(Z)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->b()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->r(Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;Z)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->a()Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->n()Lkotlin/jvm/b/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->i()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->a()Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->a()Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    const-string p2, "\u8bbe\u7f6e\u4fe1\u53f7\u53cd\u8f6ctrue"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->a()Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    const-string p2, "\u53d6\u6d88\u8bbe\u7f6e\u4fe1\u53f7\u53cd\u8f6cfalse"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final r(Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;Z)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;->stateIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->b:Lkotlin/jvm/b/a;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->a()Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;

    invoke-virtual {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/b;

    invoke-direct {v1, p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/b;->b()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/e;->r(Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseItemBinding;Z)V

    return-void
.end method
