.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$BoxVersionItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;",
        "onSelect",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnSelect",
        "()Lkotlin/jvm/functions/Function1;",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSelect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;Landroid/view/View;)V
    .locals 0

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;->n()Lkotlin/jvm/b/l;

    move-result-object p0

    invoke-interface {p0, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;->b:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;",
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

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;->nameTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v1

    iget v2, p2, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->id:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;->nameTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;

    invoke-direct {v1, p1, p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/i;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$a;Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
