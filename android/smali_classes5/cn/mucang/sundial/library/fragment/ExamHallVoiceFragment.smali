.class public final Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;
.super Lcn/mucang/sundial/library/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Lkotlin/v;",
        "examHuiMa",
        "()V",
        "examYongXin",
        "",
        "resName",
        "play",
        "(Ljava/lang/String;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "onPause",
        "Lme/drakeet/multitype/d;",
        "adapter",
        "Lme/drakeet/multitype/d;",
        "Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;",
        "Landroid/media/MediaPlayer;",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "selectedResName",
        "Ljava/lang/String;",
        "Lme/drakeet/multitype/Items;",
        "items",
        "Lme/drakeet/multitype/Items;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final adapter:Lme/drakeet/multitype/d;

.field private final items:Lme/drakeet/multitype/Items;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private selectedResName:Ljava/lang/String;

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lme/drakeet/multitype/Items;

    invoke-direct {v0}, Lme/drakeet/multitype/Items;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->items:Lme/drakeet/multitype/Items;

    .line 3
    new-instance v1, Lme/drakeet/multitype/d;

    invoke-direct {v1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$examHuiMa(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->examHuiMa()V

    return-void
.end method

.method public static final synthetic access$examYongXin(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->examYongXin()V

    return-void
.end method

.method public static final synthetic access$getMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getSelectedResName$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$play(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->play(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMediaPlayer$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$setSelectedResName$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    return-void
.end method

.method private final examHuiMa()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_exam:I

    .line 3
    sget v2, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_exam_selected:I

    .line 4
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_13.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v6, "\u706f\u51491"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_14.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const-string v6, "\u706f\u51492"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_15.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const-string v6, "\u706f\u51493"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_16.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    const-string v6, "\u706f\u51494"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_17.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    const-string v6, "\u706f\u51495"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_18.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v1

    :goto_5
    const-string v6, "\u706f\u51496"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_1_19.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :cond_6
    const-string v2, "\u706f\u51497"

    invoke-direct {v3, v2, v1, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v1, v0}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final examYongXin()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_exam:I

    .line 3
    sget v2, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_exam_selected:I

    .line 4
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_08.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v6, "\u706f\u51491"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_09.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const-string v6, "\u706f\u51492"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_10.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const-string v6, "\u706f\u51493"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_11.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    const-string v6, "\u706f\u51494"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_12.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    const-string v6, "\u706f\u51495"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_13.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v1

    :goto_5
    const-string v6, "\u706f\u51496"

    invoke-direct {v3, v6, v4, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v3, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->selectedResName:Ljava/lang/String;

    const-string v5, "exam_2_14.jk"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :cond_6
    const-string v2, "\u706f\u51497"

    invoke-direct {v3, v2, v1, v5}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v1, v0}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final play(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$play$1;-><init>(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    move-result-object p1

    const-string p2, "TtFragmentExamHallVoiceBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvHuima:Landroid/widget/TextView;

    const-string v1, "tvHuima"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvYongxin:Landroid/widget/TextView;

    const-string v1, "tvYongxin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvHuima:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;

    invoke-direct {v1, p1, p0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvYongxin:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$2;

    invoke-direct {v1, p1, p0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    .line 7
    new-instance v1, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;

    invoke-direct {v1, p1, p0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;-><init>(Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    new-instance v1, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;

    invoke-direct {v1}, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;-><init>()V

    .line 9
    const-class v2, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    invoke-virtual {v0, v2, v1}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 10
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->examHuiMa()V

    .line 12
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "\u663e\u793a\u8003\u573a\u706f\u5149\u8bed\u97f3"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
