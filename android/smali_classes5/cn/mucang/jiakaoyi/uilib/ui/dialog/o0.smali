.class public Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;,
        Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

.field private g:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

.field private h:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi_list_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->e:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6682\u65e0\u8bed\u97f3\u5305"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->e:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->f:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->Robot_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->g:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->K3_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->g:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->K2_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->g:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    .line 6
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/h/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/h/b;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->g:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/h/b;->m(Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->e:Ljava/util/List;

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u670d\u52a1\u5f02\u5e38"

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->a()V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->c()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a()V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->f:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$layout;->voice_pack_dialog_list:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->closeIv:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->b:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->dialog_voice_rv:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->loading_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->d:Landroid/widget/LinearLayout;

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->dialog_voice_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;->c:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/y;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/y;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dp_160:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dp_90:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
