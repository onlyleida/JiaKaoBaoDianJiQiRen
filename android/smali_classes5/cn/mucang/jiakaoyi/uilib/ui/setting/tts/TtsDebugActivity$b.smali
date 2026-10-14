.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Ljava/lang/String;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$VoiceItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;",
        "(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V",
        "onBindViewHolder",
        "",
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
.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;->p(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V
    .locals 2

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)I

    move-result v0

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;",
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

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;

    invoke-virtual {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugItemBinding;->getRoot()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;

    invoke-direct {v1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;-><init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
