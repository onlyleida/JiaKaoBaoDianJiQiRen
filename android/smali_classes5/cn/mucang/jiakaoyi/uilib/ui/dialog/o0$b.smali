.class Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:J

.field private d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->b:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->a:Ljava/util/List;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->parse(I)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->c:J

    .line 5
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method static synthetic c(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->b:Z

    return p0
.end method

.method static synthetic d(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->b:Z

    return p1
.end method

.method static synthetic e(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method private synthetic g(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

    invoke-direct {v1, p0, p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Landroid/view/View;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;)V

    const-string p1, "voicePackClick"

    const/16 p2, 0x7d0

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->g(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V

    return-void
.end method

.method public i(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    .line 2
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->b:Landroid/widget/TextView;

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->fileSize:J

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/m;->m(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->packId:J

    iget v2, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->version:I

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->i(JI)Z

    move-result v0

    const-string v1, "#008AFF"

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object v0

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->packId:J

    iget v4, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->version:I

    invoke-virtual {v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->e(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    const-string v1, "\u4f7f\u7528\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$drawable;->selector_base_btn_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    const-string v2, "\u542f\u7528"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$drawable;->shape_r2_s1_008aff:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    const-string v2, "\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$drawable;->shape_r2_s1_008aff:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    :goto_0
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;->c:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$layout;->voice_pack_dialog_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->i(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->j(Landroid/view/ViewGroup;I)Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$a;

    move-result-object p1

    return-object p1
.end method
