.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Ljava/lang/String;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\r\u001a\u00020\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$VoiceCodeItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;",
        "selectCodeName",
        "itemSelectCallback",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "getItemSelectCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "getSelectCodeName",
        "()Ljava/lang/String;",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "k3setting_release"
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
.field private final b:Ljava/lang/String;

.field private final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemSelectCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->c:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->s(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->r(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private static final r(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string p1, "\u8fd9\u4e0d\u662f\u4e00\u4e2a\u6807\u51c6\u7684\u8bed\u97f3\u6263\u5206\u7801"

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "\u627e\u4e0d\u5230\u6b64\u8bed\u97f3\u6263\u5206\u7801"

    invoke-static {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    :goto_0
    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->n()Lkotlin/jvm/b/l;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->c:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;",
            ">;",
            "Ljava/lang/String;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->tvPlayPosition:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const-string v0, "\u65e0"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->playCodeTv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->playCodeTv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->playCodeTv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/y1;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/y1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemPlayPositionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/x1;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/x1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
