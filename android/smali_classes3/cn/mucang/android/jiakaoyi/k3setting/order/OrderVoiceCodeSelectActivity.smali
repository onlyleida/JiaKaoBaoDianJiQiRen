.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0008\tB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "VoiceCodeItemBinder",
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


# static fields
.field public static final b:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u97f3\u9891\u6587\u4ef6\u7801"

    return-object v0
.end method

.method protected init()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/w1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/w1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u97f3\u9891\u6587\u4ef6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_choose_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_voice_codes"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    new-instance v8, Lcom/drakeet/multitype/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$init$adapter$1$1;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$init$adapter$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity;)V

    invoke-direct {v2, v0, v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderVoiceCodeSelectActivity$b;-><init>(Ljava/lang/String;Lkotlin/jvm/b/l;)V

    .line 8
    const-class v0, Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    if-nez v1, :cond_0

    .line 9
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v1

    :cond_0
    invoke-virtual {v8, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityOrderPositionSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
