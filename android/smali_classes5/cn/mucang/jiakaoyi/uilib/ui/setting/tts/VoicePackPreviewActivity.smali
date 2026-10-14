.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
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


# static fields
.field public static final b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bed\u97f3\u5305\u8bd5\u542c\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8bed\u97f3\u5305\u8bd5\u542c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/n;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/n;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/VoicePackPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/o;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/o;-><init>()V

    .line 7
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityVoicePackPreviewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v1}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    :cond_0
    return-void
.end method
